module dualram(
din,dout,rd_addr,wr_addr,clk,we,re,rst);
parameter width =8,depth=16,addr_bus=4;
input [width-1:0] din;//8 bits
input [addr_bus-1:0] rd_addr,wr_addr;//4bits
output reg [width-1:0] dout;
input clk,rst ,we,re;
reg [width-1:0]mem [depth-1:0] ;//declare memory
integer i;
always@(posedge clk)
begin
if(rst)
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
