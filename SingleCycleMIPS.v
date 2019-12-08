`include "ADD4.v"
`include "ADD_SL2.v"
`include "ALU_CTRL.v"
`include "ALU.v"
`include "CONTROL.v"
`include "REGISTER.v"
`include "SIGN_EXT.v"
`include "SL2.v"
`include "SL2_26.v"
`include "PC.v"

module SingleCycleMIPS( 
    clk,
    rst_n,
    IR_addr,
    IR,
    ReadDataMem,
    CEN,
    WEN,
    A,
    Data2Mem,
    OEN
);

//==== in/out declaration =================================
    //-------- processor ----------------------------------
    input         clk, rst_n;
    input  [31:0] IR;
    output [31:0] IR_addr;
    //-------- data memory --------------------------------
    input  [31:0] ReadDataMem;  
    output        CEN;  
    output        WEN;  
    output [6:0] A;  
    output [31:0] Data2Mem;  
    output        OEN;  

//==== reg/wire declaration ===============================

    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
    wire [1:0] w_aluop;
    wire [3:0] w_alu_ctrl;
    wire [4:0] w_write_reg;
    wire [27:0] w_sl28;
    wire [31:0] w_rd1, w_rd2, w_alu, w_se_sl, w_sl_alu, w_add4, w_addsl, w_jumpaddr, w_mem_reg, w_alu_result, w_pc_in, w_pc_out;
    integer i;
//==== wire connection to submodule ======================
//Example:
//	ctrl control(
//	.clk(clk),
//	.rst_n(rst_n), ......

//	);

REGISTER register(
    .clk(clk),
    .rst_n(rst_n),
    .read_reg1(IR[25:21]),
    .read_reg2(IR[20:16]),
    .write_reg(w_write_reg),
    .reg_write(w8),
    .write_data(w_mem_reg),
    .read_data1(w_rd1),
    .read_data2(w_rd2)
);


CONTROL control(
    .opcode(IR[31:26]),
    .regdst(w1),
    .jump(w2),
    .branch(w3),
    .mem_read(w4),
    .mem_to_reg(w5),
    .alu_op(w_aluop),
    .mem_write(w6),
    .alu_src(w7),
    .reg_write(w8),
    .mem_enable(w9)
);

ALU alu(
    .in1(w_rd1),
    .in2(w_alu),
    .out(w_alu_result),
    .zero(w10),
    .ctrl(w_alu_ctrl)
);

SIGN_EXT sign_ext(
    .in(IR[15:0]),
    .out(w_se_sl)
);

SL2 sl2(
    .in(w_se_sl),
    .out(w_sl_alu)
);

ADD_SL2 add_sl2(
    .in1(w_add4),
    .in2(w_sl_alu),
    .out(w_addsl)
);

ALU_CTRL alu_ctrl(
    .alu_op(w_aluop),
    .funct(IR[5:0]),
    .alu_ctrl(w_alu_ctrl)
);

ADD4 add4(
    .clk(clk),
    .in(IR_addr),
    .out(w_add4)
);

SL2_26 sl2_26(
    .in(IR[25:0]),
    .out(w_jumpaddr[27:0])
);

PC pc(
    .clk(clk),
    .rst_n(rst_n),
    .in(w_pc_in),
    .out(w_pc_out)
);

assign w_write_reg = (w1) ? IR[15:11] : IR[20:16];
assign w_alu = (w7) ? w_se_sl : w_rd2;
assign w_jumpaddr[31:28] = w_add4[31:28];
//assign IR_addr = (rst_n)? ((w2) ? w_jumpaddr : ((w3 & w10) ? w_addsl : w_add4)) : 0;
assign w_pc_in = (w2) ? w_jumpaddr : ((w3 & w10) ? w_addsl : w_add4);
assign IR_addr = w_pc_out;
assign w_mem_reg = (w5) ? ReadDataMem : w_alu_result;
assign A = (rst_n) ? w_alu_result[6:0] : 0;
assign CEN = w9;
assign OEN = w4;
assign WEN = w6;
assign Data2Mem = w_rd2;


endmodule

// recommend you to use submodule for easier debugging 
//=========================================================
//Example:
//	module ctrl(
//		clk,
//		rst_n, ....


//	);





//	endmodule