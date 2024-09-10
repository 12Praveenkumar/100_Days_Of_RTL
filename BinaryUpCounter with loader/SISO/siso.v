module SISO(clk,rst,si,so);
input clk,rst,si;
output reg so;
reg [3:0] temp;
always@(posedge clk)
begin
if(rst)
temp<=4'b0000;
else
temp<={si,temp[3:1]};
so<=temp[0];
end

endmodule
