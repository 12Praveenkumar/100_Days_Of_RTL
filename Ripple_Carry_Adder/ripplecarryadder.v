module fulladder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
assign sum=a^b^cin;
assign carry=a&b|b&cin|cin&a;
endmodule

module ripplecarry(input a0,a1,a2,a3,b0,b1,b2,b3,cin,
output sum0,sum1,sum2,sum3,carry);
wire c0,c1,c2;
fulladder f1(.a(a0),.b(b0),.cin(cin),.sum(sum0),.carry(c0));
fulladder f2(.a(a1),.b(b1),.cin(c0),.sum(sum1),.carry(c1));
fulladder f3(.a(a2),.b(b2),.cin(c1),.sum(sum2),.carry(c2));
fulladder f4(.a(a3),.b(b3),.cin(c2),.sum(sum3),.carry(carry));

endmodule
