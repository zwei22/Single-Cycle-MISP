module REGISTER(
    clk,
    rst_n,
    reg_read,
    read_reg1,
    read_reg2,
    write_reg,
    ctrl_reg_w,
    write_data,
    read_data1,
    read_data2
);
input   clk, rst_n;
input   ctrl_reg_w;
input   reg_read;
input   [4:0] read_reg1, read_reg2, write_reg;
input   [31:0] write_data;
output  reg [31:0] read_data1, read_data2;

reg     [31:0] regs [0:31];
integer i;


// assign read_data1 = regs[read_reg1];
// assign read_data2 = regs[read_reg2];
always @(*) begin
    case (read_reg1)
        5'd0  : read_data1 = 31'b0;
        5'd1  : read_data1 = regs[1];
        5'd2  : read_data1 = regs[2];
        5'd3  : read_data1 = regs[3];
        5'd4  : read_data1 = regs[4];
        5'd5  : read_data1 = regs[5];
        5'd6  : read_data1 = regs[6];
        5'd7  : read_data1 = regs[7];
        5'd8  : read_data1 = regs[8];
        5'd9  : read_data1 = regs[9];
        5'd10 : read_data1 = regs[10];
        5'd11 : read_data1 = regs[11];
        5'd12 : read_data1 = regs[12];
        5'd13 : read_data1 = regs[13];
        5'd14 : read_data1 = regs[14];
        5'd15 : read_data1 = regs[15];
        5'd16 : read_data1 = regs[16];
        5'd17 : read_data1 = regs[17];
        5'd18 : read_data1 = regs[18];
        5'd19 : read_data1 = regs[19];
        5'd20 : read_data1 = regs[20];
        5'd21 : read_data1 = regs[21];
        5'd22 : read_data1 = regs[22];
        5'd23 : read_data1 = regs[23];
        5'd24 : read_data1 = regs[24];
        5'd25 : read_data1 = regs[25];
        5'd26 : read_data1 = regs[26];
        5'd27 : read_data1 = regs[27];
        5'd28 : read_data1 = regs[28];
        5'd29 : read_data1 = regs[29];
        5'd30 : read_data1 = regs[30];
        5'd31 : read_data1 = regs[31];
    endcase
    case (read_reg2)
        5'd0  : read_data2 = 31'b0;
        5'd1  : read_data2 = regs[1];
        5'd2  : read_data2 = regs[2];
        5'd3  : read_data2 = regs[3];
        5'd4  : read_data2 = regs[4];
        5'd5  : read_data2 = regs[5];
        5'd6  : read_data2 = regs[6];
        5'd7  : read_data2 = regs[7];
        5'd8  : read_data2 = regs[8];
        5'd9  : read_data2 = regs[9];
        5'd10 : read_data2 = regs[10];
        5'd11 : read_data2 = regs[11];
        5'd12 : read_data2 = regs[12];
        5'd13 : read_data2 = regs[13];
        5'd14 : read_data2 = regs[14];
        5'd15 : read_data2 = regs[15];
        5'd16 : read_data2 = regs[16];
        5'd17 : read_data2 = regs[17];
        5'd18 : read_data2 = regs[18];
        5'd19 : read_data2 = regs[19];
        5'd20 : read_data2 = regs[20];
        5'd21 : read_data2 = regs[21];
        5'd22 : read_data2 = regs[22];
        5'd23 : read_data2 = regs[23];
        5'd24 : read_data2 = regs[24];
        5'd25 : read_data2 = regs[25];
        5'd26 : read_data2 = regs[26];
        5'd27 : read_data2 = regs[27];
        5'd28 : read_data2 = regs[28];
        5'd29 : read_data2 = regs[29];
        5'd30 : read_data2 = regs[30];
        5'd31 : read_data2 = regs[31];
    endcase
end

always@(posedge clk) begin
	if (~rst_n) begin
        for (i=0; i<32; i=i+1) begin
            regs[i] <= 0;
        end
    end
    else if (ctrl_reg_w==1'b1) begin
        regs[write_reg] <= write_data;
    end
end


endmodule