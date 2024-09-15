module singleportram_tb();
reg [3:0] wr_addr,rd_addr;
reg we,re,clk,rst;
wire [7:0] data;
reg  [7:0]temp_data;
singleportram dut(wr_addr,rd_addr, we,re,clk,rst,data);
assign data=(we&&!re)?temp_data:8'hzz;

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
task initialize ();
begin
we=1'b0;
re=1'b0;
temp_data=8'h00;
end
endtask
task write(input [3:0]i,input [7:0]j);
begin
@(negedge clk)
wr_addr=i;
temp_data=j;
end
endtask
task read(input [3:0]m);
begin
@(negedge clk)
rd_addr=m;
end
endtask
task writeenable();
begin
we=1'b1;
re=1'b0;
end
endtask
task readenable();
begin
we=1'b0;
re=1'b1;
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
task delay;

begin
#10;
end
endtask
initial 
begin
reset;
initialize;
writeenable;
write (3'd5,8'd15);
delay;
readenable;
read(3'd5);
delay;
delay;
$finish;
end





endmodule
