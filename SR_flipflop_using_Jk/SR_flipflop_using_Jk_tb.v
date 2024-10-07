`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 10:37:00
// Design Name: 
// Module Name: SR_flipflop_using_Jk_tb
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


module SR_flipflop_using_Jk_tb( );
reg s,r,clock,rst;
wire q,q_bar;
SR_flipflop_using_Jk DUT(.s(s),.r(r),.clock(clock),.rst(rst),.q(q),.q_bar(q_bar));
always
begin
    #5 clock=~clock;
end
initial
begin
    clock=1;
    rst=1'b1;
    #5;
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
