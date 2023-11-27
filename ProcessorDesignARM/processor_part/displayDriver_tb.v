`timescale 1ns / 1ps

module displayDriver_tb;

reg clk;
reg [31:0] displayData;
reg rst;

wire [2:0] TMDSp, TMDSn;
wire TMDSp_clock, TMDSn_clock;
wire [31:0] pointer;

DisplayDriver dut (
    .clk(clk),
    .displayData(displayData),
    .rst(rst),
    .TMDSp(TMDSp),
    .TMDSn(TMDSn),
    .TMDSp_clock(TMDSp_clock),
    .TMDSn_clock(TMDSn_clock),
    .pointer(pointer)
);

initial begin
    $dumpvars;
end

always begin
    #5 clk = ~clk;
end

initial begin
    clk = 1'b0;
    displayData = 0;
    rst = 1'b1;

    #1000000;
    $finish;
end

always @(posedge clk) begin
    if (dut.rst) begin
        displayData = 0;
        rst <= 0;
    end else begin
        displayData = $random(32);
    end
end

endmodule