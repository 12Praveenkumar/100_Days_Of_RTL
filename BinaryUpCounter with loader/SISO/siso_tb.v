module SISO_tb(  );
reg clk,rst,si;
wire so;
SISO dut(clk,rst,si,so);
initial
begin
clk=1'b0;
forever
#5 clk=~clk;
end
task initialize;
begin
{rst,si}=0;
end
endtask
task reset();
begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0;
end
endtask
initial 
begin
initialize;
reset;
si=1'b1;
#10;
si=1'b0;
#10;
si=1'b1;
#10;
end
endmodule
