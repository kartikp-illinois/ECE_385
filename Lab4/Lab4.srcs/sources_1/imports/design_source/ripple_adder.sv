
module ripple_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);

	/* TODO
		*
		* Insert code here to implement a ripple adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */		
		logic [4:0] carry;
		assign carry[0] = cin;
		
		genvar i;
		generate
		  for (i = 0; i < 4; i++) begin : ripple_gen
		      four_bit_ripple fbr (a[4*i+3 : 4*i], b[4*i+3:4*i], carry[i], s[4*i+3:4*i], carry[i+1]);
		  end
		endgenerate 
		assign cout = carry[4];
    
endmodule


