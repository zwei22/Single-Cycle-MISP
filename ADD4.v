module ADD4(
    clk,
    in,
    out
);

input   clk;
input   [31:0] in;
output  [31:0] out;

assign out = in+3'd4;

endmodule