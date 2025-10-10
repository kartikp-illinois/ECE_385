//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//    Revised 12-29-2023
//    Revised 09-25-2024
//------------------------------------------------------------------------------

module cpu (
    input   logic        clk,
    input   logic        reset,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,
    output  logic [15:0] mem_wdata,
    output  logic [15:0] mem_addr,
    output  logic        mem_mem_ena,
    output  logic        mem_wr_ena
);


// Internal connections, follow the datapath block diagram and add the additional needed signals
logic		ld_mar;
logic		ld_mdr;
logic		ld_ir;
logic		ld_pc;
logic		ld_reg;
logic		ld_cc;
logic		ld_led;

logic		gate_pc;
logic		gate_mdr;
logic		gate_marmux;
logic		gate_alu;

logic [1:0]	pcmux;
logic		drmux;
logic		sr1mux;
logic		sr2mux;
logic [1:0]	aluk;
logic		addr1mux;
logic [1:0]	addr2mux;
logic		mioen;


logic           multiDriveErr;
logic [15:0]    bus;
logic [15:0]    pc_d;
logic [15:0]    pcmux_d;
logic [15:0]    pcinc_d;
logic [15:0]    marmux_d;
logic [2:0]     drmux_d;
logic [2:0]     sr2addr_d; // = irsmth
logic [2:0]     sr1addr_d;
logic [15:0]    sr2_d;
logic [15:0]    sr1_d;
logic [15:0]    sr2mux_d;
logic [15:0]    alu_d;
logic [2:0]     nzp_d;
//logic [11:0]    imms_d;
logic [15:0]    sext11_d;
logic [15:0]    sext9_d;
logic [15:0]    sext6_d;
logic [15:0]    sext5_d;
logic [15:0]    addr2mux_d;
logic [15:0]    addr1mux_d;
logic [15:0]    ir_d;
logic [15:0]    mdr_d;
logic [15:0]    mar_d;
logic [15:0]    miomux_d;


assign mem_addr = mar_d;
assign mem_wdata = mdr_d;
assign sr2addr_d = ir_d[2:0];

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly
// control cpu_control (
//     .*
// );

control control_inst (
	.clk(clk),
	.reset(reset),
	
	.ir(ir_d),
	//.ben(ben),
    .nzp(nzp_d),
	
	.continue_i(continue_i),
	.run_i(run_i),
	
	.ld_mar(ld_mar),
	.ld_mdr(ld_mdr),
	.ld_ir(ld_ir),
	.ld_pc(ld_pc),
	.ld_reg(ld_reg),
	.ld_cc(ld_cc),
	.ld_led(ld_led),
	
	.gate_pc(gate_pc),
	.gate_mdr(gate_mdr),
	.gate_marmux(gate_marmux),
	.gate_alu(gate_alu),
	
	.pcmux(pcmux),
	.drmux(drmux),
	.sr1mux(sr1mux),
	.sr2mux(sr2mux),
	.aluk(aluk),
	.addr1mux(addr1mux),
	.addr2mux(addr2mux),
	.mioen(mioen),
	
	.mem_mem_ena(mem_mem_ena),
	.mem_wr_ena(mem_wr_ena)
);
/////////////
//assign led_o = ir_d;
assign hex_display_debug = ir_d;
////////////////

//bus instantiation

bus bus_inst (
	.gate_marmux(gate_marmux),
	.marmux(marmux_d),
	.gate_pc(gate_pc),
	.pc(pc_d),
	.gate_alu(gate_alu),
	.alu(alu_d),
	.gate_mdr(gate_mdr),
	.mdr(mdr_d),
	.data(bus),
	.multiDriveErr(multiDriveErr)
);

//reg instantiaitons 
load_reg #(.DATA_WIDTH(16)) led_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_led),
    .data_i(ir_d), 

    .data_q(led_o)
);


load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc),
    .data_i(pcmux_d), //should be output of pcmux

    .data_q(pc_d)
);

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (bus),

    .data_q (ir_d)
);

load_reg #(.DATA_WIDTH(16)) mar_reg (
    .clk    (clk),
    .reset  (reset),
    .load   (ld_mar),
    .data_i (bus),
    .data_q (mar_d)
);

