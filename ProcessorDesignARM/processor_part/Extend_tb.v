`timescale 1ns / 1ps

module Extend_tb;

reg [1:0] ImmSrc;
reg signed [23:0] Immediate;
wire signed [31:0] ExtImm;

Extend dut (
    .ImmSrc(ImmSrc),
    .Immediate(Immediate),
    .ExtImm(ExtImm)
);

initial begin
    #10 $dumpvars;
end

always begin
    #5 ImmSrc = $random(2);
    #5 Immediate = $signed(24'hFFFF);
end

initial begin
    #1000000;
    $finish;
end

endmodule
