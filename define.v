`define AND 4'b0000
`define OR  4'b0001
`define ADD 4'b0010
`define SUB 4'b0110
`define SLT 4'b0111
`define SLL 4'b0011
`define SRL 4'b1000
`define ADDI 4'b0100
`define EQ  4'b1111

`define F_ADD 6'b100000
`define F_SUB 6'b100010
`define F_AND 6'b100100
`define F_OR  6'b100101
`define F_SLT 6'b101010
`define F_SLL 6'b000000
`define F_SRL 6'b000010
`define F_JR  6'b001000

`define RTYPE   6'b000000
`define LW      6'b100011
`define SW      6'b101011
`define I_ADDI  6'b001000
`define BEQ     6'b000100
`define BNE     6'b000101
`define J       6'b000010
`define JAL     6'b000011
//`define JR      6'b001000