load_reg #(.DATA_WIDTH(16)) mdr_reg (
    .clk    (clk),
    .reset  (reset),
    .load   (ld_mdr),
    .data_i (miomux_d), //should be output of mio mux
    .data_q (mdr_d)
);

//regfile stuff
drMux drmux_inst(
    .ir11_9(ir_d[11:9]),
    .sel(drmux),
    .dr(drmux_d)
);
sr1Mux sr1Mux_inst (
	.ir11_9(ir_d[11:9]),
	.ir8_6(ir_d[8:6]),
	.sel(sr1mux),
	.dout(sr1addr_d)
);
regFile regFile_inst (
	.clk(clk),
	.rst(reset),
	.ld_reg(ld_reg),
	.dr(drmux_d),
	.din(bus),
	.sr1_addr(sr1addr_d),
	.sr2_addr(sr2addr_d),
	.sr1(sr1_d),
	.sr2(sr2_d)
);
sr2DMux sr2DMux_inst (
	.sr2(sr2_d),
	.imm(sext5_d),
	.sel(sr2mux),
	.dout(sr2mux_d)
);


//alu
alu alu_inst (
	.a(sr1_d),
	.b(sr2mux_d),
	.aluOp(aluk),
	.dout(alu_d)
);

//cc nzp stuff
controlCodes controlCodes_inst (
	.clk(clk),
	.rst(reset),
	.ld(ld_cc),
	.bus(bus),
	.nzp(nzp_d)
);


//sext stuff
sext #(.WIDTH(11)) sext11_inst (
	.din(ir_d[10:0]),
	.dout(sext11_d)
);

sext #(.WIDTH(9)) sext9_inst (
	.din(ir_d[8:0]),
	.dout(sext9_d)
);

sext #(.WIDTH(6)) sext6_inst (
	.din(ir_d[5:0]),
	.dout(sext6_d)
);

sext #(.WIDTH(5)) sext5_inst (
	.din(ir_d[4:0]),
	.dout(sext5_d)
);


//muxs to pcadder
addr2Mux addr2Mux_inst (
	.sext11(sext11_d),
	.sext9(sext9_d),
	.sext6(sext6_d),
	.sel(addr2mux),
	.dout(addr2mux_d)
);

addr1Mux addr1Mux_inst (
	.fromPC(pc_d),
	.fromSr1(sr1_d),
	.sel(addr1mux),
	.dout(addr1mux_d)
);

adder adder_inst (
	.a(addr2mux_d),
	.b(addr1mux_d),
	.dout(marmux_d)
);

pcmux pcmux_inst (
	.fromBus(bus),
	.fromAdder(marmux_d),
	.fromPcInc(pcinc_d),
	.sel(pcmux),
	.dout(pcmux_d)
);

pcInc pcInc_inst (
	.pcIn(pc_d),
	.pcOut(pcinc_d)
);


//mmio stuff
mioMux mioMux_inst (
	.fromBus(bus),
	.rdata(mem_rdata),
	.sel(mioen),
	.dout(miomux_d)
);

// //MMIO stuff DID THIS AT THE TOP OF THE FILE ALREADY
// // mem_wdata,
// //mem_addr,
// //mem_mem_ena, //handled from control
// //mem_wr_ena    //handled from control 
// always_comb begin
//     mem_wdata = mdr_d;
//     mem_addr = mar_d;
// end

endmodule




module mioMux(
    input logic [15:0] fromBus,
    input logic [15:0] rdata,
    input logic sel,
    output logic [15:0] dout
);
    assign dout = sel ? rdata : fromBus;
endmodule

module adder(
    input logic [15:0] a,
    input logic [15:0] b,
    output logic [15:0] dout
);
    assign dout = a+b;
endmodule

module addr1Mux(
    input logic [15:0] fromPC,
    input logic [15:0] fromSr1,
    input logic sel,
    output logic [15:0] dout
);
    assign dout = sel ? fromSr1 : fromPC;
endmodule

module addr2Mux(
    input logic [15:0] sext11,
    input logic [15:0] sext9,
    input logic [15:0] sext6,
    //last one is 0
    input logic [1:0] sel,
    output logic [15:0] dout
);
    always_comb begin
        case(sel)
            2'b00 : dout = sext11;
            2'b01 : dout = sext9;
            2'b10 : dout = sext6;
            2'b11 : dout = 16'h0000;
        endcase
    end
