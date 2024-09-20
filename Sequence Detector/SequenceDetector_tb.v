module seq_detector_tb();
reg clk,rst,in;
wire out;
seq_dectector dut(clk,rst,in,out);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
in=0;
rst=1;
@(negedge clk)
rst=1'b0;
@(negedge clk)
in=1'b1;
@(negedge clk)
in=1'b0;
@(negedge clk)
in=1'b1;
@(negedge clk)
in=1'b0;
@(negedge clk)
in=1'b1;
@(negedge clk)
in=1'b0;
@(negedge clk)
in=1'b1;
end
