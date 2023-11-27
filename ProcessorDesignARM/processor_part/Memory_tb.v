`timescale 1ns / 1ps

module Memory_tb;

reg clock;
reg isWrite;
reg byteWrite;
reg byteRead;
reg [17:0] address;
reg [31:0] writeData;
wire [31:0] data;
reg [31:0] displayAddr;
wire [31:0] displayData;
reg IRWrite;
wire [31:0] IR;
reg sample;
reg [7:0] key_reg;

Memory dut (
    .clock(clock),
    .isWrite(isWrite),
    .byteWrite(byteWrite),
    .byteRead(byteRead),
    .address(address),
    .writeData(writeData),
    .data(data),
    .displayAddr(displayAddr),
    .displayData(displayData),
    .IRWrite(IRWrite),
    .IR(IR),
    .sample(sample),
    .key_reg(key_reg)
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

    // Test writing to RAM
    isWrite = 1'b1;
    byteWrite = 1'b0;
    address = 18'h42368;
    writeData = 32'h12345678;
    #10;

    // Test reading from RAM
    isWrite = 1'b0;
    byteWrite = 1'b0;
    address = 18'h42368;
    #10;
    if (data != 32'h12345678) begin
        $stop;
    end

    // Test writing to a specific byte of RAM
    isWrite = 1'b1;
    byteWrite = 1'b1;
    address = 18'h42368;
    writeData = 32'h87654321;
    #10;

    // Test reading the specific byte of RAM
    isWrite = 1'b0;
    byteWrite = 1'b1;
    address = 18'h42368;
    #10;
    if (data != 8'h87) begin
        $stop;
    end

    // Test writing to ROM
    IRWrite = 1'b1;
    address = 18'h9600;
    writeData = 32'hABCDEF01;
    #10;

    // Test reading from ROM
    IRWrite = 1'b0;
    address = 18'h9600;
    #10;
    if (IR != 32'hABCDEF01) begin
        $stop;
    end

    // Test reading keyboard
    isWrite = 1'b0;
    byteRead = 1'b1;
    address = 18'h76000;
    key_reg = 8'h12;
    sample = 1'b1;
    #10;
    if (data != 8'h12) begin
        $stop;
    end

    sample = 1'b0;
    #10;
    if (data != 8'h00) begin
        $stop;
    end

    $stop;
end

endmodule