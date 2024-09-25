module tb_JK_latch;
	reg J;
	reg K;
	reg enable;
	wire Q;

JK_latch uut (
    .J(J),
    .K(K),
    .enable(enable),
    .Q(Q)
);

initial 
	begin
		enable = 0; J = 0; K = 0;
		#10 enable = 1;

		#10 J = 0; K = 0;  // No change
		#10 J = 1; K = 0;  // Set Q to 1
		#10 J = 0; K = 1;  // Reset Q to 0
		#10 J = 1; K = 1;  // Toggle Q
		#10 J = 1; K = 1;  // Toggle Q again
    
		#10 enable = 0;
		#10 J = 0; K = 1;

		#30 $finish;
	end

initial 
	begin
		$monitor("Time = %0d : J = %b, K = %b, Q = %b, enable = %b", $time, J, K, Q, enable);
	end

endmodule