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
output  reg [31:0] out;
output  [6:0] mem_addr;
output   zero;
input   [3:0] ctrl;
input   [4:0] shamt;
wire    [4:0] temp[0:7];
wire    temp_ans;

assign temp[0] = in1[3:0]+in2[3:0];
assign temp[1] = in1[7:4]+in2[7:4]+{3'd0,temp[0][4]};
assign temp[2] = in1[11:8]+in2[11:8]+{3'd0,temp[1][4]};
assign temp[3] = in1[15:12]+in2[15:12]+{3'd0,temp[2][4]};
assign temp[4] = in1[19:16]+in2[19:16]+{3'd0,temp[3][4]};
assign temp[5] = in1[23:20]+in2[23:20]+{3'd0,temp[4][4]};
assign temp[6] = in1[27:24]+in2[27:24]+{3'd0,temp[5][4]};
assign temp[7] = in1[31:28]+in2[31:28]+{3'd0,temp[6][4]};
assign temp_ans = in1[8] ^ in2[8] ^ temp[1][4];

assign mem_addr = {temp_ans, temp[1][3:0], temp[0][3:2]};
// assign mem_addr = out[8:2];

// assign out =    (ctrl==`AND)?   in1&in2:
//                 (ctrl==`OR)?    in1|in2:
//                 (ctrl==`ADD)?   {temp[7][3:0],temp[6][3:0],temp[5][3:0],temp[4][3:0],temp[3][3:0],temp[2][3:0],temp[1][3:0],temp[0][3:0]}:
//                 (ctrl==`SLT)?   in1<in2:
//                 (ctrl==`EQ)?    in1!=in2:
//                 (ctrl==`SLL)?   in2 << shamt:
//                 (ctrl==`SRL)?   in2 >>> shamt:
//                 (ctrl==`SUB)?   in1-in2:
//                 0;

always @(*) begin
    case(ctrl)
        `AND: out = in1&in2;
        `OR: out = in1|in2;
        `ADD: out = {temp[7][3:0],temp[6][3:0],temp[5][3:0],temp[4][3:0],temp[3][3:0],temp[2][3:0],temp[1][3:0],temp[0][3:0]};
        `SUB: out = in1-in2;
        `SLT: out = in1<in2;
        `EQ: out = in1!=in2;
        `SLL: out = in2 << shamt;
        `SRL: out = in2 >> shamt;
        default: out = 0;
    endcase
end

assign zero = (~out[0]);

endmodule