//Debouncer circuit inspired by https://forum.digikey.com/t/debounce-logic-circuit-vhdl/12573
//Also serves as a synchronizer for pushbutton and switch (asynchronous) inputs
//Notice that this circuit behaves differently under simulation as it does when synthesized
//so that simulation times are not unnecessarily long waiting for the debouncer circuits

`ifdef SYNTHESIS
localparam COUNTER_WIDTH = 15;
`else
localparam COUNTER_WIDTH = 1;
`endif

module sync_debounce (
  input  logic clk,
  input  logic d,
  output logic q
);
  logic ff1, ff2; 
  logic [COUNTER_WIDTH:0] counter; 
  always_ff @(posedge clk) begin
    // 2-FF sync
    ff1 <= d;
    ff2 <= ff1;

    // debounce: require stable input for 2^COUNTER_WIDTH clocks
    if (~(ff1 ^ ff2)) begin
      if (~counter[COUNTER_WIDTH]) begin
        counter <= counter + 1'b1;
      end else begin
        q <= ff2;
      end
    end else begin
      counter <= '0;
    end
  end
endmodule
