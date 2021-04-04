`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2021 15:00:17
// Design Name: 
// Module Name: frq_cntr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module frq_cntr(
    input in_signal,
    input clk,
    input rst,
    output [31:0] freq
    );

reg [31:0] freq_count;
reg [31:0] clk_count;
reg old_sig;
reg [31:0] freq_out;

assign freq = freq_out;

always @(posedge clk) begin
	clk_count <= clk_count + 1;
	if (in_signal != old_sig) begin
		freq_count = freq_count +1;
	end
	
	if ((clk_count == 100000) | (rst == 1'b1)) begin
		freq_out = freq_count >> 1;
		clk_count <= 0;
		freq_count = 0;
	end
	
	old_sig = in_signal;
end
	

endmodule