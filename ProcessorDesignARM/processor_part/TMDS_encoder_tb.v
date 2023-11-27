`timescale 1ns / 1ps

module TMDS_encoder_tb;

reg clk;
reg [7:0] VD;
reg [1:0] CD;
reg VDE;
wire [9:0] TMDS;

TMDS_encoder dut (
    .clk(clk),
    .VD(VD),
    .CD(CD),
    .VDE(VDE),
    .TMDS(TMDS)
);

initial begin
    #10 $dumpvars;
end

always begin
    #5 clk = ~clk;
end

initial begin
    clk = 1'b0;
    VD = 0;
    CD = 0;
    VDE = 0;

    #1000000;
    $finish;
end

always @(posedge clk) begin
    case (VDE)
        1'b0: begin
            VD = $random(8);
            CD = $random(2);
        end
        1'b1: begin
            VD = {3'b0, $random(5)};
        end
        default: ;
    endcase

    VDE = $random(2);
end

always @(posedge dut.clk) begin
    case (dut.CD)
        2'b00: VD = {3'b0, $random(5)};
        2'b01: begin
            VD = $random(8);
        end
        2'b10: begin
            VD = {7'b0, $random(1)};
        end
        2'b11: begin
            VD = {6'b0, $random(2)};
        end
        default: ;
    endcase
end

endmodule