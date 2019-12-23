`include "define.v"

module ALU(
    in1,
    in2,
    shamt,
    out,
    zero,
    //ctrl,
    mem_addr,
    alu_op,
    funct,
    jr
);
input signed  [31:0] in1, in2;
output  reg [31:0] out;
output  [6:0] mem_addr;
output   zero;
//input   [3:0] ctrl;
input   [4:0] shamt;
input   [1:0] alu_op;
wire  [3:0] alu_ctrl;
input   [5:0] funct;
output  jr;

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

// assign out =    (alu_ctrl==`AND)?   in1&in2:
//                 (alu_ctrl==`OR)?    in1|in2:
//                 (alu_ctrl==`ADD)?   {temp[7][3:0],temp[6][3:0],temp[5][3:0],temp[4][3:0],temp[3][3:0],temp[2][3:0],temp[1][3:0],temp[0][3:0]}:
//                 (alu_ctrl==`SLT)?   in1<in2:
//                 (alu_ctrl==`EQ)?    in1!=in2:
//                 (alu_ctrl==`SLL)?   in2 << shamt:
//                 (alu_ctrl==`SRL)?   in2 >>> shamt:
//                 (alu_ctrl==`SUB)?   in1-in2:
//                 0;

assign alu_ctrl =   (alu_op==2'b00)? `ADD:
                    (alu_op==2'b01)? `EQ:
                    //(alu_op==2'b10)? {(~funct[5])&&funct[1], funct[5]&&funct[1], (funct[5]&&(~funct[2]))||((~funct[5])&&(~funct[1])), funct[0]||(~(funct[5]^funct[3])&&~(funct[3]^funct[1]))}:
                    (alu_op==2'b10 & funct==`F_ADD)? `ADD:
                    (alu_op==2'b10 & funct==`F_AND)? `AND:
                    (alu_op==2'b10 & funct==`F_OR)? `OR:
                    (alu_op==2'b10 & funct==`F_SLT)? `SLT:
                    (alu_op==2'b10 & funct==`F_SLL)? `SLL:
                    (alu_op==2'b10 & funct==`F_SRL)? `SRL:
                    (alu_op==2'b10 & funct==`F_SUB)? `SUB:
                    0;

always @(*) begin
    case(alu_ctrl)
        `AND: out = in1&in2;
        `OR: out = in1|in2;
        `ADD: out = {temp[7][3:0],temp[6][3:0],temp[5][3:0],temp[4][3:0],temp[3][3:0],temp[2][3:0],temp[1][3:0],temp[0][3:0]};
        `SUB: out = in1-in2;
        `SLT: out = in1<in2;
        `EQ: out = in1!=in2;
        `SLL: out = in2 << shamt;
        `SRL: out = in2 >>> shamt;
        default: out = 0;
    endcase
    // temp[0] <= in1[3:0]+in2[3:0];
    // temp[1] <= in1[7:4]+in2[7:4]+{3'd0,temp[0][4]};
    // temp[2] <= in1[11:8]+in2[11:8]+{3'd0,temp[1][4]};
    // temp[3] <= in1[15:12]+in2[15:12]+{3'd0,temp[2][4]};
    // temp[4] <= in1[19:16]+in2[19:16]+{3'd0,temp[3][4]};
    // temp[5] <= in1[23:20]+in2[23:20]+{3'd0,temp[4][4]};
    // temp[6] <= in1[27:24]+in2[27:24]+{3'd0,temp[5][4]};
    // temp[7] <= in1[31:28]+in2[31:28]+{3'd0,temp[6][4]};
    // temp_ans <= in1[8] ^ in2[8] ^ temp[1][4];
end

// always @(*) begin
//     case (alu_op)
//         2'b01: out = in1!=in2;
//         2'b00: out = {temp[7][3:0],temp[6][3:0],temp[5][3:0],temp[4][3:0],temp[3][3:0],temp[2][3:0],temp[1][3:0],temp[0][3:0]};
//         default: begin
//             case (funct)
//                 `F_ADD: out = {temp[7][3:0],temp[6][3:0],temp[5][3:0],temp[4][3:0],temp[3][3:0],temp[2][3:0],temp[1][3:0],temp[0][3:0]};
//                 `F_SUB: out = in1-in2;
//                 `F_AND: out = in1&in2;
//                 `F_OR: out = in1|in2;
//                 `F_SLT: out = in1<in2;
//                 `F_SLL: out = in2<<shamt;
//                 `F_SRL: out = in2>>>shamt;
//                 default: out = 0;
//             endcase
//         end
//     endcase
// end

assign zero = (~out[0]);
assign jr = (alu_op==2'b10 & funct==`F_JR) ? 1 : 0;

endmodule