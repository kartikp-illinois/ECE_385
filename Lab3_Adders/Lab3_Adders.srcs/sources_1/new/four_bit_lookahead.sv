`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 12:01:23 AM
// Design Name: 
// Module Name: four_bit_lookahead
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


module four_bit_lookahead(
    input  logic [3:0] a,
    input  logic [3:0] b,
    input  logic cin,

    output logic [3:0] s,
    output logic cout,
    output logic PG,
    output logic GG
    );
    
    logic [3:0] P, G;
    
    assign P = a ^ b;
    assign G = a & b;
    
    logic [4:0] C;
    
    //crreate the cs
    assign C[0] = cin;
    assign C[1] = G[0] | (P[0] & cin);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin);
    assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin);
    
    //create the sums
    assign s[0] = P[0] ^ C[0];
    assign s[1] = P[1] ^ C[1];
    assign s[2] = P[2] ^ C[2];
    assign s[3] = P[3] ^ C[3];
    
    assign cout = C[4];
    
    assign PG = P[3] & P[2] & P[1] & P[0];
    assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
endmodule
