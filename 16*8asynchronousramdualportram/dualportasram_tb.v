module dualram_tb( );
reg [15:0] din;
reg [2:0] rd_addr,wr_addr;
reg clk,as_clr,we,re;
wire [15:0] dout;
dualram dut(din,dout,rd_addr,wr_addr,clk,we,re,as_clr);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
task initialize ;
begin
din=16'b0;
{rd_addr,wr_addr}=6'b0;
{re,we,as_clr}=3'b0;
end
endtask
task reset;
begin
@(negedge clk)
as_clr=1'b1;
@(negedge clk)
as_clr=1'b0;
end
endtask
task write(input [15:0]i,input [2:0]j,input k);
begin
@(negedge clk)
din=i;
wr_addr=j;
we=j;
end
endtask
task read(input [2:0]m,input n);
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
write({$random},3'b101,1'b1);
#10;
read(3'b101,1'b1);
end
endmodule
