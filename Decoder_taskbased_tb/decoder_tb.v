module decoder_tb(
    );
    reg [2:0] a;
    wire [7:0] y;
    integer i;
    decoder dut(a,y);
    task initialize;
    begin
    a=3'b000;
    end
    endtask
    task q(input[2:0]x);
    begin
    a=x;
    end
    endtask
    task delay();
    begin
    #10;
    end
    endtask
    initial
    begin
    initialize;
    for(i=0;i<8;i=i+1)
    begin
    q(i);
    delay;
    end
    $finish;
    end
    
    
endmodule
