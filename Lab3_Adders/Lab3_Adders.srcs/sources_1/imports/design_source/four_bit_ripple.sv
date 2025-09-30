`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 02:17:33 AM
// Design Name: 
// Module Name: four_bit_ripple
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_bit_ripple(
    input logic [3:0] a,
    input logic [3:0] b,
    input logic cin,
    output logic [3:0] s,
    output logic cout
    );
    	logic [4:0] carry;
		assign carry[0] = cin;
		
		genvar i;
		generate
		  for (i = 0; i < 4; i++) begin : ripple_gen
		      full_adder fa (a[i], b[i], carry[i], s[i], carry[i+1]);
		  end
		endgenerate 
		assign cout = carry[4];
endmodule
