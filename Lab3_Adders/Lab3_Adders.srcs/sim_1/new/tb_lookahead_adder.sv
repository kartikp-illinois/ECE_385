`timescale 1ns/1ps
// ==========================================================
// Testbench: tb_lookahead_adder
// - Compares DUT against a behavioral reference model
// - Runs directed edge cases + randomized tests
// - Fails fast with $fatal on first mismatch
// ==========================================================
module tb_lookahead_adder;

  // DUT I/O
  logic [15:0] a, b;
  logic        cin;
  logic [15:0] s_dut;
  logic        cout_dut;

  // Reference model outputs
  logic [15:0] s_ref;
  logic        cout_ref;

  // Error counter
  int unsigned error_count = 0;
  int unsigned test_count  = 0;

  // =========================
  // DUT instantiation
  // =========================
  // Make sure lookahead_adder.sv and four_bit_lookahead.sv are in your fileset.
  lookahead_adder dut (
    .a   (a),
    .b   (b),
    .cin (cin),
    .s   (s_dut),
    .cout(cout_dut)
  );

  // =========================
  // Reference model
  // =========================
  // Pure behavioral: {cout_ref, s_ref} = a + b + cin.
  // Use a 17-bit sum to capture carry-out.
  logic [16:0] sum17;
  always_comb begin
    sum17   = a + b + cin;
    s_ref   = sum17[15:0];
    cout_ref= sum17[16];
  end

  // =========================
  // Check task
  // =========================
  task automatic check(input logic [15:0] ta,
                       input logic [15:0] tb,
                       input logic        tcin,
                       string             tag = "");
    begin
      a   = ta;
      b   = tb;
      cin = tcin;

      // Small settle time for combinational logic
      #1;

      test_count++;

      if ((s_dut !== s_ref) || (cout_dut !== cout_ref)) begin
        error_count++;
        $display("\n[FAIL] %s", (tag == "") ? "(random)" : tag);
        $display("  a    = 0x%04h  b    = 0x%04h  cin  = %0d", a, b, cin);
        $display("  DUT  s=0x%04h cout=%0d", s_dut, cout_dut);
        $display("  REF  s=0x%04h cout=%0d", s_ref, cout_ref);
        // Fail fast: stop at first mismatch (comment out if you want full run)
        $fatal(1, "Mismatch detected. Stopping.");
      end
    end
  endtask

  // =========================
  // Directed tests
  // =========================
  task automatic run_directed();
    begin
      $display("Running directed tests...");
      check(16'h0000, 16'h0000, 1'b0, "Zero+Zero, cin=0");
      check(16'h0000, 16'h0000, 1'b1, "Zero+Zero, cin=1");

      check(16'h0001, 16'h0001, 1'b0, "1+1, cin=0");
      check(16'h0001, 16'h0001, 1'b1, "1+1, cin=1");

      check(16'hFFFF, 16'h0000, 1'b0, "FFFF+0000, cin=0");
      check(16'hFFFF, 16'h0000, 1'b1, "FFFF+0000, cin=1");

      check(16'hFFFF, 16'h0001, 1'b0, "FFFF+0001, cin=0");
      check(16'hFFFF, 16'h0001, 1'b1, "FFFF+0001, cin=1");

      check(16'h7FFF, 16'h0001, 1'b0, "7FFF+0001, cin=0");
      check(16'h8000, 16'h8000, 1'b0, "8000+8000, cin=0");

      // Random spot checks of group boundaries
      check(16'h000F, 16'h0001, 1'b0, "lower nibble carry");
      check(16'h00FF, 16'h0001, 1'b0, "byte carry");
      check(16'h0FFF, 16'h0001, 1'b0, "12-bit carry");
      check(16'hF000, 16'h1000, 1'b0, "upper nibble no carry out");
      check(16'hF000, 16'h1000, 1'b1, "upper nibble with cin");
    end
  endtask

  // =========================
  // Random tests
  // =========================
  task automatic run_random(int unsigned N = 10000);
    begin
      $display("Running %0d random tests...", N);
      for (int i = 0; i < N; i++) begin
        logic [15:0] ra = $urandom();
        logic [15:0] rb = $urandom();
        logic        rc = $urandom_range(0,1);
        check(ra, rb, rc);
      end
    end
  endtask

  // =========================
  // Test sequence
  // =========================
  initial begin
    $display("==================================================");
    $display(" tb_lookahead_adder: starting");
    $display("==================================================");

    // Initialize inputs
    a   = '0; b = '0; cin = 1'b0;
    #1;

    run_directed();
    run_random(10000);

    $display("--------------------------------------------------");
    $display(" All tests PASSED. Total vectors: %0d, Errors: %0d", test_count, error_count);
    $display("--------------------------------------------------");
    $finish;
  end

endmodule