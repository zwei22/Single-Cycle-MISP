module ADD4(
    clk,
    in,
    out
);

input   clk;
input   [31:0] in;
output reg  [31:0] out;

always@(posedge clk)begin
    out <= in + 3'd4;
end

endmodule