`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 10:27:36 PM
// Design Name: 
// Module Name: multiplier_top
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
`timescale 1ns / 1ps

module multiplier_top (
  input  logic        clk,           
  input  logic        reset_load_clear,
  input  logic        run,         
  input  logic [15:0] sw_i,

  output logic [3:0]  hex_grid,    
  output logic [7:0]  hex_seg,     
  output logic [7:0]  aval,
  output logic [7:0]  bval,         
  output logic        xval          
);
  logic [7:0] sw = sw_i[7:0];
  
  logic reset_db, run_db;
  logic reset_pulse, run_pulse;

  sync_debounce u_db_rst (.clk(clk), .d(reset_load_clear), .q(reset_db));
  sync_debounce u_db_run (.clk(clk), .d(run), .q(run_db));

  negedge_detector u_ne_rst (.clk(clk), .in(~reset_db), .out(reset_pulse));
  negedge_detector u_ne_run (.clk(clk), .in(~run_db), .out(run_pulse));

  // State definitions
  typedef enum logic [4:0] {
    IDLE,
    ADD1, SHIFT1, ADD2, SHIFT2, ADD3, SHIFT3, ADD4, SHIFT4,
    ADD5, SHIFT5, ADD6, SHIFT6, ADD7, SHIFT7, ADD8, SHIFT8
  } state_t;

  state_t state, nxt;

  // 17-bit signed datapath {X(1),A(8),B(8)}
  logic signed [16:0] XAB;
  wire X  = XAB[16];
  wire [7:0] A = XAB[15:8];
  wire [7:0] B = XAB[7:0];
  wire M = XAB[0];

  // 9-bit add/sub
  logic [8:0] a9 = {X, A};
  logic [8:0] s9 = {sw[7], sw[7:0]};
  logic [8:0] sum9;
  logic cout9;
  logic use_s, do_sub;

  addsub9 u_as9 (
    .a(a9),
    .b(use_s ? s9 : 9'h000),
    .sub(do_sub),
    .sum(sum9),
    .cout(cout9)
  );

  // STATE REGISTER ONLY - No XAB assignments here
  always_ff @(posedge clk) begin
    if (reset_pulse) begin
        state <= IDLE;
    end else begin
        state <= nxt;
    end
  end

  // DATAPATH ONLY - Separate always block for XAB
  always_ff @(posedge clk) begin
    if (reset_pulse) begin
        XAB <= {1'b0, 8'h00, sw};
    end else begin
        case (state)
            IDLE: begin
                if (nxt == ADD1) begin
                    XAB[16:8] <= 9'h000;  // Clear X&A when starting
                end
            end
            
            ADD1, ADD2, ADD3, ADD4, ADD5, ADD6, ADD7, ADD8: begin
                XAB[16:8] <= sum9;  // Update X&A from adder
            end
            
            SHIFT1, SHIFT2, SHIFT3, SHIFT4, SHIFT5, SHIFT6, SHIFT7, SHIFT8: begin
                XAB <= {XAB[16], XAB[16], XAB[15:9], XAB[8], XAB[7:1]};
            end
            
            default: begin
                // XAB maintains current value
            end
        endcase
    end
  end

  // State transition functions
  function automatic state_t next_of_add(input state_t s);
    case (s)
      ADD1: return SHIFT1; ADD2: return SHIFT2; ADD3: return SHIFT3; ADD4: return SHIFT4;
      ADD5: return SHIFT5; ADD6: return SHIFT6; ADD7: return SHIFT7; ADD8: return SHIFT8;
      default: return IDLE;
    endcase
  endfunction

  function automatic state_t next_of_shift(input state_t s);
    case (s)
      SHIFT1: return ADD2; SHIFT2: return ADD3; SHIFT3: return ADD4; SHIFT4: return ADD5;
      SHIFT5: return ADD6; SHIFT6: return ADD7; SHIFT7: return ADD8; SHIFT8: return IDLE;
      default: return IDLE;
    endcase
  endfunction

  // Next-state logic (combinational)
  always_comb begin
    nxt = state;
    use_s = 1'b0;
    do_sub = 1'b0;

    case (state)
      IDLE: begin
        if (run_pulse) nxt = ADD1;
      end

      ADD1, ADD2, ADD3, ADD4, ADD5, ADD6, ADD7: begin
        use_s = M;
        nxt = next_of_add(state);
      end

      ADD8: begin
        use_s = M;
        do_sub = M;
        nxt = next_of_add(state);
      end

      SHIFT1, SHIFT2, SHIFT3, SHIFT4, SHIFT5, SHIFT6, SHIFT7: 
        nxt = next_of_shift(state);
        
      SHIFT8: 
        nxt = IDLE;
        
      default: nxt = IDLE;
    endcase
  end

  // Outputs
  assign aval = A;
  assign bval = B; 
  assign xval = X;

  // HEX display
  logic [3:0] hex_in [0:3];
  wire [15:0] prod16 = {A, B};
  
  assign hex_in[0] = prod16[3:0];
  assign hex_in[1] = prod16[7:4];
  assign hex_in[2] = prod16[11:8];
  assign hex_in[3] = prod16[15:12];

  hex_driver u_hex (
    .clk(clk),
    .reset(reset_db),
    .in(hex_in),
    .hex_seg(hex_seg),
    .hex_grid(hex_grid)
  );

endmodule