`include "define.v"

module FPU(
    in1,
    in2,
    fp,
    dp,
    out,
    funct,
    fpcond
);
input           fp, dp;
output          fpcond;
input   [63:0]  in1, in2;
output  [63:0]  out;
input   [5:0]   funct;

wire    [31:0] sp_add, sp_sub, sp_mul, sp_div;
wire    [63:0] dp_add, dp_sub;
wire    [7:0]  status [0:5];

parameter rnd = 3'b000;

DW_fp_add add(
    .a(in1[63:32]),
    .b(in2[63:32]),
    .rnd(rnd),
    .z(sp_add),
    .status(status[0])
);

DW_fp_sub sub(
    .a(in1[63:32]),
    .b(in2[63:32]),
    .rnd(rnd),
    .z(sp_sub),
    .status(status[1])
);

DW_fp_mult mul(
    .a(in1[63:32]),
    .b(in2[63:32]),
    .rnd(rnd),
    .z(sp_mul),
    .status(status[2])
);

DW_fp_div div(
    .a(in1[63:32]),
    .b(in2[63:32]),
    .rnd(rnd),
    .z(sp_div),
    .status(status[3])
);

DW_fp_add #(52, 11, 0) add_dp (
    .a(in1),
    .b(in2),
    .rnd(rnd),
    .z(dp_add),
    .status(status[4])
);

DW_fp_sub #(52, 11, 0) sub_dp(
    .a(in1),
    .b(in2),
    .rnd(rnd),
    .z(dp_sub),
    .status(status[5])
);

assign out =    (funct==`F_EQ_FP)?  ((in1[63:32]==in2[63:32]) ? 64'b1:0):
                (funct==`F_MUL_FP)? {sp_mul,32'b0}:
                (funct==`F_DIV_FP)? {sp_div,32'b0}:
                (funct==`F_ADD_FP && dp==1'b0)? {sp_add,32'b0}:
                (funct==`F_SUB_FP && dp==1'b0)? {sp_sub,32'b0}:
                (funct==`F_ADD_FP && dp==1'b1)? dp_add:
                (funct==`F_SUB_FP && dp==1'b1)? dp_sub:
                0;

assign fpcond = (fp && funct==`F_EQ_FP)? 1:0;

endmodule