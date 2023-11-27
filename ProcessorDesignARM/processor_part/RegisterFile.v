
`timescale 1ns / 1ps
module RegisterFile


(
	output [31:0] RD1,

	output [31:0] RD2,

	input clock,

	input isWrite,

	input [3:0] A1,

	input [3:0] A2,

	input [3:0] A3,

	input [31:0] writeData,
	output [3:0] led
	
);

reg [31:0] registerFile [15:0];
reg [4:0] i;

initial begin
	for( i = 0 ; i < 16 ; i = i+1 ) 
		registerFile[i] <= 32'd0;
    registerFile[4] <= 32'd2;
end

always @ (posedge clock) 
begin
	if( isWrite ) 
	begin
		registerFile[A3] <= writeData;
	end
		
end

assign led[0] = registerFile[4][0];
assign led[1] = registerFile[4][1];
assign led[2] = registerFile[4][2];
assign led[3] = registerFile[4][3];

assign RD1 = registerFile[A1];
assign RD2 = registerFile[A2];

endmodule
