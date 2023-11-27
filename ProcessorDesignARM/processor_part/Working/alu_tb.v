`timescale 1ns / 1ps
module alu_tb;
reg clock;
reg [3:0] controlBits;
reg signed [31:0] in1, in2;

wire signed [31:0] out;
wire zr, neg;

ALU dut (.clock(clock), .controlBits(controlBits), .in1(in1), .in2(in2), .out(out), .zr(zr), .neg(neg));

always begin
    clock = 1;
    #5;
    clock = 0;
    #5;
end

initial begin
// Addition
    controlBits = 4'd0;in1 = 10;in2 = 20;#10

// Subtraction
    controlBits = 4'd1;in1 = 30; in2 = 15; #10

// Multiplication
    controlBits = 4'd4;in1 = 2; in2 = 15; #10

// Division
    controlBits = 4'd5;in1 = 15; in2 = 2; #10
// Modulo
    controlBits = 4'd6;in1 = 10; in2 = 4; #10
 // AND
    controlBits = 4'd8;in1 = 10101010;in2 = 01010101;#10
 // Or
    controlBits = 4'd7;in1 = 10101010;in2 = 01010101;#10
//less than
    controlBits = 4'd9;in1 = 10; in2 = 4; #10
 $stop;
end

endmodule