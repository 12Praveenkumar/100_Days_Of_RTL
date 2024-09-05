module dec_tb();
  reg a,b;
  wire [3:0]y;
  integer i;
dec dut(.a(a),.b(b),.y(y));
initial 
  begin
    {a,b}=1;
  end
initial
  begin 
    for(i=0;i<4;i=i+1)
       begin
         {a,b}=i;
         #50;
       end
  end
endmodule
