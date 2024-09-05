module mux4to1(
    input [3:0] i,
    input [1:0] s,
    output reg out
    );
    always@(s)
    begin
    case(s)
        2'b00 : out=i[0];
        2'b01 : out=i[1];
        2'b10 : out=i[2];
        2'b11 : out=i[3];
        default : out=1'bz;
        endcase
        end
endmodule
