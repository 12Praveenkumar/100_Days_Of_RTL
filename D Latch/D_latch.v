module D_Latch (
    input D,
    input En,
    output reg Q
);
always @ (En or D) begin
    if (En)
        Q = D;
end

endmodule