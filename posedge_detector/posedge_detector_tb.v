`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 23:44:24
// Design Name: 
// Module Name: posedge_detector_tb
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


module posedge_detector_tb( );
reg data,clk;
wire posedge_detector;
posedge_detector dut(.data(data),.clk(clk),.posedge_detector(posedge_detector));
always
begin
#5 clk=~clk;
end
initial
begin
clk=1'b0;
data<=1'b0;
#10;
data<=1'b1;
#10;
data<=1'b0;
#10;
data<=1'b1;
#10;
data<=1'b0;
#10;
data<=1'b1;
#10;
data<=1'b0;
#10;
data<=1'b1;
#10 $finish;
end
endmodule
