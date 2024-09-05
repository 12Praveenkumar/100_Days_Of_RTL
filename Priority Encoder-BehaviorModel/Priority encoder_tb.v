module priencoder_tb( );
 reg [7:0]a;
 wire [2:0]y;
 integer i;
 priencoder dut(a,y);
 task initialize ;
 begin
 a=8'b00000000;
 end
 endtask
 task set_input(input [7:0]x);
 begin
 a=x;
 end
 endtask
 initial
 begin
 initialize;
 for(i=0;i<8;i=i+1)
 begin
set_input(i);
 #10;
 end
 $finish;
 end
endmodule
