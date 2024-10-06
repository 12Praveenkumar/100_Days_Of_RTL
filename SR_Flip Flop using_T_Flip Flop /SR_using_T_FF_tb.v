`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2024 14:17:31
// Design Name: 
// Module Name: SR_using_T_FF_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Create
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_using_T_FF_tb( );
reg clock;
reg rst;
reg s,r;
wire q,q_bar;
SR_using_T_FF DUT(.clock(clock),.rst(rst),.s(s),.r(r),.q(q),.q_bar(q_bar));
always
begin
  #5 clock=~clock;
end
initial
begin
clock=1'b0;
rst=1'b1;
#10;
rst=1'b0;
repeat(15)
begin
s<=$random;
r<=$random;
#2;
end
#10 $finish;
end
endmodule
