module mux4to1_tb();
reg [3:0] i;
reg [1:0] s;
wire out;
integer m,n;
mux4to1 dut(i,s,out);
task initialize;
  begin
   {i,s}=4'b0000;
  end
endtask
task set_input(input [3:0] a);
  begin
    i=a;
  end
endtask
task select_input(input[1:0] b);
  begin
    s=b;
  end
endtask
task delay();
  begin
    #10;
  end
endtask
initial
  begin
    initialize;
for(m=0;m<16;m=m+1)
begin
  set_input(m);
   for(n=0;n<4;n=n+1)
     begin
       select_input(n);
       delay;
     end
      delay;
 end
 end
  
 endmodule
