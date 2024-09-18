module JKFlipflop_tb();
  reg j,k,clk,rst;
  wire q;
  JkFlipflop dut(j,k,clk,rst,q);
  parameter cycle =5;
  always
  begin
  #(cycle/2);
  clk=1'b0;
  #(cycle/2);
  clk=~clk;
  end
  task rst_dut();
  begin
  @(negedge clk);
  rst=1'b0;
  @(negedge clk);
  rst=1'b1;
  end
  endtask
  
  task jk_dut(input a,b);
  begin
  j=a;
  k=b;
  end
  endtask
  initial 
  begin
  rst_dut();
  jk_dut(0,0);
  #10;
  jk_dut(0,1);
  #10;
  jk_dut(1,0);
  #10;
  jk_dut(1,1);
  rst_dut();
  jk_dut(0,1);
  #10;
  jk_dut(1,0);
  #50$finish;
  end
  
  
endmodule
