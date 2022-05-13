// 64-bit ALU template
module alu64bit (
    input logic [63:0] a,    // Input bit a
    input logic [63:0] b,    // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic [63:0] s,   // Output S
    output logic cout        // Carry out
);
	
	logic [62:0] bits;
	
	alu1bit #() inst_0 (.a(a[0]), .b(b[0]), .cin(cin), .op(op), .s(s[0]), .cout(bits[0]));
	
	genvar i;
	generate
		for (i=1 ; i<63 ; i++)
		begin
			alu1bit #() inst_i(.a(a[i]), .b(b[i]), .cin(bits[i-1]), .op(op), .s(s[i]), .cout(bits[i])); 
		end
	endgenerate
	
	alu1bit #() inst_63 (.a(a[63]), .b(b[63]), .cin(bits[62]), .op(op), .s(s[63]), .cout(cout)); 


endmodule
