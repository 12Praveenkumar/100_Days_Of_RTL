module Tflipflop(t,clk,rst,q,qb );
input t,clk,rst;
output q;
output qb;
xor XOR(w,q,t);
dflipflop DF(clk,rst,w,q,qb);
endmodule
module dflipflop(clk,rst,din,q,qb);
input  din,clk,rst;
output reg q;
output qb;
always@(posedge clk )
begin
if(rst)
  q<=1'b0;
  else
  q<=din;
end
assign qb=~q;
endmodule