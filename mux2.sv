// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------

logic g1;
logic g2;
logic g3;
logic g4;
logic g5;
logic g6;
logic g7;

NOT #(.Tpdhl(5),.Tpdlh(1)) 
Not_g1(.A(d0),.Z(g1));

NOT #(.Tpdhl(5),.Tpdlh(1)) 
Not_g2(.A(d1),.Z(g2));

OR2 #(.Tpdhl(7),.Tpdlh(10)) 
OR2_g3(.Z(g3),.A(g1),.B(sel));

NOT #(.Tpdhl(5),.Tpdlh(1)) 
Not_g4(.A(sel),.Z(g4));

NOT #(.Tpdhl(5),.Tpdlh(1)) 
Not_g5(.A(g3),.Z(g5));

OR2 #(.Tpdhl(7),.Tpdlh(10)) 
OR2_g6(.Z(g6),.A(g2),.B(g4));

NOT #(.Tpdhl(5),.Tpdlh(1)) 
Not_g7(.A(g6),.Z(g7));

OR2 #(.Tpdhl(7),.Tpdlh(10)) 
OR2_g8(.Z(z),.A(g5),.B(g7));


// End of your code

endmodule
