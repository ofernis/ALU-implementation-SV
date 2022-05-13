// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

logic g1,g2,g3,g4,g5,g6,g7,g8,g9,g10;


	XOR2 #(.Tpdlh(3) , .Tpdhl(3))
	xor_1 (.Z(g1),.A(a), .B(b));
	
	XOR2 #(.Tpdlh(3) , .Tpdhl(3))
	xor_2 (.Z(s), .A(g1), .B(cin));
	
	NOT #(.Tpdlh(5) , .Tpdhl(5))
	not_1 (.Z(g2),.A(b));
	
	NOT #(.Tpdlh(5) , .Tpdhl(5))
	not_2 (.Z(g3),.A(cin));
	
	XOR2 #(.Tpdlh(3) , .Tpdhl(3))
	xor_3 (.Z(g4), .A(a), .B(a_ns));
	
	OR2 #(.Tpdlh(10) , .Tpdhl(10))
	or_1 (.Z(g5), .A(b), .B(cin));
	
	OR2 #(.Tpdlh(10) , .Tpdhl(10))
	or_2 (.Z(g6), .A(g2), .B(g3));
	
	NOT #(.Tpdlh(5) , .Tpdhl(5))
	not_3 (.Z(g7),.A(g5));
	
	NOT #(.Tpdlh(5) , .Tpdhl(5))
	not_4 (.Z(g8),.A(g6));
	
	OR2 #(.Tpdlh(10) , .Tpdhl(10))
	or_3 (.Z(g9), .A(g4), .B(g7));
	
	NOT #(.Tpdlh(5) , .Tpdhl(5))
	not_5 (.Z(g10),.A(g9));
	
	OR2 #(.Tpdlh(10) , .Tpdhl(10)) 
	or_4 (.Z(cout), .A(g8), .B(g10));
	
endmodule

