module REGISTER_FP(
    clk,
    rst_n,
    read_reg1,
    read_reg2,
    write_reg,
    ctrl_reg_w,
    write_data,
    read_data1,
    read_data2,
    ctrl_dp,
    ctrl_fpcond,
    fpcond,
    ctrl_dp_sl,
    dp_sl_stage
);
input   clk, rst_n;
input   ctrl_reg_w;
input   ctrl_dp, ctrl_fpcond;
input   ctrl_dp_sl;

output  reg fpcond;
output  reg dp_sl_stage;

input   [4:0] read_reg1, read_reg2, write_reg;
input   [63:0] write_data;
output  reg [63:0] read_data1, read_data2;

reg     [31:0] regs [0:31];

integer i;

// assign read_data1 = regs[read_reg1];
// assign read_data2 = regs[read_reg2];
always @(*) begin
    case (read_reg1)
        5'd0  : read_data1 = {regs[0],regs[1]};
        5'd1  : read_data1 = {regs[1],regs[2]};
        5'd2  : read_data1 = {regs[2],regs[3]};
        5'd3  : read_data1 = {regs[3],regs[4]};
        5'd4  : read_data1 = {regs[4],regs[5]};
        5'd5  : read_data1 = {regs[5],regs[6]};
        5'd6  : read_data1 = {regs[6],regs[7]};
        5'd7  : read_data1 = {regs[7],regs[8]};
        5'd8  : read_data1 = {regs[8],regs[9]};
        5'd9  : read_data1 = {regs[9],regs[10]};
        5'd10 : read_data1 = {regs[10],regs[11]};
        5'd11 : read_data1 = {regs[11],regs[12]};
        5'd12 : read_data1 = {regs[12],regs[13]};
        5'd13 : read_data1 = {regs[13],regs[14]};
        5'd14 : read_data1 = {regs[14],regs[15]};
        5'd15 : read_data1 = {regs[15],regs[16]};
        5'd16 : read_data1 = {regs[16],regs[17]};
        5'd17 : read_data1 = {regs[17],regs[18]};
        5'd18 : read_data1 = {regs[18],regs[19]};
        5'd19 : read_data1 = {regs[19],regs[20]};
        5'd20 : read_data1 = {regs[20],regs[21]};
        5'd21 : read_data1 = {regs[21],regs[22]};
        5'd22 : read_data1 = {regs[22],regs[23]};
        5'd23 : read_data1 = {regs[23],regs[24]};
        5'd24 : read_data1 = {regs[24],regs[25]};
        5'd25 : read_data1 = {regs[25],regs[26]};
        5'd26 : read_data1 = {regs[26],regs[27]};
        5'd27 : read_data1 = {regs[27],regs[28]};
        5'd28 : read_data1 = {regs[28],regs[29]};
        5'd29 : read_data1 = {regs[29],regs[30]};
        5'd30 : read_data1 = {regs[30],regs[31]};
        5'd31 : read_data1 = {regs[31],regs[0]};
    endcase
    case (read_reg2)
        5'd0  : read_data2 = {regs[0],regs[1]};
        5'd1  : read_data2 = {regs[1],regs[2]};
        5'd2  : read_data2 = {regs[2],regs[3]};
        5'd3  : read_data2 = {regs[3],regs[4]};
        5'd4  : read_data2 = {regs[4],regs[5]};
        5'd5  : read_data2 = {regs[5],regs[6]};
        5'd6  : read_data2 = {regs[6],regs[7]};
        5'd7  : read_data2 = {regs[7],regs[8]};
        5'd8  : read_data2 = {regs[8],regs[9]};
        5'd9  : read_data2 = {regs[9],regs[10]};
        5'd10 : read_data2 = {regs[10],regs[11]};
        5'd11 : read_data2 = {regs[11],regs[12]};
        5'd12 : read_data2 = {regs[12],regs[13]};
        5'd13 : read_data2 = {regs[13],regs[14]};
        5'd14 : read_data2 = {regs[14],regs[15]};
        5'd15 : read_data2 = {regs[15],regs[16]};
        5'd16 : read_data2 = {regs[16],regs[17]};
        5'd17 : read_data2 = {regs[17],regs[18]};
        5'd18 : read_data2 = {regs[18],regs[19]};
        5'd19 : read_data2 = {regs[19],regs[20]};
        5'd20 : read_data2 = {regs[20],regs[21]};
        5'd21 : read_data2 = {regs[21],regs[22]};
        5'd22 : read_data2 = {regs[22],regs[23]};
        5'd23 : read_data2 = {regs[23],regs[24]};
        5'd24 : read_data2 = {regs[24],regs[25]};
        5'd25 : read_data2 = {regs[25],regs[26]};
        5'd26 : read_data2 = {regs[26],regs[27]};
        5'd27 : read_data2 = {regs[27],regs[28]};
        5'd28 : read_data2 = {regs[28],regs[29]};
        5'd29 : read_data2 = {regs[29],regs[30]};
        5'd30 : read_data2 = {regs[30],regs[31]};
        5'd31 : read_data2 = {regs[31],regs[0]};
    endcase
end


always@(posedge clk) begin
	if (~rst_n) begin
        for (i=0; i<32; i=i+1) begin
            regs[i] <= 0;
        end
        fpcond <= 0;
        dp_sl_stage <= 0;
    end
    else if (ctrl_reg_w==1'b1) begin
        regs[write_reg] <= write_data[63:32];
        if (ctrl_dp==1'b1) begin
            regs[write_reg+1] <= write_data[31:0];
        end
    end

    if (ctrl_fpcond==1'b1) begin
        fpcond <= write_data[0];
    end

    if (ctrl_dp_sl==1'b1) begin
        dp_sl_stage <= ~dp_sl_stage;
    end
end

endmodule