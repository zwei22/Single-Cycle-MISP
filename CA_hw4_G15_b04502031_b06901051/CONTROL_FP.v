`include "define.v"

module CONTROL_FP(
    opcode,
    fmt,
    regdst,
    jump,
    beq,
    bne,
    mem_read,
    mem_to_reg,
    alu_op,
    mem_write,
    alu_src,
    reg_write,
    mem_enable,
    jal,
    reg_write_fp,
    fp,
    dp,
    bclt,
    dp_sl
);

input wire  [5:0] opcode;
input wire  [4:0] fmt;
output wire regdst;
output wire jump;
output wire beq;
output wire bne;
output wire mem_read;
output wire mem_to_reg;
output wire [1:0] alu_op;
output wire mem_write;
output wire alu_src;
output wire reg_write;
output wire mem_enable;
output wire jal;
output wire reg_write_fp;
output wire fp;
output wire dp;
output wire bclt;
output wire dp_sl;

assign regdst = (opcode == `RTYPE || opcode == `FRTYPE) ? 1 : 0;
assign jump = (opcode == `J || opcode == `JAL) ? 1 : 0;
assign beq = (opcode == `BEQ) ? 1 : 0;
assign bne = (opcode == `BNE) ? 1 : 0;
assign mem_read = ~mem_to_reg;
assign mem_to_reg = (opcode == `LW || opcode == `LWC1 || opcode == `LDC1) ? 1 : 0;
assign alu_op = (opcode == `RTYPE) ? 2'b10 : (
                (opcode == `LW || opcode == `SW || opcode == `I_ADDI || opcode == `LWC1 || opcode == `LDC1 || opcode == `SWC1 || opcode == `SDC1) ? 2'b00 : (
                (opcode == `BEQ || opcode == `BNE) ? 2'b01 : 2'b11
                ));
assign mem_write = (opcode == `SW || opcode == `SWC1 || opcode == `SDC1) ? 0 : 1;
assign alu_src = (opcode == `LW || opcode == `SW || opcode == `I_ADDI || opcode == `LWC1 || opcode == `LDC1 || opcode == `SWC1 || opcode == `SDC1) ? 1 : 0;
assign reg_write = (opcode == `RTYPE || opcode == `LW || opcode == `I_ADDI || opcode == `JAL) ? 1 : 0;
assign mem_enable = (opcode == `LW || opcode == `SW || opcode == `LWC1 || opcode == `LDC1 || opcode == `SWC1 || opcode == `SDC1) ? 0 : 1;
assign jal = (opcode == `JAL) ? 1 : 0;

assign reg_write_fp = (opcode == `FRTYPE && fmt != `FMT_BT || opcode == `LWC1 || opcode == `LDC1) ? 1 : 0;
assign fp = (opcode == `FRTYPE || opcode == `LWC1 || opcode == `LDC1 || opcode == `SWC1 || opcode == `SDC1) ? 1 : 0;
assign dp = (fmt == `FMT_DP) ? 1 : 0;
assign bclt = (opcode == `FRTYPE && fmt == `FMT_BT) ? 1 : 0;

assign dp_sl = (opcode == `LDC1 || opcode == `SDC1);


endmodule