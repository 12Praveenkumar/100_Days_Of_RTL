module fifo( input clk,rst,we,re,input [7:0] data_in,
          output empty,full,output reg [7:0]data_out );//16*8 fifo
          reg  [3:0] wr_pt=4'b0;
          reg [3:0]  rd_pt=4'b0;
          reg [4:0] fifo_counter;
          reg [7:0] memory[15:0];
          integer i;
          assign empty =(fifo_counter==5'b0)?1'b1:1'b0;
          assign full= (fifo_counter>5'b01111);
          always@(posedge clk)
          begin
          if(rst)
          fifo_counter<=0;
          else if(!full&&we)
          fifo_counter<=fifo_counter+1;
          else if(!empty&&re)
           fifo_counter<=fifo_counter-1;
           else
           fifo_counter<=fifo_counter;
           end
           
           //Logic for write operation
           always@(posedge clk)
           begin
           if(rst)
           begin
           for(i=0;i<16;i=i+1)//looping to maake memory to 0
           begin
           memory[i]<=0;
           wr_pt<=0;
           end
           end
           else if((we==1'b1)&&(full==1'b0))
           begin
           memory[wr_pt]<=data_in;
           wr_pt<=wr_pt+1;
           end
           else
           wr_pt<=wr_pt;
           end
           
           //Logic for the read operation
           
           
           always@(posedge clk)
           begin
           if(rst)
           begin
           rd_pt<=4'b0000;
           data_out<=8'b0;
           end
           else if((re==1'b1)&&(empty==1'b0))
           begin
           data_out<=memory[rd_pt];
           rd_pt<=rd_pt+1;
           end
           else
           rd_pt<=rd_pt;
           end
           
           
           
          
          
          
          
          
endmodule
