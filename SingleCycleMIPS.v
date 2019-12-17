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
    //output reg [6:0] A;  
    output [31:0] Data2Mem;  
    output        OEN;  

//==== reg/wire declaration ===============================

    wire w_regdst, w_jump, w_beq, w_bne, w_mem_r, w_mem2reg, w_jr;
    wire w_mem_w, w_alusrc, w_reg_w, w_mem_en, w_zero, w_jal;
    wire [1:0] w_aluop;
    wire [3:0] w_alu_ctrl;
    wire [4:0] w_write_reg;
    wire [6:0] w_A;
    wire [27:0] w_sl28;
    wire [31:0] w_rd1, w_rd2, w_alu, w_se_sl, w_sl_alu, w_add4, w_addsl, w_jumpaddr, w_mem_reg, w_alu_result, w_pc_in, w_pc_out, w_jal_wr;
    //reg [31:0] w_temp;
    integer i;
    // reg  [6:0] A_r;
    // wire [6:0] A_w;
//==== wire connection to submodule ======================

REGISTER register(
    .clk(clk),
    .rst_n(rst_n),
    .reg_read(w_jump),
    .read_reg1(IR[25:21]),
    .read_reg2(IR[20:16]),
    .write_reg(w_write_reg),
    .reg_write(w_reg_w),
    .write_data(w_jal_wr),
    .read_data1(w_rd1),
    .read_data2(w_rd2)
);


CONTROL control(
    .opcode(IR[31:26]),
    .regdst(w_regdst),
    .jump(w_jump),
    .beq(w_beq),
    .bne(w_bne),
    .mem_read(w_mem_r),
    .mem_to_reg(w_mem2reg),
    .alu_op(w_aluop),
    .mem_write(w_mem_w),
    .alu_src(w_alusrc),
    .reg_write(w_reg_w),
    .mem_enable(w_mem_en),
    .jal(w_jal)
);

ALU alu(
    .in1(w_rd1),
    .in2(w_alu),
    .shamt(IR[10:6]),
    .out(w_alu_result),
    .zero(w_zero),
    .ctrl(w_alu_ctrl),
    .mem_addr(A)
);

// SIGN_EXT sign_ext(
//     .in(IR[15:0]),
//     .out(w_se_sl)
// );
assign w_se_sl = { {16{IR[15]}},IR[15:0] };

// SL2 sl2(
//     .in(w_se_sl),
//     .out(w_sl_alu)
// );
assign w_sl_alu = {w_se_sl[29:0], 2'b00};

// ADD_SL2 add_sl2(
//     .in1(w_add4),
//     .in2(w_sl_alu),
//     .out(w_addsl)
// );
assign w_addsl = w_add4 + w_sl_alu;

ALU_CTRL alu_ctrl(
    .alu_op(w_aluop),
    .funct(IR[5:0]),
    .alu_ctrl(w_alu_ctrl),
    .jr(w_jr)
);

// ADD4 add4(
//     .in(w_pc_out),
//     .out(w_add4)
// );
assign w_add4 = w_pc_out+3'd4;

// SL2_26 sl2_26(
//     .in(IR[25:0]),
//     .out(w_sl28)
// );
assign w_sl28 = {IR[25:0], 2'b00};

PC pc(
    .clk(clk),
    .rst_n(rst_n),
    .in(w_pc_in),
    .out(w_pc_out)
);

assign w_write_reg = (w_jal) ? 5'd31 : ((w_regdst) ? IR[15:11] : IR[20:16]);
assign w_alu = (w_alusrc) ? w_se_sl : w_rd2;
assign w_jumpaddr = {w_add4[31:28], w_sl28};
assign w_pc_in = (w_jr) ? w_rd1 : ((w_jump) ? w_jumpaddr : (((w_beq && w_zero) || (w_bne && (~w_zero))) ? w_addsl : w_add4));
assign IR_addr = w_pc_out;
assign w_mem_reg = (w_mem2reg) ? ReadDataMem : w_alu_result;
assign w_jal_wr = (w_jal) ? w_add4 : w_mem_reg;
//assign A = (w_mem_en) ? 0 : w_A;
assign CEN = w_mem_en;
assign OEN = w_mem_r;
assign WEN = w_mem_w;
assign Data2Mem = w_rd2;

endmodule