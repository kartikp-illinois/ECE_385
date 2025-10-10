//SLC-3 Top level module for both simulation and synthesis using test_memory

module processor_top (
	input  logic		clk, 
	input  logic 		reset,

	input  logic 		run_i, 
	input  logic 		continue_i,
	input  logic [15:0] sw_i,

	output logic [15:0] led_o,
	output logic [7:0]  hex_seg_left,
	output logic [3:0]  hex_grid_left,
	output logic [7:0]  hex_seg_right,
	output logic [3:0]  hex_grid_right
);

logic clk_1hz;
clock_divider_1hz div (
    .clk_in(clk),
    .reset(reset),
    .clk_out(clk_1hz)
);

logic reset_s;
logic run_s;
logic continue_s;
logic [15:0] sw_s;

logic [15:0] sram_rdata;
logic [15:0] sram_wdata;
logic [15:0] sram_addr;
logic sram_mem_ena;
logic sram_wr_ena;


sync_debounce button_sync [2:0] (
	.clk	(clk), 
	.d		({run_i, continue_i, reset}), 
	
	.q		({run_s, continue_s, reset_s})
);

sync_flop sw_sync [15:0] (
	.clk	(clk),
	.d		(sw_i),

	.q		(sw_s)
);	

slc3 slc3 (
	.clk			(clk), 
	.reset			(reset_s), //s

	.run_i			(run_s), //s
	.continue_i		(continue_s), //s
	.sw_i			(sw_s),

	.led_o			(led_o),
	.hex_seg_o		(hex_seg_left),
	.hex_grid_o		(hex_grid_left),
	.hex_seg_debug	(hex_seg_right),
	.hex_grid_debug	(hex_grid_right),

	.sram_rdata		(sram_rdata),
	.sram_wdata		(sram_wdata),
	.sram_addr		(sram_addr),
	.sram_mem_ena	(sram_mem_ena), 
	.sram_wr_ena	(sram_wr_ena)
);

memory mem_subsystem (
	.clk		(clk), 
	.reset		(reset_s),  //s

	.data		(sram_wdata), 
	.address	(sram_addr[9:0]), 
	.ena		(sram_mem_ena), 
	.wren		(sram_wr_ena), 
	.readout	(sram_rdata)
);


endmodule



module clock_divider_1hz (
    input  logic clk_in,
    input  logic reset,
    output logic clk_out
);

    localparam N = 26; // 2^26 = 67,108,864 > 50,000,000
    
    logic [25:0] counter;

    always_ff @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter == 49_999_999) begin
                counter <= 0;
                clk_out <= ~clk_out;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule