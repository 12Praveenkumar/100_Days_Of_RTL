module priencoder( 
input [7:0] a,
output reg [2:0]y
);
always@(a)
		begin
			if(a[7])
				y=3'd7;
				else if(a[6])
					y=3'd6;
					else if(a[5])
						y=3'd5;
						else if(a[4])
							y=3'd4;
							else if(a[3])
								y=3'd3;
								else if(a[2])
									y=3'd2;
										else if(a[1])
											y=3'd1;
												else if(a[0])
													y=3'd0;
														else
														y=3'b000;
			end

endmodule
