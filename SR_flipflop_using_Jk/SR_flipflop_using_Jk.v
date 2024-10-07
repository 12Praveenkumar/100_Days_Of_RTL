`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2024 09:56:05
// Design Name: 
// Module Name: SR_flipflop_using_Jk
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
module JK(
input clock,rst,j,k,
output reg  q,q_bar
);
always@(posedge clock)
begin
if(rst)
begin
    q<=0;
    q_bar<=1;
end
else
begin
    case({j,k})
        2'b00:begin //no change
                q<=q;
                q_bar<=q_bar;
              end
         2'b01:begin  //reset
                q<=0;
                q_bar<=1;
              end
          2'b10:begin  //set
                q<=1;
                q_bar<=0;
              end
           2'b11:begin  //toggle
                q<=~q;
                q_bar<=~q_bar;
              end
       endcase
    end
 end
              

endmodule


module SR_flipflop_using_Jk(
input clock,rst,s,r,
output q,q_bar
 );
 JK DUT(.clock(clock),.rst(rst),.j(s),.k(r),.q(q),.q_bar(q_bar));
endmodule
