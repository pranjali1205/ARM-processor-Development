`timescale 1ns / 1ps

module RegisterFile_tb;

reg clock;
reg isWrite;
reg [3:0] A1;
reg [3:0] A2;
reg [3:0] A3;
reg [31:0] writeData;

wire [31:0] RD1;
wire [31:0] RD2;

RegisterFile dut (
  .clock(clock),
  .isWrite(isWrite),
  .A1(A1),
  .A2(A2),
  .A3(A3),
  .writeData(writeData),
  .RD1(RD1),
  .RD2(RD2)
);

always begin
    clock = 1;
    #5;
    clock = 0;
    #5;
end

initial begin
  clock = 0;
  #1;

  // Test reading register 0
  A1 = 0;
  A2 = 1;
  isWrite = 0;
  #10;
  if (RD1 != 0 || RD2 != 0) begin
    $stop;
  end

  // Test writing to register 4
  isWrite = 1;
  A3 = 4;
  writeData = 32'h12345678;
  #10;

  // Test reading register 4
  isWrite = 0;
  A1 = 4;
  A2 = 5;
  #10;
  if (RD1 != 32'h12345678 || RD2 != 0) begin
    $stop;
  end

  // Test writing to register 0
  isWrite = 1;
  A3 = 0;
  writeData = 32'h87654321;
  #10;

  // Test reading register 0
  isWrite = 0;
  A1 = 0;
  A2 = 1;
  #10;
  if (RD1 != 32'h87654321 || RD2 != 0) begin
    $stop;
  end

  $stop;
end


endmodule