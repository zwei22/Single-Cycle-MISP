`define AND 4'b0000
`define OR  4'b0001
`define ADD 4'b0010
`define SUB 4'b0110
`define SLT 4'b0111
`define NOR 4'b1100
`define SLL 4'b0011
`define ADDI 4'b0100

module ALU(
    in1,
    in2,
    shamt,
    out,
    zero,
    ctrl
);
input   [31:0] in1, in2;
output  [31:0] out;
input   zero;
input   [3:0] ctrl;
input   [4:0] shamt;


assign out =    (ctrl==`AND)?   in1&in2:
                (ctrl==`OR)?    in1|in2:
                (ctrl==`ADD)?   in1+in2:
                (ctrl==`SUB)?   in1-in2:
                (ctrl==`SLT)?   (in1<in2)? 1:0:
                (ctrl==`NOR)?   ~(in1 | in2):
                (ctrl==`SLL)?   in2 << shamt: 
                0;

assign zero = (out==0);

endmodule