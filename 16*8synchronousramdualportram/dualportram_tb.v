module dualram_tb( );
reg [7:0] din;
reg [3:0] rd_addr,wr_addr;
reg clk,rst,we,re;
wire [7:0] dout;
dualram dut(din,dout,rd_addr,wr_addr,clk,we,re,rst);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
task initialize ;
begin
din=8'b0;
{rd_addr,wr_addr}=8'b0;
{re,we,rst}=3'b0;
end
endtask
task reset;
begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0;
end
endtask
task write(input [7:0]i,input [3:0]j,input k);
begin
@(negedge clk)
din=i;
wr_addr=j;
we=j;
end
endtask
task read(input [3:0]m,input n);
begin
@(negedge clk)
rd_addr=m;
re=n;
end
endtask
initial
begin
initialize;
reset;
#10;
write({$random},4'b1011,1'b1);
#10;
read(4'b1011,1'b1);
end
