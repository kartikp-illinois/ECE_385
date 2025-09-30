module xab_mult_complete (
    input  logic Clk,
    input  logic Reset_Load_Clear, 
    input  logic Run,             
    input  logic [7:0] SW,       
    output logic [7:0] Aval,   
    output logic [7:0] Bval,  
    output logic Xval,    
    output logic [3:0] hex_gridA,
    output logic [7:0] hex_segA  
);

    logic [16:0] xab_internal;
    logic busy, done;

    xab_mult_fsm mult_core (
        .clk(Clk),
        .rst(Reset_Load_Clear),
        .run(Run),
        .s(SW),
        .xab(xab_internal),
        .busy(busy),
        .done(done)
    );

    assign Xval = xab_internal[16]; //X 
    assign Aval = xab_internal[15:8]; //A
    assign Bval = xab_internal[7:0]; //B

    logic [3:0] hex_digits [4];
    assign hex_digits[0] = xab_internal[15:12]; //A upper 
    assign hex_digits[1] = xab_internal[11:8]; //A lower   
    assign hex_digits[2] = xab_internal[7:4]; //B upper 
    assign hex_digits[3] = xab_internal[3:0]; //B lower
    
    hex_driver hex_display (
        .clk(Clk),
        .reset(Reset_Load_Clear),
        .in(hex_digits),
        .hex_seg(hex_segA),
        .hex_grid(hex_gridA)
    );

endmodule