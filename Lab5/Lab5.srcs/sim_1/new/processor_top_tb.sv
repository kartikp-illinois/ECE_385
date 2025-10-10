`timescale 1ns / 1ps

module processor_top_tb();

    logic clk;
    logic reset;
    logic run_i;
    logic continue_i;
    logic [15:0] sw_i;
    logic [15:0] led_o;
    logic [7:0] hex_seg_left;
    logic [3:0] hex_grid_left;
    logic [7:0] hex_seg_right;
    logic [3:0] hex_grid_right;
    
    wire [15:0] mar, mdr, pc, ir;
    assign mar = dut.slc3.cpu.ld_mar;
    assign mdr = dut.slc3.cpu.mdr;
    assign pc = dut.slc3.cpu.pc;
    assign ir = dut.slc3.cpu.ir;
    

    // Instantiate the processor
    processor_top dut (
        .clk(clk),
        .reset(reset),
        .run_i(run_i),
        .continue_i(continue_i),
        .sw_i(sw_i),
        .led_o(led_o),
        .hex_seg_left(hex_seg_left),
        .hex_grid_left(hex_grid_left),
        .hex_seg_right(hex_seg_right),
        .hex_grid_right(hex_grid_right)
    );

    // Clock generation (10ns period = 100MHz)
    always begin
        clk = 0;
        #5;
        clk = 1;
        #5;
    end

    // Monitor state changes
    logic [4:0] prev_state;
    always @(posedge clk) begin
        if (dut.slc3.cpu.cpu_control.state != prev_state) begin
            $display("Time=%0t | STATE CHANGE: %s -> %s", 
                     $time, 
                     get_state_name(prev_state),
                     get_state_name(dut.slc3.cpu.cpu_control.state));
            prev_state = dut.slc3.cpu.cpu_control.state;
        end
    end

    // Monitor PC loading into MAR
    always @(posedge clk) begin
        if (dut.slc3.cpu.ld_mar && dut.slc3.cpu.cpu_control.state == 3) begin // s_18 = 3
            $display("Time=%0t | [PASsssS] DEMO POINT 1a: PC (0x%04h) loading into MAR", 
                     $time, dut.slc3.cpu.pc);
        end
    end

    // Monitor PC incrementing
    logic [15:0] prev_pc;
    always @(posedge clk) begin
        if (dut.slc3.cpu.ld_pc && dut.slc3.cpu.pc != prev_pc) begin
            $display("Time=%0t | [PASssssS] DEMO POINT 1b: PC incremented from 0x%04h to 0x%04h", 
                     $time, prev_pc, dut.slc3.cpu.pc_next);
        end
        prev_pc = dut.slc3.cpu.pc;
    end

    // Monitor MDR loading
    always @(posedge clk) begin
        if (dut.slc3.cpu.ld_mdr && dut.slc3.cpu.cpu_control.state == 6) begin // s_33_3 = 6
            $display("Time=%0t | MDR loading data: 0x%04h from memory", 
                     $time, dut.slc3.cpu.mem_rdata);
        end
    end

    // Monitor IR loading from MDR
    always @(posedge clk) begin
        if (dut.slc3.cpu.ld_ir && dut.slc3.cpu.cpu_control.state == 7) begin // s_35 = 7
            $display("Time=%0t | [PASssS] DEMO POINT 2: MDR (0x%04h) loading into IR", 
                     $time, dut.slc3.cpu.mdr);
            $display("                   Instruction fetched: 0x%04h", dut.slc3.cpu.ir);
            decode_instruction(dut.slc3.cpu.mdr);
        end
    end

    // Test sequence
    initial begin
        $display("\n========================================");
        $display("      SLC-3 WEEK 1 FETCH TEST");
        $display("========================================\n");
        
        // Initialize inputs
        reset = 1;
        run_i = 0;
        continue_i = 0;
        sw_i = 16'h0003;
        prev_state = 0;
        prev_pc = 0;
        
        $display("Time=%0t | Initializing... Reset asserted", $time);
        
        #50;
        reset = 0;
        $display("Time=%0t | Reset released. System in HALTED state", $time);
        #20;
        
        $display("\nTime=%0t | >>> PRESSING RUN BUTTON <<<", $time);
        run_i = 1;
        #20;
        run_i = 0;
        $display("Time=%0t | Run button released", $time);
        
        #200;
        
        $display("\nTime=%0t | >>> PRESSING CONTINUE (1st instruction) <<<", $time);
        continue_i = 1;
        #30;
        continue_i = 0;
        $display("Time=%0t | Continue released", $time);
        #200;
        
        $display("\nTime=%0t | >>> PRESSING CONTINUE (2nd instruction) <<<", $time);
        continue_i = 1;
        #30;
        continue_i = 0;
        $display("Time=%0t | Continue released", $time);
        #200;
        
        $display("\nTime=%0t | >>> PRESSING CONTINUE (3rd instruction) <<<", $time);
        continue_i = 1;
        #30;
        continue_i = 0;
        $display("Time=%0t | Continue released", $time);
        #200;
        
        $display("\n========================================");
        $display("      SIMULATION COMPLETE");
        $display("========================================");
        $display("Look for [PASS] markers above to verify:");
        $display("  [PASS] DEMO POINT 1a: PC loading into MAR");
        $display("  [PASS] DEMO POINT 1b: PC incrementing");
        $display("  [PASS] DEMO POINT 2: MDR loading into IR");
        $display("========================================\n");
        
        $finish;
    end

    // Helper function to get state name
    function string get_state_name(input [4:0] state);
        case(state)
            0: get_state_name = "HALTED";
            1: get_state_name = "PAUSE_IR1";
            2: get_state_name = "PAUSE_IR2";
            3: get_state_name = "S_18";
            4: get_state_name = "S_33_1";
            5: get_state_name = "S_33_2";
            6: get_state_name = "S_33_3";
            7: get_state_name = "S_35";
            default: get_state_name = "UNKNOWN";
        endcase
    endfunction

    // Helper function to decode instruction
    function void decode_instruction(input [15:0] instr);
        logic [3:0] opcode;
        opcode = instr[15:12];
        case(opcode)
            4'b0001: $display("                   --> ADD instruction");
            4'b0101: $display("                   --> AND instruction");
            4'b1001: $display("                   --> NOT instruction");
            4'b0000: $display("                   --> BR instruction");
            4'b1100: $display("                   --> JMP instruction");
            4'b0100: $display("                   --> JSR instruction");
            4'b0110: $display("                   --> LDR instruction");
            4'b0111: $display("                   --> STR instruction");
            4'b1101: $display("                   --> PAUSE instruction");
            default: $display("                   --> Unknown opcode");
        endcase
    endfunction

endmodule