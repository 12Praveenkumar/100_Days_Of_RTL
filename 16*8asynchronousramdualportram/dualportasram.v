module dualram(
din,dout,rd_addr,wr_addr,clk,we,re,as_clr);
parameter width =16,depth=8,addr_bus=3;
input [width-1:0] din;//16 bits
input [addr_bus-1:0] rd_addr,wr_addr;//3bits
output reg [width-1:0] dout;
input clk,as_clr ,we,re;
reg [width-1:0]mem [depth-1:0] ;//declare memory
integer i;
always@(posedge clk or posedge as_clr)
begin
if(as_clr)
begin
  dout <=0;
  for(i=0;i<16;i=i+1)
  mem[i]<=0;
end
else
begin
if(we==1)
mem[wr_addr]<=din;
if(re==1)
dout<=mem[rd_addr];
end
end
endmodule
