`timescale 1ns / 1ps

module Datapath_tb;

reg [7:0] je;
reg sysclk;

wire [3:0] sysled;
wire [2:0] TMDSp, TMDSn;
wire TMDSp_clock, TMDSn_clock;

Datapath dut (
    .je(je),
    .sysclk(sysclk),
    .sysled(sysled),
    .TMDSp(TMDSp),
    .TMDSn(TMDSn),
    .TMDSp_clock(TMDSp_clock),
    .TMDSn_clock(TMDSn_clock)
);

always begin
    sysclk = 1;
    #0.5;
    sysclk = 0;
    #0.5;
end

initial begin
  

    // Set je to 0
    je = 0;

    // Wait for 10 cycles to allow the datapath to initialize
    #1;

    // Set je to 1 to enable the datapath
    je = 1;

    // Wait for 100 cycles to allow the datapath to run
    #10;

    // Set je to 0 to disable the datapath
    je = 0;

    $stop;
end

endmodule
