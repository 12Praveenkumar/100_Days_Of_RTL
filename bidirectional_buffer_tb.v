module bidirbuffer_tb();
wire a,b;
reg ctrl;
reg a_temp,b_temp;
integer i;

bidirbuffer dut(a,b,ctrl);
assign a=ctrl?a_temp:1'bz;
assign b=~ctrl?b_temp:1'bz;

initial
begin
for(i=0;i<8;i=i+1)
begin
{a_temp,b_temp,ctrl}=i;
#10;
end
end
initial
$monitor("a=%b,b=%b,ctrl=%b",a,b,ctrl);
endmodule
