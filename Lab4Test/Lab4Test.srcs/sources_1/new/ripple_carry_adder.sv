`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2025 08:43:10 PM
// Design Name: 
// Module Name: ripple_carry_adder
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



// 9-bit Ripple Carry Adder using full_adder modules
module ripple_carry_adder (
    input  logic [8:0] a,      // 9-bit input A
    input  logic [8:0] b,      // 9-bit input B
    input  logic       cin,    // Carry input
    output logic [8:0] sum,    // 9-bit sum output
    output logic       cout    // Carry output
);

    // Internal carry signals between full adders
    logic [8:0] carry;
    
    // Connect carry input to first carry signal
    assign carry[0] = cin;
    
    // Generate 9 full adders
    genvar i;
    generate
        for (i = 0; i < 9; i++) begin : full_adder_gen
            full_adder fa_inst (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .s(sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate
    
    // Final carry out
    assign cout = carry[9];

endmodule
