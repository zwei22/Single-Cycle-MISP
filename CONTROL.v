module CONTROL(
    opcode,
    ins,
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
    jr
);

input wire  [5:0] opcode;
input wire  [5:0] ins;
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
output wire jr;

`define RTYPE   6'b000000
`define LW      6'b100011
`define SW      6'b101011
`define ADDI    6'b001000
`define BEQ     6'b000100
`define BNE     6'b000101
`define J       6'b000010
`define JAL     6'b000011
`define JR      6'b001000

assign regdst = (opcode == `RTYPE) ? 1 : 0;
assign jump = (opcode == `J || opcode == `JAL) ? 1 : 0;
assign beq = (opcode == `BEQ) ? 1 : 0;
assign bne = (opcode == `BNE) ? 1 : 0;
assign mem_read = (opcode == `LW) ? 0 : 1;
assign mem_to_reg = (opcode == `LW) ? 1 : 0;
assign alu_op = (opcode == `RTYPE) ? 2'b10 : (
                (opcode == `LW || opcode == `SW || opcode == `ADDI) ? 2'b00 : (
                (opcode == `BEQ || opcode == `BNE) ? 2'b01 : 2'b11
                ));
assign mem_write = (opcode == `SW) ? 0 : 1;
assign alu_src = (opcode == `LW || opcode == `SW || opcode == `ADDI) ? 1 : 0;
assign reg_write = (opcode == `RTYPE || opcode == `LW || opcode == `ADDI || opcode == `JAL) ? 1 : 0;
assign mem_enable = (opcode == `LW || opcode == `SW) ? 0 : 1;
assign jal = (opcode == `JAL) ? 1 : 0;
assign jr = (opcode == `RTYPE && ins == `JR) ? 1 : 0;

endmodule