`define AND 4'b0000
`define OR  4'b0001
`define ADD 4'b0010
`define SUB 4'b0110
`define SLT 4'b0111
`define NOR 4'b1100

`define F_ADD 6'b100000
`define F_SUB 6'b100010
`define F_AND 6'b100100
`define F_OR  6'b100101
`define F_SLT 6'b101010


module ALU_CTRL(
    alu_op,
    funct,
    alu_ctrl
);
    input   [1:0] alu_op;
    output  [3:0] alu_ctrl;
    input   [5:0] funct;

//==== combinational part =================================
    assign alu_ctrl =   (alu_op==2'b00)? `AND:
                        (alu_op==2'b01)? `SUB:
                        (alu_op==2'b10 & funct==`F_ADD)? `ADD:
                        (alu_op==2'b10 & funct==`F_SUB)? `SUB:
                        (alu_op==2'b10 & funct==`F_AND)? `AND:
                        (alu_op==2'b10 & funct==`F_OR)? `OR:
                        (alu_op==2'b10 & funct==`F_SLT)? `SLT:
                        0;

endmodule