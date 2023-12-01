`timescale 1ns / 1ps

module ALU_tb;

reg signed [31:0] in1, in2;
reg [3:0] controlBits;
reg reset, clock;
wire signed [31:0] out;
wire zr, neg;

ALU DUT (
  .in1(in1),
  .in2(in2),
  .clock(clock),
  .reset(reset),
  .controlBits(controlBits),
  .out(out),
  .zr(zr),
  .neg(neg)
);

always
begin
  #500 clock <= ~clock;
end

initial
begin
  reset <= 1'b1;
  #100 reset <= 1'b0;
end

always @(posedge clock)
begin
  if (reset == 1'b0) begin
    if (controlBits == 4'd0) begin
      // Addition operation
      assert (out == in1 + in2);
    end
  end
end

initial
begin
  // Wait for all of the tests to be performed
  wait (reset == 1'b0);

  // Finish the simulation
  $finish;
end

endmodule