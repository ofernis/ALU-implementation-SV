// Full Adder/Subtractor test bench template
module fas_test;

	logic A,B,C_IN,A_NS,S,COUT;       

	fas uut (
	.a(A),
	.b(B),
	.cin(C_IN),
	.a_ns(A_NS),
	.s(S),
	.cout(COUT)
	);
	
	initial begin
		
		A=1'b0;
		B=1'b0;
		C_IN=1'b0;
		A_NS=1'b0;
		
		#42
		B=1'b1;
		
		#42
		B=1'b0;
		
	
	end


endmodule
