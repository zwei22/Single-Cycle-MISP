`include "define.v"

module ALU_CTRL(
    alu_op,
    funct,
    alu_ctrl,
    jr
);
input   [1:0] alu_op;
output  [3:0] alu_ctrl;
input   [5:0] funct;
output  jr;

//==== combinational part =================================
assign alu_ctrl =   (alu_op==2'b00)? `ADD:
                    (alu_op==2'b01)? `EQ:
                    (alu_op==2'b10 & funct==`F_ADD)? `ADD:
                    (alu_op==2'b10 & funct==`F_SUB)? `SUB:
                    (alu_op==2'b10 & funct==`F_AND)? `AND:
                    (alu_op==2'b10 & funct==`F_OR)? `OR:
                    (alu_op==2'b10 & funct==`F_SLT)? `SLT:
                    (alu_op==2'b10 & funct==`F_SLL)? `SLL:
                    (alu_op==2'b10 & funct==`F_SRL)? `SRL:
                    0;

// always @(*) begin
//     case (alu_op)
//         2'b00: alu_ctrl = `ADD;
//         2'b01: alu_ctrl = `EQ;
//         default: begin
//             case (funct)
//                 `F_ADD: alu_ctrl = `ADD;
//                 `F_SUB: alu_ctrl = `SUB;
//                 `F_AND: alu_ctrl = `AND;
//                 `F_OR: alu_ctrl = `OR;
//                 `F_SLT: alu_ctrl = `SLT;
//                 `F_SLL: alu_ctrl = `SLL;
//                 `F_SRL: alu_ctrl = `SRL;
//                 default: alu_ctrl = 0;
//             endcase
//         end
//     endcase
// end

assign jr = (alu_op==2'b10 & funct==`F_JR) ? 1 : 0;

endmodule