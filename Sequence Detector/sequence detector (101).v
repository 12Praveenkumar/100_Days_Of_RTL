module seq_dectector(clk,rst,in,out);//to detect sequence 101
input clk,rst,in;
output out;
//state encoding
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;
  reg [1:0] state ,nextstate;
  always@(posedge clk or posedge rst)
  if(rst)
  state <=s0;
  else
  state<=nextstate;
  //nextstate logic
  always@(state or in)
  begin
  nextstate=s0;
  case(state)
  s0:if(in)
  nextstate=s1;
  else
  nextstate=s0;
  s1:if(in)
  nextstate=s1;
  else
  nextstate=s2;
  s2:if(in)
  nextstate=s3;
  else
  nextstate=s0;
  s3:if(in)
  nextstate=s1;
  else
  nextstate=s0;
  endcase
  end
  //output
  
  assign out=(state==s3);
 endmodule
