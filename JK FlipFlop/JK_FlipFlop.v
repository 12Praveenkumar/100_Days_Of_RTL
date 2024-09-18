module JkFlipflop(
input j,k,clk,rst,output reg q
    );
  parameter HOLD=2'b00,SET=2'b01,RESET =2'b10,TOGGLE=2'B11;
  always@(posedge clk)
  begin
  if(rst)
  q=1'b0;
  else
  begin
  case({j,k})
     HOLD : q<=q;
     SET  : q<=1;
     RESET: q<=0;
    TOGGLE :q<=~q;
  endcase
  end
  end
    
endmodule
