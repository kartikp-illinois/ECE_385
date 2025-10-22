//------------------------------------------------------------------------------
// Company:          UIUC ECE Dept.
// Engineer:         Stephen Kempf
//
// Create Date:    17:44:03 10/08/06
// Design Name:    ECE 385 Given Code - Incomplete ISDU for SLC-3
// Module Name:    Control - Behavioral
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 02-13-2017
//    Spring 2017 Distribution
//    Revised 07-25-2023
//    Xilinx Vivado
//	  Revised 12-29-2023
// 	  Spring 2024 Distribution
// 	  Revised 6-22-2024
//	  Summer 2024 Distribution
//	  Revised 9-27-2024
//	  Fall 2024 Distribution
//------------------------------------------------------------------------------

module control (
	input logic			clk, 
	input logic			reset,

	input logic  [15:0]	ir,
	//input logic			ben,
	input logic	[2:0]	nzp,

	input logic 		continue_i,
	input logic 		run_i,

	output logic		ld_mar,
	output logic		ld_mdr,
	output logic		ld_ir,
	output logic		ld_pc,
	output logic 		ld_reg,
	output logic 		ld_cc,
	output logic        ld_led,
						
	output logic		gate_pc,	//treat these as 1-hot 
	output logic		gate_mdr,
	output logic 		gate_marmux,
	output logic		gate_alu,
						
	output logic [1:0]	pcmux,
	output logic 		drmux,
	output logic 		sr1mux,
	output logic		sr2mux,
	output logic [1:0]	aluk,
	output logic 		addr1mux,
	output logic [1:0]	addr2mux,
	output logic 		mioen,
	
	//You should add additional control signals according to the SLC-3 datapath design
	output logic		mem_mem_ena, // Mem Operation Enable
	output logic		mem_wr_ena  // Mem Write Enable
);
	enum logic [5:0] {
		halted, 
		pause_ir1,
		pause_ir2, 

		s_18,	//fetch1
		s_33_1,	//fetch2
		s_33_2,	//fetch3
		s_33_3,	//fetch4
		s_35,	//fetch5
		s_32,	//decode

		s_01,	//add

		s_05,	//and

		s_09,	//not

		s_00,	//br
		s_22,

		s_12,	//jmp
		//s_12_1, //special

		s_04,	//jsr
		s_21,

		s_06,	//ldr
		//s_06_2,
		//s_06_3,
		//s_06_4,
		//s_06_5,
		s_25_1,
		s_25_2,
		s_25_3,
		s_27,


		s_07,	//str
		s_23,
		s_16
	} state, state_nxt;




	always_ff @ (posedge clk)
	begin
		if (reset) 
			state <= halted;
		else 
			state <= state_nxt;
	end

	always_comb
	begin 
		
		// Default controls signal values so we don't have to set each signal
		// in each state case below (If we don't set all signals in each state,
		// we can create an inferred latch)
		// Default control signal values
		ld_mar = 1'b0;
		ld_mdr = 1'b0;
		ld_ir = 1'b0;
		ld_pc = 1'b0;
		ld_reg = 1'b0;
		ld_cc = 1'b0;
		ld_led = 1'b0;

		gate_pc = 1'b0;
		gate_mdr = 1'b0;
		gate_marmux = 1'b0;
		gate_alu = 1'b0;

		pcmux = 2'b00;
		drmux = 1'b0;
		sr1mux = 1'b0;
		sr2mux = 1'b0;
		aluk = 2'b00;
		addr1mux = 1'b0;
		addr2mux = 2'b00;
		mioen = 1'b0;

		mem_mem_ena = 1'b0;
		mem_wr_ena = 1'b0;
  
		// Assign relevant control signals based on current state
		case (state)
			halted: ; 
			s_18 : begin 
					gate_pc = 1'b1;
					ld_mar = 1'b1;
					pcmux = 2'b10;
					ld_pc = 1'b1;
				end

			s_33_1 : begin 
					mem_mem_ena = 1'b0;
					ld_mdr = 1'b1;
					mioen = 1'b1;
				end

			s_33_2 : begin
					mem_mem_ena = 1'b1;
					ld_mdr = 1'b1;
					mioen = 1'b1;
				end

			s_33_3 : begin//you may have to think about this as well to adapt to ram with wait-states
					mem_mem_ena = 1'b1;
					ld_mdr = 1'b1;
					mioen = 1'b1;
				end

			s_35 : begin 
					gate_mdr = 1'b1;
					ld_ir = 1'b1;
				end

			pause_ir1 : ld_led = 1'b1; 
			pause_ir2 : ld_led = 1'b1; 

			s_32 : ; //do nothing - its decode, handled in state transition logic below

			s_01 : begin
					ld_reg = 1'b1;
					drmux = 1'b0;
					sr1mux = 1'b1;
					sr2mux = ir[5];
					aluk = 2'b00;//ADD;
					gate_alu = 1'b1;
					ld_cc = 1'b1;
				end
			
			s_05 : begin
					ld_reg = 1'b1;
					drmux = 1'b0;
					sr1mux = 1'b1;
					sr2mux = ir[5];
					aluk = 2'b01;//AND;
					gate_alu = 1'b1;
					ld_cc = 1'b1;
			end

			s_09 : begin
					ld_reg = 1'b1;
					drmux = 1'b0;
					sr1mux = 1'b1;
					aluk = 2'b10;//NOT;
					gate_alu = 1'b1;
					ld_cc = 1'b1;
			end

			s_06 : begin
					ld_mar = 1'b1;
					addr2mux = 2'b10;
					addr1mux = 1'b1;
					sr1mux = 1'b1;
					gate_marmux = 1'b1;
			end

			s_25_1 : begin
					ld_mdr = 1'b1;
					mioen = 1'b1;
					mem_mem_ena = 1'b0;
			end

			s_25_2, s_25_3 : begin
					ld_mdr = 1'b1;
					mioen = 1'b1;
					mem_mem_ena = 1'b1;
			end

			s_27 : begin
					ld_reg = 1'b1;
					gate_mdr = 1'b1;
					drmux = 1'b0;
					ld_cc = 1'b1;
			end

			s_07 : begin
					ld_mar = 1'b1;
					addr2mux = 2'b10;
					addr1mux = 1'b1;
					sr1mux = 1'b1;
					gate_marmux = 1'b1;
			end

			s_23 : begin
					ld_mdr = 1'b1;
					sr1mux = 1'b0;
					aluk = 2'b11;//PASSA;
					gate_alu = 1'b1;
			end

			s_16 : begin
					mem_mem_ena = 1'b1;
					mem_wr_ena = 1'b1;
			end

			s_00 : begin
					//... do nothing?
			end

			s_22 : begin
					ld_pc = 1'b1;
					pcmux = 2'b01;
					addr1mux = 1'b0;
					addr2mux = 2'b01;
			end

			s_12 : begin
					ld_pc = 1'b1;
					sr1mux = 1'b1;
					aluk = 2'b11;
					gate_alu = 1'b1;
					pcmux = 2'b00;
			end

			s_04 : begin
					drmux = 1'b1;
					ld_reg = 1'b1;
					gate_pc = 1'b1;
			end

			s_21 : begin
					ld_pc = 1'b1;
					addr1mux = 1'b0;
					addr2mux = 2'b00;
					pcmux = 2'b01;
			end

			default : ;
		endcase
	end 


	logic [3:0] opcode;
	assign opcode = ir[15:12];

	always_comb
	begin
		// default next state is staying at current state
		state_nxt = state;

		unique case (state)
			halted : 
				if (run_i) 
					state_nxt = s_18;
			s_18 : 
				state_nxt = s_33_1; //notice that we usually have 'r' here, but you will need to add extra states instead 
			s_33_1 :                 //e.g. s_33_2, etc. how many? as a hint, note that the bram is synchronous, in addition, 
				state_nxt = s_33_2;   //it has an additional output register. 
			s_33_2 :
				state_nxt = s_33_3;
			s_33_3 : 
				state_nxt = s_35;
			s_35 : 
				state_nxt = s_32;
			s_32 :
				begin
					case(opcode)
						4'b0001 : state_nxt = s_01;//add
						4'b0101 : state_nxt = s_05;//and
						4'b1001 : state_nxt = s_09;//not
						4'b0000 : state_nxt = s_00;//br
						4'b1100 : state_nxt = s_12;//jmp
						4'b0100 : state_nxt = s_04;//jsr
						4'b0110 : state_nxt = s_06;//ldr
						4'b0111 : state_nxt = s_07;//str
						4'b1101 : state_nxt = pause_ir1;//pause
						default : state_nxt = pause_ir2;//unknown
					endcase
				end
			s_01 : state_nxt = s_18;
			s_05 : state_nxt = s_18;
			s_09 : state_nxt = s_18;
			// s_06_1 : state_nxt = s_06_2;
			// s_06_2 : state_nxt = s_06_3;
			// s_06_3 : state_nxt = s_06_4;
			// s_06_4 : state_nxt = s_06_5;
			// s_06_5 : state_nxt = s_25_1;
			s_06 : state_nxt = s_25_1;
			s_25_1 : state_nxt = s_25_2;
			s_25_2 : state_nxt = s_25_3;
			s_25_3 : state_nxt = s_27;
			s_07 : state_nxt = s_23;
			s_23 : state_nxt = s_16;
			s_16 : state_nxt = s_18;

			s_04 : state_nxt = s_21;
			s_21 : state_nxt = s_18;

			//s_12 : state_nxt = s_12_1;
			s_12 : state_nxt = s_18;

			s_00 : state_nxt = (nzp & ir[11:9]) ? s_22 : s_18;

			s_22 : state_nxt = s_18;
			s_27 : state_nxt = s_18;

			pause_ir1 : state_nxt = continue_i ? pause_ir2 : pause_ir1;
			pause_ir2 : state_nxt = continue_i ? pause_ir2 : s_18;	

			default : state_nxt = pause_ir1;
		endcase
	end
	
endmodule