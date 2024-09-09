module sr_tb( );
reg s,r;
wire q,qb;
sr DUT(s,r,q,qb);
task apply_sr(input a,b);
begin
s=a;
r=b;
end
endtask
initial 
begin
 apply_sr(0,0);
 #10;
 apply_sr(0,1);
 #10;
 apply_sr(1,0);
 #10;
 apply_sr(1,1);
 #10;
 end
endmodule
