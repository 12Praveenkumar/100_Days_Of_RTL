`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 23:40:39
// Design Name: 
// Module Name: posedge_detector
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


module posedge_detector(data,clk,posedge_detector );
input data,clk;
output posedge_detector;
reg q;
always@(posedge clk)
begin
q<=data;
end
assign posedge_detector=data&~q;
endmodule
