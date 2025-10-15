`timescale 1ns / 1ps
//mb_intro_top
//
//Replacement block diagram wrapper file and top level for use with ECE 385
//MicroBlaze introduction tutorial. Note that this instances only the block
//design with no additional logic. You will have to modify this for future labs
//to instantate additional logic
//
//Distribution starting with Fall 2023 semester
//modified 7/25/2023 - Zuofu

module mb_intro_top
   (input  logic clk,
    output logic [15:0] led,
    input  logic [3:0] btn,
    input logic [15:0] sw,
    output logic uart_rxd,
    input  logic uart_txd);

  mb_block mb_block_i
       (.clk_100MHz(clk),
        .gpio_rtl_0_tri_o(led),           // LEDs - 16-bit output
        .gpio_rtl_1_tri_i(sw),            // Switches - 16-bit input  
        .gpio_rtl_2_tri_i(btn[1]),        // Accumulate button - 1-bit input (btn[1])
        .gpio_rtl_3_tri_i(btn[0]),        // Reset button - 1-bit input (btn[0])
        .reset_rtl_0(1'b1),               // Hardwire reset to inactive
        .uart_rtl_0_rxd(uart_txd),
        .uart_rtl_0_txd(uart_rxd));
endmodule