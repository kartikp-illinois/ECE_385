// Shift-Add Multiplier with signed correction on final cycle.
// XAB[16] = X (1 bit), XAB[15:8] = A (8 bits), XAB[7:0] = B (8 bits)
//
// Buttons assumed asynchronous to clk; simple 2FF sync for button release edge.
// Reset is synchronous: when rst button is pressed and released, XA<=0 and B<=S.
//
// Add-then-Shift repeated 8 times:
//  - At each ADD: {X,A} (9-bit signed) += op, where
//      op =   +S if current LSB of B is 1
//            0   if current LSB of B is 0
//      BUT on the 8th add (count==7), if original B[7]==1 then op = -S
//        (final two's-complement correction for negative multiplier).
//  - Store the 9-bit sum back into {X,A} (ignore any carry beyond bit[8]).
//  - SHIFT: arithmetic right shift of the full 17-bit XAB by 1
//           (MSB X is preserved/replicated).

module xab_mult_fsm (
  input  logic clk,
  input  logic rst,       
  input  logic run,       
  input  logic [7:0] s,         
  output logic [16:0] xab,     
  output logic busy,
  output logic done
);

  logic [8:0] addend_input;
  logic subtract_mode;
  logic [8:0] b_complement;
  logic rst_db, run_db;
  logic run_released, rst_released;

  sync_debounce u_db_rst (.clk(clk), .d(rst), .q(rst_db));
  sync_debounce u_db_run (.clk(clk), .d(run), .q(run_db));
  
  //detect button release
  negedge_detector u_run_release (.clk(clk), .in(run_db), .out(run_released));
  negedge_detector u_rst_release (.clk(clk), .in(rst_db), .out(rst_released));

  logic [8:0] xa_q, xa_d;
  logic xa_load;

  logic [7:0] b_q, b_d;
  logic b_load;

  ripple_carry_adder adder_inst (
        .a(xa_signed),
        .b(b_complement), 
        .cin(subtract_mode), 
        .sum(sum9),
        .cout()
    );
    
  load_reg #(.DATA_WIDTH(9)) u_xa (
    .clk(clk), .reset(1'b0), .load(xa_load), .data_i(xa_d), .data_q(xa_q)
  );

  load_reg #(.DATA_WIDTH(8)) u_b (
    .clk(clk), .reset(1'b0), .load(b_load), .data_i(b_d), .data_q(b_q)
  );

  assign xab = {xa_q, b_q};

  typedef enum logic [1:0] {IDLE, ADD, SHIFT, FINISH} state_t;
  state_t state, state_n;

  logic [2:0] count;
  logic [7:0] s_stored;
  logic b_msb_orig;

  //signed add path
  logic signed [8:0] xa_signed, s_signed, addend, sum9;

  always_comb begin
    state_n = state;
    xa_load = 1'b0;
    b_load = 1'b0;
    xa_d = xa_q;
    b_d = b_q;

    //sign extend
    xa_signed = $signed(xa_q);
    s_signed  = $signed({s_stored[7], s_stored});
    subtract_mode = (count == 3'd7 && b_msb_orig);

    if (count == 3'd7 && b_msb_orig) begin
        //final cycle with negative B: need to subtract S
        addend_input = s_signed;
    end else if (b_q[0]) begin
        //normal cycle with B[0]=1: add S  
        addend_input = s_signed;
    end else begin
        //B[0]=0: add zero
        addend_input = 9'b0;
    end

    b_complement = subtract_mode ? ~addend_input : addend_input;
    
    

    unique case (state)
      IDLE: begin
        //reset triggered: load S into B, clear XA
        if (rst_released) begin
          xa_load = 1'b1;
          xa_d = 9'b0;
          b_load = 1'b1;
          b_d = s;
        end
        //run triggered: start multiplication
        else if (run_released) begin
          state_n = ADD;
        end
      end
      
      ADD: begin
        //perform add
        xa_load = 1'b1;
        xa_d = sum9;
        state_n = SHIFT;
      end
      
      SHIFT: begin
        //arithmetic right shift
        xa_load = 1'b1;
        b_load = 1'b1;
        xa_d = {xa_q[8], xa_q[8:1]};
        b_d = {xa_q[0], b_q[7:1]};
        state_n = (count == 3'd7) ? FINISH : ADD;
      end
      
      FINISH: begin
        state_n = IDLE;
      end
    endcase
  end

  always_ff @(posedge clk) begin
    state <= state_n;

    //update busy flag state controller
    unique case (state_n)
      IDLE:   begin busy <= 1'b0; done <= 1'b0; end
      ADD,
      SHIFT:  begin busy <= 1'b1; done <= 1'b0; end
      FINISH: begin busy <= 1'b0; done <= 1'b1; end
    endcase

    //counter management
    if (state == IDLE && run_released) begin
      count <= 3'd0;
      s_stored <= s; //capture original s
      b_msb_orig <= b_q[7]; //capture original sign bit of b
    end else if (state == SHIFT && count != 7) begin
      count <= count + 3'd1;
    end
  end

endmodule