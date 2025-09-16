module lookahead_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);

	/* TODO
		*
		* Insert code here to implement a CLA adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */
		
    logic [3:0] s0, s1, s2, s3;
    
    // Group Ps and Gs from each 4-bit block
    logic PG0, GG0, PG4, GG4, PG8, GG8, PG12, GG12;

    // Block carry-ins/outs
    logic C0, C4, C8, C12, C16;
    
    assign C0 = cin;
    four_bit_lookahead u0 (
        .a   (a[3:0]),
        .b   (b[3:0]),
        .cin (C0),
        .s   (s0),
        .cout(),
        .PG  (PG0),
        .GG  (GG0)
    );
    
    assign C4 = GG0 | (PG0 & C0);
    four_bit_lookahead u1 (
        .a   (a[7:4]),
        .b   (b[7:4]),
        .cin (C4),
        .s   (s1),
        .cout(),
        .PG  (PG4),
        .GG  (GG4)
    );
    
    assign C8 = GG4 | (PG4 & GG0) | (PG4 & PG0 & C0);
    four_bit_lookahead u2 (
        .a   (a[11:8]),
        .b   (b[11:8]),
        .cin (C8),
        .s   (s2),
        .cout(),
        .PG  (PG8),
        .GG  (GG8)
    );
    
    assign C12 = GG8 | (PG8 & GG4) | (PG8 & PG4 & GG0) | (PG8 & PG4 & PG0 & C0);
    four_bit_lookahead u3 (
        .a   (a[15:12]),
        .b   (b[15:12]),
        .cin (C12),
        .s   (s3),
        .cout(),
        .PG  (PG12),
        .GG  (GG12)
    );
    
    assign C16 = GG12 | (PG12 & GG8) | (PG12 & PG8 & GG4) | (PG12 & PG8 & PG4 & GG0) | (PG12 & PG8 & PG4 & PG0 & C0);
    assign cout = C16;
    assign s = {s3, s2, s1, s0}; 
    
    
endmodule
