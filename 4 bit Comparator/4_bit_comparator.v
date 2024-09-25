module comparator_4bit (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire a_greater,
    output wire a_equal,
    output wire a_less
);

    assign a_greater = (a>b) ? 1'b1 : 1'b0;
    assign a_equal   = (a==b) ? 1'b1 : 1'b0;
    assign a_less    = (a<b) ? 1'b1 : 1'b0;

endmodule