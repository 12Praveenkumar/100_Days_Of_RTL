module singleportram(input [3:0] wr_addr,rd_addr,input we,re,clk,rst,inout  [7:0] data );
reg [7:0]mem[15:0];//declare memory
reg [7:0] temp_data;//temporary register
integer i;
always@(posedge clk)
begin
if(rst)//clear memory
begin
temp_data<=0;
for (i=0;i<16;i=i+1)
mem[i]<=0;
end
else if(we&&!re)//write
mem[wr_addr]<=temp_data;
end
always@(posedge clk)
begin
if(rst)//clear memory
begin
temp_data<=0;
for (i=0;i<16;i=i+1)
mem[i]<=0;
end
else if(!we&&re)//read
temp_data<=mem[wr_addr];
end

assign data=(re&&!we)?temp_data:8'bz;


endmodule
