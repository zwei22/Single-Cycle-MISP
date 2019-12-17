module REGISTER(
    clk,
    rst_n,
    reg_read,
    read_reg1,
    read_reg2,
    write_reg,
    reg_write,
    write_data,
    read_data1,
    read_data2
);
input   clk, rst_n;
input   reg_write;
input   reg_read;
input   [4:0] read_reg1, read_reg2, write_reg;
input   [31:0] write_data;
output  [31:0] read_data1, read_data2;

reg     [31:0] regs [0:31];
integer i;


assign read_data1 = regs[read_reg1];
assign read_data2 = regs[read_reg2];

always@(posedge clk) begin
	if (~rst_n) begin
        for (i=0; i<32; i=i+1) begin
            regs[i] <= 0;
        end
    end
    else if (reg_write==1'b1) begin
        regs[write_reg] <= write_data;
    end
end


endmodule