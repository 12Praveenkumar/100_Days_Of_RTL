`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 19:41:32
// Design Name: 
// Module Name: jk_using_t_tb
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


module jk_using_t_tb( );
reg clock,rst,j,k;
wire q,q_bar;
jk_using_t DUT(.clock(clock),.rst(rst),.j(j),.k(k),.q(q),.q_bar(q_bar));
always
begin
 #5 clock=~clock;
end
initial
begin
clock =1'b0;
rst=1'b1;
#10 ;
rst=1'b0;
repeat(15)
begin
j=$random;
k=$random;
#2;
end
#10 $finish;
end
endmodule
