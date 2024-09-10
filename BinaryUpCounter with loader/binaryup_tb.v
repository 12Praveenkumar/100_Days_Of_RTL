module counterup_tb( );
reg [3:0]din;
reg clk,rst,load;
wire [3:0] cntr;
parameter cycle=5;
counterup  dut(clk,rst,load,din,cntr);

always
begin
#(cycle/2);
 clk=1'b0;
 #(cycle/2);
 clk=~clk;
 end
 task din_dut(input load_in,input [3:0] din_in);
 begin
 load=load_in;
 din=din_in;
 end
 endtask
 task rst_dut();
 begin
 @(negedge clk);
 rst=0;
 @(negedge clk);
 rst=1;
 end
 endtask
 initial
 begin
 rst_dut();
 #100;
 din_dut(1'b1,4'd13);
 #50;
 din_dut(1'b0,4'd13);
 #200 $finish;
 

 end

endmodule
