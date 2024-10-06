

module T_FF(clock,rst,t,q,q_bar );
input clock,rst;
input t;
output reg q,q_bar;
always@(posedge clock)
begin
    if(rst)
    begin
        q<=0;
        q_bar<=1;
    end
    else if(t)
    begin
        q<=~q ;
        q_bar<=~q_bar;
    end
    else
    begin
        q<=q ;
        q_bar<=q_bar;
    end
end
endmodule
module SR_using_T_FF(s,r,clock,rst,q,q_bar);
input clock,rst,s,r;
output  q,q_bar;
wire w1;
assign w1 =(s&q_bar)|(r&q);
T_FF t1(.t(w1),.clock(clock),.rst(rst),.q(q),.q_bar(q_bar));
endmodule
