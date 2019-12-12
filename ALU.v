`define AND 4'b0000
`define OR  4'b0001
`define ADD 4'b0010
`define SUB 4'b0110
`define SLT 4'b0111
`define NOR 4'b1100
`define SLL 4'b0011
`define SRL 4'b1000
`define ADDI 4'b0100
`define EQ  4'b1111

module ALU(
    in1,
    in2,
    shamt,
    out,
    zero,
    ctrl,
    mem_addr
);
input signed  [31:0] in1, in2;
output  [31:0] out;
output  [6:0] mem_addr;
output   zero;
input   [3:0] ctrl;
input   [4:0] shamt;
wire    [4:0] temp[0:1];
wire    temp_ans;

assign temp[0] = in1[3:0]+in2[3:0];
assign temp[1] = in1[7:4]+in2[7:4]+{3'd0,temp[0][4]};
assign temp_ans = in1[8] ^ in2[8] ^ temp[1][4];

assign mem_addr = {temp_ans, temp[1][3:0], temp[0][3:2]};

assign out =    (ctrl==`AND)?   in1&in2:
                (ctrl==`OR)?    in1|in2:
                (ctrl==`ADD)?   in1+in2:
                (ctrl==`SUB)?   in1-in2:
                //(ctrl==`SLT)?   ((in1[31] & in2[31]) || (~in1[31] & ~in2[31])) ? ((in1<in2)? 1:0): (in1[31] ? 1 : 0):
                (ctrl==`SLT)?   in1<in2:
                (ctrl==`EQ)?    in1!=in2:
                (ctrl==`NOR)?   ~(in1 | in2):
                (ctrl==`SLL)?   in2 << shamt:
                (ctrl==`SRL)?   in2 >>> shamt: 
                0;

assign zero = (out==0) ? 1 : 0;

endmodule