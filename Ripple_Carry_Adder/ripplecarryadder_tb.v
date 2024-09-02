module ripplecarry_tb();
reg a0,a1,a2,a3,b0,b1,b2,b3,cin;
wire sum0,sum1,sum2,sum3,carry;
integer i,j;
ripplecarry dut(a0,a1,a2,a3,b0,b1,b2,b3,cin,sum0,sum1,sum2,sum3,carry);
initial 
begin
{a0,a1,a2,a3,b0,b1,b2,b3,cin}=0;
end
initial 
begin
for(i=0;i<16;i=i+1)
begin
{a0,a1,a2,a3}=i;
for(j=0;j<16;j=j+1)
begin
{b0,b1,b2,b3}=j;
#10;
end
end
end
initial #5000 $finish;

endmodule
