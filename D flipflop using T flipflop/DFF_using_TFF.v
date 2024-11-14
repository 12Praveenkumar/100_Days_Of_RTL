`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 18:46:46
// Design Name: 
// Module Name: d_using_t
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


module T_FF(clock,rst,t,q,q_bar );
input clock,rst;
input t;
output reg q,q_bar;
always@(posedge clock)
begin
    if(rst)
    begin
        q<=0;
        q_bar<=1;
    end
    else if(t)
    begin
        q<=~q ;
        q_bar<=~q_bar;
    end
    else
    begin
        q<=q ;
        q_bar<=q_bar;
    end
end
endmodule
module d_using_t( d,clock,rst,q,q_bar );
    input d,clock,rst;
    output q,q_bar;
    wire w1;
    assign w1=(d&q_bar)|(~d&q);
    T_FF DUT(.t(w1),.clock(clock),.rst(rst),.q(q),.q_bar(q_bar));
    
endmodule