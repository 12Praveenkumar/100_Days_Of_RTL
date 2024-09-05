module dec(a,b,y);
  input a,b;
  output [3:0]y;
  assign y[0]=~a&~b;
  assign y[1]=~a&b;
  assign y[2]=a&~b;
  assign y[3]=a&b;
 endmodule
