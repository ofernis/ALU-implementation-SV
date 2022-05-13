// 64-bit ALU test bench template
module alu64bit_test;

 	logic [63:0] A;
    logic [63:0] B;
    logic CIN;
    logic [1:0] OP;
    logic [63:0] S;
    logic COUT;

	alu64bit uut (
		.a(A),
		.b(B),
		.cin(CIN),
		.op(OP),
		.s(S),
		.cout(COUT)
	);
	
	initial begin
	A = 64'b1111111111111111111111111111111111111111111111111111111111111111;
	B = 64'b1000000000000000000000000000000000000000000000000000000000000001;
	OP = 2'b10;
	CIN=0;
	
	#3000
	B[0]=0;

	
	end
	endmodule
