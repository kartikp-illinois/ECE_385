`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 10:11:21 PM
// Design Name: 
// Module Name: addsub9
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


module addsub9(
  input  logic [8:0] a,
  input  logic [8:0] b,
  input  logic       sub,    // 0:a+b, 1:a-b
  output logic [8:0] sum,
  output logic       cout
);
  logic [15:0] a_ext = {7'b0, a};
  logic [15:0] b_ext = {7'b0, (b ^ {9{sub}})};
  logic [15:0] s_ext;
  logic        c_ext;

  ripple_adder u_ra (
    .a    (a_ext),
    .b    (b_ext),
    .cin  (sub),
    .s    (s_ext),
    .cout (c_ext)
  );

  assign sum  = s_ext[8:0];
  assign cout = c_ext;
endmodule
