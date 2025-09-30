`timescale 1ns/1ps

module tb;

  // ----------- DUT I/O (Updated to match lab requirements) -----------
  logic        clk;
  logic        reset_load_clear;  // Updated signal name
  logic        run;
  logic [15:0]  sw_i;               // Only 8 bits needed

  logic [3:0]  hex_grid;
  logic [7:0]  hex_seg;
  logic [7:0]  aval;             // Direct outputs
  logic [7:0]  bval;
  logic        xval;

  // ----------- Instantiate DUT -----------
  multiplier_top dut (
    .clk              (clk),
    .reset_load_clear (reset_load_clear),
    .run              (run),
    .sw_i             (sw_i),       // Changed from .sw to .sw_i
    .hex_grid         (hex_grid),
    .hex_seg          (hex_seg),
    .aval             (aval),
    .bval             (bval),
    .xval             (xval)
  );
  
  // ----------- 100 MHz clock -----------
  initial clk = 1'b0;
  always  #5 clk = ~clk;

  // ----------- Constants -----------
  localparam integer DEB_HIGH   = 8;
  localparam integer DEB_SETTLE = 8;
  localparam integer WAIT_RUN   = 200;  // Wait for multiplication to complete
  localparam integer HOLD_LONG  = 300;
  localparam integer HOLD_TAIL  = 50;
  localparam integer WAIT_IDLE  = 200;

  // ----------- Tasks -----------

  // One debounced press: drive high N cycles then low M cycles
  task press(
    output logic btn,
    input  integer high_cycles,
    input  integer settle_cycles
  );
    begin
      btn = 1'b1;
      repeat(high_cycles)   @(posedge clk);
      btn = 1'b0;
      repeat(settle_cycles) @(posedge clk);
    end
  endtask

  // Load B (multiplier) via reset_load_clear press
  // This should: Load B from switches, Clear X and A, go to IDLE
  task load_B(input logic signed [7:0] B);
    begin
      sw_i[7:0] = B[7:0];
      $display("[%0t] Loading multiplier B = %0d (0x%02h) from switches", $time, $signed(B), B);
      press(reset_load_clear, DEB_HIGH, DEB_SETTLE);
      
      // Verify B was loaded correctly
      if (bval !== B[7:0]) begin
        $error("[%0t] FAIL: B not loaded correctly. Expected: %0d, Got: %0d", 
               $time, $signed(B), $signed(bval));
        $fatal(1);
      end
      
      // Verify X and A were cleared
      if (xval !== 1'b0 || aval !== 8'h00) begin
        $error("[%0t] FAIL: X,A not cleared. X=%b, A=0x%02h", $time, xval, aval);
        $fatal(1);
      end
      
      $display("[%0t] Successfully loaded B=%0d, cleared X=%b, A=0x%02h", 
               $time, $signed(bval), xval, aval);
    end
  endtask

  // Run one multiply with given multiplicand on SW
  task run_once(input logic signed [7:0] multiplicand);
    begin
      sw_i[7:0] = multiplicand[7:0];
      $display("[%0t] Running multiplication with multiplicand = %0d (0x%02h)", 
               $time, $signed(multiplicand), multiplicand);
      press(run, DEB_HIGH, DEB_SETTLE);
      repeat(WAIT_RUN) @(posedge clk);
      $display("[%0t] Multiplication completed. Result A=0x%02h, B=0x%02h, X=%b", 
               $time, aval, bval, xval);
    end
  endtask

  // Check product against expected (signed 2's-comp)
  task check_product(
    input logic signed [7:0] multiplicand,
    input logic signed [7:0] multiplier,
    input [127:0]            label // small string-ish
  );
    logic signed [15:0] got;
    logic signed [15:0] exp;
    begin
      // Product is in {A,B} according to lab spec
      got = $signed({aval, bval});
      exp = $signed(multiplicand) * $signed(multiplier);

      if (got !== exp) begin
        $error("[%0t] FAIL %0s: mult=%0d * mcand=%0d = got=%0d, exp=%0d (got_hex=0x%04h, exp_hex=0x%04h)",
               $time, label, $signed(multiplier), $signed(multiplicand), got, exp, got[15:0], exp[15:0]);
        $fatal(1);
      end else begin
        $display("[%0t] PASS %0s: %0d * %0d = %0d (0x%04h)",
                 $time, label, $signed(multiplier), $signed(multiplicand), got, got[15:0]);
      end
    end
  endtask

  // Hold run high for many cycles - should still do exactly one execution
  task hold_run_and_verify_one_exec(
    input logic signed [7:0] multiplicand,
    input logic signed [7:0] multiplier
  );
    logic signed [15:0] prod_before;
    logic signed [15:0] after1;
    logic signed [15:0] after2;
    logic signed [15:0] exp;
    begin
      prod_before = $signed({aval, bval});
      $display("[%0t] Testing held run: product before = %0d", $time, prod_before);

      sw_i[7:0] = multiplicand[7:0];
      run = 1'b1;
      repeat(HOLD_LONG) @(posedge clk);
      run = 1'b0;
      repeat(HOLD_TAIL) @(posedge clk);

      after1 = $signed({aval, bval});
      repeat(WAIT_IDLE) @(posedge clk);
      after2 = $signed({aval, bval});

      if (after1 !== after2) begin
        $error("[%0t] FAIL held-run: product changed twice (after1=%0d, after2=%0d)", $time, after1, after2);
        $fatal(1);
      end

      exp = $signed(multiplicand) * $signed(multiplier);
      if (after1 !== exp) begin
        $error("[%0t] FAIL held-run value: got=%0d exp=%0d", $time, after1, exp);
        $fatal(1);
      end

      $display("[%0t] PASS held-run - exactly one execution, prod=%0d", $time, after1);
    end
  endtask

  // Consecutive -1 multiplies: -1 * -1 * -1 * …
  task consecutive_minus_ones(input integer count);
    integer k;
    begin
      $display("[%0t] Testing %0d consecutive -1 * -1 multiplications...", $time, count);
      load_B(-8'sd1);
      run_once(-8'sd1);
      check_product(-8'sd1, -8'sd1, "consec k=1");
      for (k = 2; k <= count; k = k + 1) begin
        run_once(-8'sd1);
        check_product(-8'sd1, -8'sd1, "consec k>1");
      end
      $display("[%0t] PASS consecutive -1 multiplications (%0d runs).", $time, count);
    end
  endtask

  // Test state machine behavior
  task test_state_machine();
    begin
      $display("[%0t] Testing state machine behavior...", $time);
      
      // Load a simple case
      load_B(8'sd3); // B = 3 = 00000011
      
      // Check initial state is IDLE
      if (dut.state !== dut.IDLE) begin
        $error("[%0t] FAIL: Expected IDLE state after reset, got state=%0d", $time, dut.state);
        $fatal(1);
      end
      
      // Start multiplication
      sw_i[7:0] = 8'sd2; // Multiplicand = 2
      run = 1'b1;
      @(posedge clk);
      run = 1'b0;
      @(posedge clk);
      
      // Should now be in ADD1 state
      if (dut.state !== dut.ADD1) begin
        $error("[%0t] FAIL: Expected ADD1 state after run, got state=%0d", $time, dut.state);
        $fatal(1);
      end
      
      // Wait for completion
      repeat(WAIT_RUN) @(posedge clk);
      
      // Should be back in IDLE
      if (dut.state !== dut.IDLE) begin
        $error("[%0t] FAIL: Expected IDLE state after completion, got state=%0d", $time, dut.state);
        $fatal(1);
      end
      
      // Check result: 3 * 2 = 6
      check_product(8'sd2, 8'sd3, "state_test");
      
      $display("[%0t] PASS state machine test", $time);
    end
  endtask

  // ----------- Test sequence -----------
  initial begin
    integer i;
    integer tmp_mplier;
    integer tmp_mcand;
    logic   signed [7:0] mplier;
    logic   signed [7:0] mcand;

    run = 1'b0;
    reset_load_clear = 1'b0;
    sw_i[7:0] = 8'h00;

    repeat(10) @(posedge clk);

    $display("=== STARTING MULTIPLIER TESTS ===");

    // Test basic functionality with the example from lab document
    $display("\n=== Testing Lab Example: 7 * (-59) ===");
    load_B(-8'sd59);
    run_once(8'sd7);
    check_product(8'sd7, -8'sd59, "lab_example");

    // Test all sign combinations
    $display("\n=== Testing Sign Combinations ===");
    // + * +
    load_B(8'sd59);
    run_once(8'sd7);
    check_product(8'sd7, 8'sd59, " +*+ ");

    // + * -
    load_B(-8'sd59);
    run_once(8'sd7);
    check_product(8'sd7, -8'sd59, " +*- ");

    // - * +
    load_B(8'sd59);
    run_once(-8'sd7);
    check_product(-8'sd7, 8'sd59, " -*-+ ");

    // - * -
    load_B(-8'sd59);
    run_once(-8'sd7);
    check_product(-8'sd7, -8'sd59, " -*- ");

    // Test edge cases
    $display("\n=== Testing Edge Cases ===");
    
    // Zero tests
    load_B(8'sd0);
    run_once(8'sd5);
    check_product(8'sd5, 8'sd0, "0_mult");
    
    load_B(8'sd5);
    run_once(8'sd0);
    check_product(8'sd0, 8'sd5, "0_mcand");

    // Powers of 2
    load_B(8'sd1);
    run_once(8'sd64);
    check_product(8'sd64, 8'sd1, "pow2_1");
    
    load_B(8'sd2);
    run_once(8'sd64);
    check_product(8'sd64, 8'sd2, "pow2_2");

    // Maximum values
    load_B(8'sd127);  // Max positive
    run_once(8'sd1);
    check_product(8'sd1, 8'sd127, "max_pos");
    
    load_B(-8'sd128); // Max negative
    run_once(8'sd1);
    check_product(8'sd1, -8'sd128, "max_neg");

    // State machine test
    $display("\n=== Testing State Machine ===");
    test_state_machine();

    // Hold-run test
    $display("\n=== Testing Held Run Button ===");
    load_B(8'sd12);
    hold_run_and_verify_one_exec(8'sd5, 8'sd12);

    // Consecutive runs (-1)
    $display("\n=== Testing Consecutive Runs ===");
    consecutive_minus_ones(4);

    // Random spot checks
    $display("\n=== Random Tests ===");
    for (i = 0; i < 10; i = i + 1) begin
      tmp_mplier = $urandom_range(-128,127);
      tmp_mcand  = $urandom_range(-128,127);
      mplier     = tmp_mplier[7:0];
      mcand      = tmp_mcand[7:0];
      load_B(mplier);
      run_once(mcand);
      check_product(mcand, mplier, "random");
    end

    $display("\n=== ALL TESTS PASSED! ===");
    $finish;
  end

  // Monitor for debugging
  initial begin
    $display("Time\tState\t\tX\tA\t\tB\t\tM\tSW");
    $display("----\t-----\t\t-\t--\t\t--\t\t-\t--");
  end
  
  always @(posedge clk) begin
    if (dut.state !== dut.IDLE) begin
      $display("%0t\t%s\t%b\t0x%02h(%3d)\t0x%02h(%3d)\t%b\t0x%02h(%3d)", 
               $time, dut.state.name(), dut.xval, dut.aval, $signed(dut.aval), 
               dut.bval, $signed(dut.bval), dut.M, sw_i[7:0], $signed(sw_i[7:0]));
    end
  end

endmodule