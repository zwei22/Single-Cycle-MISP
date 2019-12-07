module REGISTER(
    clk,
    rst_n,
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
input   [5:0] read_reg1, read_reg2, write_reg;
input   [31:0] write_data;
output reg [31:0] read_data1, read_data2;

reg     [31:0] regs [0:31];
integer i, rr1, rr2, wr;

always@(*)begin
    rr1 = read_reg1;
    rr2 = read_reg2;
    wr = write_reg;
end

always@(posedge clk)begin
	if (rst_n==1'b0) begin
        for (i=0; i<32; i=i+1) begin
            regs[i] <= 0;
            read_data1[i] <=0;
            read_data2[i] <=0;
        end
    end
    else if (reg_write==1'b1) begin
        regs[wr] <= write_data;
    end
    read_data1 <= regs[rr1];
    read_data2 <= regs[rr2];
end


endmodule