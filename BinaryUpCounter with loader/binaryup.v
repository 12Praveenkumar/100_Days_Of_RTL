module counterup (
input clk,rst,load,
input [3:0] din,
output reg [3:0] cntr
    );
always@(posedge clk)
begin
if(!rst)
begin
cntr<=4'b0;
end
else if(load)
begin
cntr<=din;
end
else
begin
cntr<=cntr+1'b1;
end
end
endmodule
