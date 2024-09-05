module dflipflop_tb( );
reg din,clk,rst;
wire q,qb;
parameter cycle=5;
dflipflop dut(din,clk,rst,q,qb);
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
task din_dut(input a);
begin
@(negedge clk)
din=a;
end
endtask
initial
begin
rst_dut();
din_dut( 1);
din_dut( 0);
din_dut( 1);
din_dut( 0);
din_dut( 1);
rst_dut();
din_dut( 0);
din_dut( 1);
#5
$finish;
end


endmodule
