`include "define.v"

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
// assign mem_addr = out[8:2];

assign out =    (ctrl==`AND)?   in1&in2:
                (ctrl==`OR)?    in1|in2:
                (ctrl==`ADD)?   in1+in2:
                (ctrl==`SUB)?   in1-in2:
                (ctrl==`SLT)?   in1<in2:
                (ctrl==`EQ)?    in1!=in2:
                (ctrl==`SLL)?   in2 << shamt:
                (ctrl==`SRL)?   in2 >>> shamt: 
                0;

// always @(*) begin
//     case(ctrl)
//         `AND: out = in1&in2;
//         `OR: out = in1|in2;
//         `ADD: out = in1+in2;
//         `SUB: out = in1-in2;
//         `SLT: out = in1<in2;
//         `EQ: out = in1!=in2;
//         `SLL: out = in2 << shamt;
//         `SRL: out = in2 >> shamt;
//         default: out = 0;
//     endcase
// end

assign zero = (out==0) ? 1 : 0;

endmodule