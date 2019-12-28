`include "ALU_CTRL.v"
`include "ALU.v"
`include "CONTROL.v"
`include "REGISTER.v"
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

    wire w_regdst, w_jump, w_beq, w_bne, w_mem_r, w_mem2reg, w_jr;
    wire w_mem_w, w_alusrc, w_reg_w, w_mem_en, w_zero, w_jal;
    wire [1:0] w_aluop;
    //wire [3:0] w_alu_ctrl;
    wire [4:0] w_write_reg;
    wire [6:0] w_A;
    wire [29:0] w_pc_in, w_pc_out, w_pc_add4, w_pc_branch, w_pc_jump;
    wire [31:0] w_rd1, w_rd2, w_alu, w_se, w_alu_result, w_jal_wr;
    // wire [4:0] w_pc_temp[0:6];
    // wire [1:0] w_pc_temp1;
    
    //integer i;
//==== wire connection to submodule ======================

REGISTER register(
    .clk(clk),
    .rst_n(rst_n),
    .reg_read(w_jump),
    .read_reg1(IR[25:21]),
    .read_reg2(IR[20:16]),
    .write_reg(w_write_reg),
    .ctrl_reg_w(w_reg_w),
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
    .mem_addr(A),
    .alu_op(w_aluop),
    .funct(IR[5:0]),
    .jr(w_jr)
);

// ALU_CTRL alu_ctrl(
//     .alu_op(w_aluop),
//     .funct(IR[5:0]),
//     .alu_ctrl(w_alu_ctrl),
//     .jr(w_jr)
// );

PC pc(
    .clk(clk),
    .rst_n(rst_n),
    .in(w_pc_in),
    .out(w_pc_out)
);

// assign w_pc_temp[0] = w_pc_add4[3:0]+w_se[3:0];
// assign w_pc_temp[1] = w_pc_add4[7:4]+w_se[7:4]+{3'd0,w_pc_temp[0][4]};
// assign w_pc_temp[2] = w_pc_add4[11:8]+w_se[11:8]+{3'd0,w_pc_temp[1][4]};
// assign w_pc_temp[3] = w_pc_add4[15:12]+w_se[15:12]+{3'd0,w_pc_temp[2][4]};
// assign w_pc_temp[4] = w_pc_add4[19:16]+w_se[19:16]+{3'd0,w_pc_temp[3][4]};
// assign w_pc_temp[5] = w_pc_add4[23:20]+w_se[23:20]+{3'd0,w_pc_temp[4][4]};
// assign w_pc_temp[6] = w_pc_add4[27:24]+w_se[27:24]+{3'd0,w_pc_temp[5][4]};
// assign w_pc_temp1 = w_pc_add4[29:28]+w_se[29:28]+{1'b0,w_pc_temp[6][4]};
// assign w_pc_branch = {w_pc_temp1,w_pc_temp[6][3:0],w_pc_temp[5][3:0],w_pc_temp[4][3:0],w_pc_temp[3][3:0],w_pc_temp[2][3:0],w_pc_temp[1][3:0],w_pc_temp[0][3:0]};
assign w_pc_add4 = w_pc_out + 1;

assign w_se = { {16{IR[15]}},IR[15:0] };
assign w_pc_branch = w_pc_add4 + w_se[29:0];
assign w_pc_jump = {w_pc_add4[29:26], IR[25:0]};

assign w_write_reg = (w_jal) ? 5'd31 : ((w_regdst) ? IR[15:11] : IR[20:16]);
assign w_alu = (w_alusrc) ? w_se : w_rd2;

assign w_pc_in =    (w_jr) ? w_rd1 :
                    (w_jump) ? w_pc_jump :
                    (w_beq && w_zero) || (w_bne && ~w_zero) ? w_pc_branch :
                    w_pc_add4;

//assign w_mem_reg = (w_mem2reg) ? ReadDataMem : w_alu_result;
assign w_jal_wr = (w_jal) ? w_pc_add4 : ((w_mem2reg) ? ReadDataMem : w_alu_result);
//assign A = (w_mem_en) ? 0 : w_A;
assign IR_addr = {w_pc_out, 2'b00};
assign CEN = w_mem_en;
assign OEN = w_mem_r;
assign WEN = w_mem_w;
assign Data2Mem = w_rd2;

endmodule