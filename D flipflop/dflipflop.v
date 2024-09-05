module dflipflop(din,clk,rst,q,qb);
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
