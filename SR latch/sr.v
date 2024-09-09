module sr(input s,r,inout q,qb);
  wire nand1,nand2;
  nand a1(nand1,~s,nand2);
  nand a2(nand2,~r,nand1);
  assign q=nand1;
  assign qb=nand2;
endmodule
