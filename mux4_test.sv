// 4->1 multiplexer test bench template
module mux4_test;

	logic d00,d11,d22,d33;
	logic [1:0]sell;
	logic zz;

	mux4 uut (
		.d0(d00),
		.d1(d11),
		.d2(d22),
		.d3(d33),
		.sel(sell),
		.z(zz)
	);
	
	initial begin
		d00=1'b0;
		d11=1'b1;
		d22=1'b1;
		d33=1'b1;
		sell=2'b00;
		
		#48
		d00=1'b1;
		
		#48
		d00=1'b0;
		
	end

endmodule
