module updowncounter(input clk,rst,load,updown ,[3:0] din,output reg [3:0] cntr

    );
    always@(posedge clk)
    begin
    if(!rst)
    begin
    cntr=1'b0;
    end
    else if(load)
    begin
    cntr=din;
    end
    else if(updown)
    begin
    cntr=cntr+1;
    end
    else
    cntr=cntr-1;
    
    
    end
endmodule
