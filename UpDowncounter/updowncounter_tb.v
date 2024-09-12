module updowncounter_tb();
reg clk,rst,load,updown;
reg [3:0]din;
wire [3:0] cntr;
updowncounter dut(clk,rst,load,updown,din,cntr);
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
task datain_dut(input loadin,typein,input [3:0] din_in);
begin
load =loadin;
updown=typein;
din=din_in;
end
endtask
initial
begin
rst_dut();
#100;
datain_dut(1'b1,1'b0,4'd13);
#20;
datain_dut(1'b0,1'b1,4'd13);
#200 $finish;

end


endmodule
