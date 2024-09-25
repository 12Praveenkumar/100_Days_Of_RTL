module tb_comparator_4bit;
    reg [3:0] a;
    reg [3:0] b;

    wire a_greater;
    wire a_equal;
    wire a_less;

    comparator_4bit uut (
        .a(a),
        .b(b),
        .a_greater(a_greater),
        .a_equal(a_equal),
        .a_less(a_less)
    );

    initial begin
        $monitor("Time = %0t | a = %b | b = %b | a_greater = %b | a_equal = %b | a_less = %b",$time, a, b, a_greater, a_equal, a_less);

        a = 4'b0001; b = 4'b0010;
        #10;
        a = 4'b0101; b = 4'b0100;
        #10;
        a = 4'b0111; b = 4'b0111;
        #10;
        a = 4'b1111; b = 4'b1010;
        #10;
        a = 4'b0000; b = 4'b0000;
        #10;

        $finish;
    end
endmodule