`timescale 1ns / 1ps

module controlUnit_tb;

reg clock;
reg [3:0] cond;
reg [1:0] op;
reg [5:0] funct;
reg [3:0] rd;
reg zr;
reg neg;

wire IRWrite;
wire [1:0] PCWrite;
wire memIsWrite;
wire regIsWrite;
wire AluSrcAControl;
wire AdrSrc;
wire RegSrc;
wire [1:0] RegSrc2;
wire [1:0] ImmSrc;
wire [1:0] ResultSrc;
wire [3:0] AluControl;
wire [1:0] AluSrcBControl;
wire byteRead;
wire byteWrite;

ControlUnit dut (
    .clock(clock),
    .cond(cond),
    .op(op),
    .funct(funct),
    .rd(rd),
    .zr(zr),
    .neg(neg),
    .IRWrite(IRWrite),
    .PCWrite(PCWrite),
    .memIsWrite(memIsWrite),
    .regIsWrite(regIsWrite),
    .AluSrcAControl(AluSrcAControl),
    .AdrSrc(AdrSrc),
    .RegSrc(RegSrc),
    .RegSrc2(RegSrc2),
    .ImmSrc(ImmSrc),
    .ResultSrc(ResultSrc),
    .AluControl(AluControl),
    .AluSrcBControl(AluSrcBControl),
    .byteRead(byteRead),
    .byteWrite(byteWrite)
);

always begin
    clock = 1;
    #5;
    clock = 0;
    #5;
end

initial begin
 
    // Test Fetch state
    cond = 4'b1110;
    op = 2'b10;
    funct = 6'b000000;
    rd = 4'd0;
    zr = 1'b0;
    neg = 1'b0;

    #10;

    // Test Decode state
    cond = 4'b1110;
    op = 2'b10;
    funct = 6'b000000;
    rd = 4'd0;
    zr = 1'b0;
    neg = 1'b0;

    #10;

    // Test MemAdr state
    cond = 4'b1110;
    op = 2'b00;
    funct = 6'b100001;
    rd = 4'd0;
    zr = 1'b0;
    neg = 1'b0;

    #10;

    // Test MemRead state
    cond = 4'b1110;
    op = 2'b00;
    funct = 6'b100000;
    rd = 4'd0;
    zr = 1'b0;
    neg = 1'b0;

    #10;

    // Test MemWB state
    cond = 4'b1110;
    op = 2'b00;
    funct = 6'b100000;
    rd = 4'd0;
    zr = 1'b0;
    neg = 1'b0;

    #10;

    // Test ExecuteR state
    cond = 4'b1110;
    op = 2'b01;
    funct = 6'b100100;
    rd = 4'd0;
    zr = 1'b0;
    neg = 1'b0;

    #10;

    // Test ExecuteI state
    cond = 4'b1110;
    op = 2'b00;
    funct = 6'b011000;
    rd = 4'd0;
    zr = 1'b0;
    neg = 1'b0;

    #10;

    // Test AluWB state
  cond = 4'b1110;
  op = 2'b00;
  funct = 6'b011000;
  rd = 4'd0;
  zr = 1'b0;
  neg = 1'b0;

  #10;

  // Test Branch state
  cond = 4'b1110;
  op = 2'b10;
  funct = 6'b000100;
  rd = 4'd0;
  zr = 1'b1;
  neg = 1'b0;

  #10;

  // Test InterruptState1 state
  cond = 4'b1110;
  op = 2'b10;
  funct = 6'b000010;
  rd = 4'd0;
  zr = 1'b1;
  neg = 1'b1;

  #10;

  // Test InterruptState2 state
  cond = 4'b1110;
  op = 2'b10;
  funct = 6'b000010;
  rd = 4'd0;
  zr = 1'b1;
  neg = 1'b1;

  #10;
 $stop;
end

endmodule