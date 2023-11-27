module ps2_rx_tb;

reg clk;
reg reset;
reg ps2d;
reg ps2c;
reg rx_en;

wire rx_done_tick;
wire [7:0] rx_data;

ps2_rx rx (
    .clk(clk),
    .reset(reset),
    .ps2d(ps2d),
    .ps2c(ps2c),
    .rx_en(rx_en),
    .rx_done_tick(rx_done_tick),
    .rx_data(rx_data)
);

initial begin
    clk <= 0;
    forever #5 clk <= ~clk;
end

initial begin
    reset <= 1;
    #10 reset <= 0;

    // Test case 1: Receive a valid byte
    rx_en <= 1;
    ps2d <= 1;
    ps2c <= 0;
    #10 ps2c <= 1;
    #10 ps2d <= 0;
    #10 ps2c <= 0;

    // Transmit 8 bits of data
    integer i;
    for (i = 0; i < 8; i++) begin
        #10 ps2d <= 1;
        #10 ps2c <= 0;
        #10 ps2c <= 1;
        #10 ps2d <= 0;
    end

    // Transmit parity bit
    #10 ps2d <= 0;
    #10 ps2c <= 0;
    #10 ps2c <= 1;
    #10 ps2d <= 1;

    // Transmit stop bit
    #10 ps2d <= 1;
    #10 ps2c <= 0;
    #10 ps2c <= 1;
    #10 ps2d <= 0;

    rx_en <= 0;

    #100 $stop;
end

endmodule