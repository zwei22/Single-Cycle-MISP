module ADD4(
    in,
    out
);

input   [31:0] in;
output  [31:0] out;

assign out = in+3'd4;

endmodule