`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 19:15:25
// Design Name: 
// Module Name: d_using_t_tb
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


module d_using_t_tb( );
reg d,clock,rst;
wire q,q_bar;
d_using_t DUT(.d(d),.clock(clock),.rst(rst),.q(q),.q_bar(q_bar));
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
        d<=$random;
        #2;
    end
    #10 $finish;
end


endmodule
