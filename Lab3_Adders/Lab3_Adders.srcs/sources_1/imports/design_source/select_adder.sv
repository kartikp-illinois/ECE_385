module select_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);

	/* TODO
		*
		* Insert code here to implement a CSA adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */
	wire c4, c8, c12;
	four_bit_ripple r30 (a[3:0], b[3:0], cin, s[3:0], c4);

	four_bit_sa sa74 (a[7:4], b[7:4], c4, s[7:4], c8);
	four_bit_sa sa118 (a[11:8], b[11:8], c8, s[11:8], c12);
	four_bit_sa sa1512 (a[15:12], b[15:12], c12, s[15:12], cout);

endmodule


module four_bit_sa (
	input logic [3:0] a,
	input logic [3:0] b,
	input logic cin,
	output logic [3:0] s,
	output logic cout
);
	wire [3:0] s0, s1;
	wire c0, c1;
	four_bit_ripple fbr0(a, b, 1'b0, s0, c0);
	four_bit_ripple fbr1(a, b, 1'b1, s1, c1);
	assign cout = cin&c1 | c0;
	assign s = cin ? s1 : s0;
endmodule