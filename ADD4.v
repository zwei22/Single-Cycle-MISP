module ADD2(
    clk,
    in,
    out
);

input   clk;
input   [31:0] in;
output  [31:0] out;

always@(posedge clk)begin
    out <= in+4;
end

endmodule