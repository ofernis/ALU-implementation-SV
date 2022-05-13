// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

logic g1,g2,g3,g4,g5;
	
	OR2 #(.Tpdlh(10) , .Tpdhl(10)) 
	or_1 (.Z(g1), .A(b), .B(a));
	
	NOT #(.Tpdlh(5) , .Tpdhl(5)) 
	not_1 (.Z(g2),.A(g1));
	
	XOR2 #(.Tpdlh(3) , .Tpdhl(3)) 
	xor_1 (.Z(g3),.A(a), .B(b));
	
	NOT #(.Tpdlh(5) , .Tpdhl(5)) 
	not_2 (.Z(g4),.A(op[0]));
	
	fas fas_1 (.a(a), .b(b), .cin(cin), .a_ns(g4), .s(g5), .cout(cout)); 
	mux4 mux_1 ( .d0(g2), .d1(g3), .d2(g5), .d3(g5), .sel(op), .z(s));

endmodule
