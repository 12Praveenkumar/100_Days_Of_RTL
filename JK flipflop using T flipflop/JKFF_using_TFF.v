`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 19:36:37
// Design Name: 
// Module Name: jk_using_t
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
module jk_using_t( j,k,clock,rst,q,q_bar );
    input j,k,clock,rst;
    output q,q_bar;
    wire w1;
    assign w1=(j&q_bar)|(k&q);
    T_FF DUT(.t(w1),.clock(clock),.rst(rst),.q(q),.q_bar(q_bar));
    
endmodule
