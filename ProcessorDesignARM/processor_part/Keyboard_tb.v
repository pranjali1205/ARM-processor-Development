`timescale 1ns / 1ps

module keyboard_tb;

reg clk, reset;
reg ps2d, ps2c;
wire [7:0] ascii_code;
wire [7:0] scan_code;
wire scan_code_ready;
wire letter_case_out;
reg [3:0] code;

keyboard dut (
    .clk(clk),
    .reset(reset),
    .ps2d(ps2d),
    .ps2c(ps2c),
    .ascii_code(ascii_code),
    .scan_code(scan_code),
    .scan_code_ready(scan_code_ready),
    .letter_case_out(letter_case_out),
    .code(code)
);

initial begin
    // Initialize signals
    clk = 0;
    reset = 1;
    ps2d = 1;
    ps2c = 1;
    ascii_code = 0;

    // Reset the keyboard
    #100 reset = 0;
    #100 reset = 1;

    // Send a key press sequence
    #100 ps2d = 0; // Press 'a'
    #50 ps2c = 0;
    #50 ps2c = 1;
    #50 ps2d = 1;
    #100 ps2d = 0; // Press 'b'
    #50 ps2c = 0;
    #50 ps2c = 1;
    #50 ps2d = 1;

    // Wait for the keyboard to finish processing the key presses
    #100;

 // Check that the scan codes are correct
if (scan_code != 8'h1e) begin
    $error("Incorrect scan code for 'a'");
end else if (scan_code != 8'h30) begin
    $error("Incorrect scan code for 'b'");
end

// Check that the ascii_code codes are correct
if (code != 4'h4) begin
    $error("Incorrect ascii code for 'a'");
end else if (code != 4'h2) begin
    $error("Incorrect ascii code for 'b'");
end


    $stop;
end

always begin
    clk = 1;
    #5;
    clk = 0;
    #5;
end

endmodule