endmodule


module sext #(
    parameter WIDTH = 6//defualt widht
)(
    input logic [WIDTH-1:0] din,
    output logic [15:0] dout
);
    always_comb begin
        dout = {{(16-WIDTH){din[WIDTH-1]}}, din};
    end
endmodule

module controlCodes(
    input logic clk,
    input logic rst,
    input logic ld,
    input logic [15:0] bus,
    output reg [2:0] nzp
);
    always_ff @(posedge clk) begin
        if (rst) begin
            nzp <= 3'b000;
        end else begin
            if (ld) begin
                nzp <= {bus[15], bus==16'd0, (!bus[15] && bus!=16'd0)};
            end
        end
    end
endmodule

module alu(
    input logic [15:0] a,
    input logic [15:0] b,
    input logic [1:0] aluOp,
    output logic [15:0] dout
);
    always_comb begin
        case(aluOp)
            2'b00 : dout = a+b;//add
            2'b01 : dout = a&b;//and
            2'b10 : dout = ~a;//not
            2'b11 : dout = a;//passA
            default : dout = 16'hDED2;
        endcase
    end
endmodule

module sr2DMux(
    input logic [15:0] sr2,
    input logic [15:0] imm,
    input logic sel,
    output logic [15:0] dout
);
    assign dout = sel ? imm : sr2;
endmodule

module sr1Mux(
    input logic [2:0] ir11_9,
    input logic [2:0] ir8_6,
    input logic sel,
    output logic [2:0] dout
);
    assign dout = sel ? ir8_6 : ir11_9;
endmodule

module regFile(
    input logic clk,
    input logic rst,
    input logic ld_reg,
    input logic [2:0] dr,
    input logic [15:0] din,
    input logic [2:0] sr1_addr,
    input logic [2:0] sr2_addr,
    output logic [15:0] sr1,
    output logic [15:0] sr2
);
    logic [15:0] rf [8];
    logic [15:0] rst_val = 16'hxxxx;
    always_ff @(posedge clk) begin
        if (rst) begin
            rf[0] <= rst_val;
            rf[1] <= rst_val;
            rf[2] <= rst_val;
            rf[3] <= rst_val;
            rf[4] <= rst_val;
            rf[5] <= rst_val;
            rf[6] <= rst_val;
            rf[7] <= rst_val;
        end else begin
            if (ld_reg) begin
                rf[dr] <= din;
            end
        end
    end
    always_comb begin
        sr1 = rf[sr1_addr];
        sr2 = rf[sr2_addr];
    end
endmodule

module drMux(
    input logic [2:0] ir11_9,
    input logic sel,
    output logic [2:0] dr
);
    assign dr = sel ? 3'b111 : ir11_9;
endmodule

module pcInc(
    input logic [15:0] pcIn,
    output logic [15:0] pcOut
);
    assign pcOut = pcIn + 16'd1;
endmodule

module pcmux(
    input logic [15:0] fromBus,
    input logic [15:0] fromAdder,
    input logic [15:0] fromPcInc,
    input logic [1:0] sel,
    output logic [15:0] dout
);
    always_comb begin
        case(sel)
            2'b00 : dout = fromBus;
            2'b01 : dout = fromAdder;
            2'b10 : dout = fromPcInc;
            default : dout = 16'hDED1;
        endcase
    end
endmodule

module bus(
    input logic gate_marmux,
    input logic [15:0] marmux,
    input logic gate_pc,
    input logic [15:0] pc,
    input logic gate_alu,
    input logic [15:0] alu,
    input logic gate_mdr,
    input logic [15:0] mdr,
    output logic [15:0] data,
    output logic multiDriveErr
);  
    logic [1:0] ctr;
    assign multiDriveErr = (ctr > 1);
    always_comb begin
        ctr = gate_marmux + gate_pc + gate_alu + gate_mdr;
        case({gate_marmux, gate_pc, gate_alu, gate_mdr})
            4'b1000 : data = marmux;
            4'b0100 : data = pc;
            4'b0010 : data = alu;
            4'b0001 : data = mdr;
            default : data = 16'hDED0;
        endcase
    end
endmodule