module ADD8(
    clk,
    in,
    out
);

input   clk;
input   [31:0] in;
output  [31:0] out;

assign out = in+4'd8;

endmodule