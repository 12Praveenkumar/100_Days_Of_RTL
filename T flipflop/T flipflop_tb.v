
module Tflipflop_tb();
reg t,clk,rst;
wire q,qb;
Tflipflop dut(t,clk,rst,q,qb);
parameter cycle=5;
always
begin
#(cycle/2);
 clk=1'b0;
 #(cycle/2);
 clk=~clk;
 end
 task rst_dut();
 begin
 @(negedge clk)
 rst=1'b0;
 @(negedge clk)
 rst=1'b1;
 end
endtask
task tin(input a);
begin
@(negedge clk)
 t=a;
 end
 endtask
 initial
 begin
 rst_dut();
  tin(1);
 tin(0);
 tin(1);
  rst_dut();
  tin(0);
  tin(1);
 tin(1);
 tin(0);
 rst_dut();
 #50$finish;
 end
 

endmodule
