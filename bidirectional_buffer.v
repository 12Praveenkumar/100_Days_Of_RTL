module bidirbuffer(a,b,ctrl);
input ctrl;
inout a,b;
bufif1 b1(b,a,ctrl);
bufif1 b2(a,b,~ctrl);
endmodule
