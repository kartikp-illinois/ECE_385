// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct 19 19:07:32 2025
// Host        : Kartik-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18960)
`pragma protect data_block
Eqtuw3djJH3PqN5o+YrO6/LDyzte8qx3K/SV4jjzgnR7r3rYwAPUGCEi6s/8+ZVgfucLMe+pys48
8PxOfYpWqGXUq0hlJXveAoQTBHIuCcq6dFRLXf28GATjNMjxtYB3YcVD3l4NiGbh02LmG9lsc+4r
h1HeC+p1br0cG7yJ37qXu4zbkE87tyoJgi42vqznsufBD7uqcXybzfCWhVFROq6kzmo/pnIqrn9/
ra9L8aGzmd5fiEj0jxV9W31qR8Azx7Y4im/CxSUE+a67hO/I1TT4KpBnPK8YdiROLV4ELvaXbhKa
PiZOkckuY0Wl8etIncYK7S5lDF0bcpxLOFSclNVAbRkFupZ1Yi83F/imfGlhcoNHPhShfSFMj9xC
SeNcNOOFaKzMG5ZmsTA1Q8GHNtz4K2tQsesbOe+CGFtFSDNPqCyir2svAZ3PHGoJ0u2A75D9C2PH
pfvjuA2jsWmM5sj4folURkRXq75EIJuWUFcYvAdHFx1IyPNcVwBS6Gfyp8Lyj0asWsnmWzZ3KfYC
ceCLjjyjwVe4D3GgsS50jdh5a19RwZcYcxMSrmPJajDm9Zz9NoQ5xYZCExRWk8D9ghkSE09m7nnA
URHISBFk6jfwZ0F59pyoXUq8yMoJhl1BfBTrs6kwhXlCM2+qoAPgAy06QpnAK6d3KeMjiMjTVgHK
YJABs93mgdXLJMHzfygqlEtOFtzu7u4IkYJiT87wkiTU1cpsvnJGfETAV4j5F4wjV13XKN5A6ARU
GonMEkLU5Rk1XZESbpj+U/PmorV0L4ndd4fubd8U7H/KHogEMl/PgjMV5fUKhrbJnt5fRbNHROFi
wmip44MOKAhFG5kuyexvwXCWos6d7ka2avDFOMfQKaZiHTMNZKzRbguqWcfL+FYSXeA9CdY7Z/a3
+EOASopKjtf7t42DC/afnXBVdynq80sk6Q+Hw9Kd33GohArNdg3v0isTAqyVlMFiNOW6eM/S5piF
r0ZJmPTd3/Z7MY+S6ld0JXeosjRneIs3Kq8fH1KkWnjm1KolIlE9WNOEtOZnWiBTO1g7k8XEi6ZM
T51222GsUas8jpX/6T008rlTkjGltSYc9iuPgmPpVoZ4Rbj4xqud0r6xPSbcvDQMOnb9+4pP/M+d
rtz4Mkc4Aj/UmRACXjMjm+PWQHdXAnXBgFFbOBJVyFsMQOLThNK9NmEgzKiO2wqIGqvIVtXY/C3Y
v5XNDFjNkyym+N0lI2u85Ofx2UKVKzCnhNp7IX4hxvMaZ6KA20aupoQ5PZDbZrVOpV9xW7K3/pKm
JM0CO9eE8oKN/HM+cQGq2ACNF+xJgKXI9LEP/CFS7DiwgP+hV483jdoumW7upXzLj4wpQIX32jOk
X08qm4qQEIzUCBxGEEktdf803oYaeZgAWGaK9cZwilCpxhqVmwbpFdHZMchq7sNa0VPtfQ2wdgDW
zDVuegIag81daZqb4ALmfrdyu/fINjuy+0Hl+vHg426F3YO9IizBssZjPpYKsYvlSlUE5OH2AFiH
DwCIxF2h6o8tjgweoQFHboW/E2nI6T3/voc+0DHnuQxNui5PnYZu00fLfCRy0uPezlKB0pUE3HzS
E8M77fQX2Y4T/eY1mPxy+eNTv2bJULLc1AQ/LfrRBWF175Xx++bWxhfvYuvk311Mo4DUMsbZMCj3
CHCpjS+Z+EA1axcMBv7CVmSH7WGU9nrX/1T0AMUuzWxz+iF8MyhEK8OD3u2ExnY/6oDb3Jby8lwN
+oR9ggOOlYDvJDuNUDUhDbJMjLHPwd8yT3HOw4R66KQch6b/XzL2uIuJJPPt2uQ9qz+JOJgb1NTI
hJmWp4khp6n4ROFrsr8xMGn9aKtTm2bs9DE3sTSZ986fMne36mrM9gzXEsSiYctoVyX8xo4Zn/4r
6Iq8cOfZCdtQVc5XrC8BAUX5Z/jnBePBfLfXzOyIctEmaVk+Pp/cREqnmPPTb58wUcg8Qx6L+PCS
o9hYnj2rEZPMysVHSTeAqh0SjW3Ayw6L1ihj9nrP7YN21E/LK7PIA4EG6PLgJ6K1rwbSIV0L/0px
QlB7u5YK5F9YMoq3wOt2z7OGAcBwBm222x9iV/j9WlsNhrPqodksOcZjYTd2z6eTAMCqeQRDkzu/
ZVhzn1VZTSHXleL7lW7LxHxdr7b7eM3wh4f8dT7ErHJlwGob8lJXD5n3rRqTIpFb1zLybd9rqR2y
imUlMoESKQl7sOrtVibJH2XIxsQe+LMD1KiFnbaAFpOpcfG29C3+601TIRz6h23QlOWc+fIEtz3k
QsuZvDHbNI2tDQzB78YNfz0KqWmt5d+ltG9pnnfQiAI1OoDYreAB7P0SQMjaaNou4PgrpPMg2qCU
qGzHwxG0EieCdOipGE8wzQHectWdPd/FpXZr3pI7EouY0ew376GgyXoeUcM0vb+mxLGAKM8d0eJd
TX9Cjl5GxuwLA/ptmBlImh7hhb7y1+PIWD8guZJQ5BA2/pytXy28nPUziFmNGnmFEpAYEuJlL7jT
4CtMWxntS4MdTqXGhz0hBTu0be2tm0DQpLXNyY9PFzSRwSDjPUnvbfvD9iUoIEyQkAteobSgvzrB
+jNBQP/1Udyd94MFULZ9nczQ4twXI80QRcZmTW69/Nz3IRwNDeC9gwknOTkjq1u/ckxrVStrf0VO
PXuddNZKXKECYu+dtXk6HOyXPYGpqVRlsqoka12hRQtUUsGp+XVpmJ73lM9hv7ZCTEFrm1s8ov9X
qOROnxK8ze4fnOmLebkZTnWQSOqv0Bz38tdHhJ3Rd/X6EH5MarhxkJOaFnvBN685NupgqvCRbwpf
sj8DuGu+FSMpgvI/EFKBqcxWbvvDdttkXf0jN3R5OkCfsavUgoX2GMnbf9X6vwaaRLN9alr5vgyU
Kc17PnrdNzvZBvbYJyGQvWam3b+wNjvimyC2YjlqZrKnD5YkWwEkuHSMlTE+B+gK0PKbP4Q22yJl
qwCUxmEdVSM4OPTQtwwUVR6FJZFYbrK+hMiIvFd0M/fWdqRzN3+Mb3+/2kaBY5F/TJQ1YE3ysthj
xyl17j2Qh0fVT+Wje3AXuKRIkNqlcvKmqWn37EodFEccmFn4pvofw6uhkzLw/lWAaCpROCbPfC2y
LpmRlXZUqQCIDlMKKlQKgL+gk4brgTTMODuRaKsUX71g90ajX4yZLNTZuu/tgs46g0/CcNL38Hu+
087iVhgolVudfjVWZWC2GV71dbboJZ6I05preHDr1R5jLyIq1RB/H2dtazS4Upjut7ixMUY5vwAO
Xw1GM72A22SFxcokXs7PJRbrZMOF36FKuI32UeGgnL3SpY0rLPTGbRDCjuBee6lSpQ99mMxqzlOS
TaFajW9qtJnngpYPXV7jKcLa7SzZBHYwF9fvTUXO33Q/PWAZvO7BtWV+9gGBnkPfalA5S69UNobf
W1mGkpJXCS9WV5gUTSPT/OW6FZ/gzEraT5AylfxzfXO8/VUpJmtTPOcrYHXQVGV5jErCbdEq+/uk
3Ebwh/i6CyPIeHn2tmFPvHv+LLdJZhMC77arF2Qhxm5sOJ9gh+LXIKgkG4nzq8SoWDELmpQtDVme
8AKB1iX35PbO3XlNcOXKxFCujdL9ZjAPvKJimBmjNidIZRVrlHxic0hPaPOMRC2GP2gHljEg1YJ1
RY6A643WKBuSRSoRFIa5K1umqwWy8w/Q9/lH9BnGqRCuwHPXUHizt5qO3dexyj3mz3C2zYn6halH
3cySlfEBpY853Ntt0HTR6hko/0I2TyWmCcFyQ0p4u0ncJoND71ylCBUde/nPRqJ2q0MQxhnEd6a0
x+MleQUzsSdsoN6KiOREqDDvJh8RZBSTyGOj60xl3v1fnWkRxPp5iPmqS+1LG2ck7761CcdOSpo3
B9LbPMqveAD0HtjBTOZFqA13UjB526n304RyvEQ7us6uAUTQRnRHWWjlS/pHNVqtm+9wc8bYzFRX
vR7WVOj4Vfh7+bNmohPvbG/EAphlgPDsUmGW2C9Jc/vj2P+1iE/wV1mhSAst4dKax1oB+GCtjINp
1T/uy6RXiqAxnRC0owH3uMD9YHKfi9qKtpGknAWagOcYPAf7jIclxVhzHJaFbjoedt47aneu8SBz
zamiqHzG4zqAg39HHaaPmjfNlaaDRuf04/7zsam19+b0E/f8HxWg09yWcSXnLZyU+z5P8ueG3p2m
SY+DWogafTJbdbuZyRcWzOYg9shwSDRxBOPvXWtHSXnidyMbJ5etOy91jRAXgzYWfZ8TpZr+051F
4lmUkLLrnyAVg4CczYdarMETdoFXKcVV0REBBSMpivYsvCPiMyuwegncgoaeQcFpAPRZH4EN+MYe
KUH/QqpmtIDGXONmGWiSjGba/VluXKFJjqkb/4Xq5yDHDc9CF/w4Im7luSavv8OwPhv7S0lVSy6s
N4Upokot7793vIoLuSfr+aZHulF/vU3xjFZ6AhI5s1dBJ4CiSQaTPewXj7uZQBb47XW7avBIl67U
TZjpcRUZAioEvb4bWm1srgij1Dz2acTneh47vttK4kzUxK1oVCFxwRHHAy7CQ379KwerI8CNQTKp
QhPo6UskL2jSFKmrAFr7HORuKqV32snG+gaIa2Vk95kx8cRynLi+HIEmrtNMK+1x+DDJXQncRFA8
kQQd/lVPgeOxHo/7ZPmf2uT0c8BX5mRaafCei/cBpvQhZcZ6MciOnywk4ZCOeVmQSkrBlmLNyRdh
4PPPpOsfFUaPSgwph5EauldUzjwpw1GjAsgXXg+Ry5pZRAMcNRg7zQhpnPEqUM3AeuhKex5muTGD
g65rKuk8um9fLFO12VYZtQoXZ77e1PEIILlkFzUE3i4toSYYW2uS27uSmXynfDY+ot/aj2Cdj/VS
hd0UtVNZ+eKhVLRksu1oZQ4V4wIB8G+S8uAqdKcHAvdy/HqQwSWK3eUp0xwGkItxBZXTDZiVQmHa
bMC1KSw3jXoipGOm3FesH9kRaFsAywSG7/AtvI1cz37c7H4w1tGDHvFfneH0HJ8mzyAqijr/IrvL
nUtAQTpVICq8OQIrzgVPMht6opOnRN1oVPqhHYpXoScHoNqIIR/8UFu0EQ584dUidrSIXglL5hq7
bTIk+D36IYmTH4UKE0E9JaVEfRiiAjCSUf3+pQxLVlOKQhEdc/BTjDTlH5tg8PE9ce5/q2nlTXAx
P2muaJpvODF1lf1bbl62J5yh+fDkrRDv9qv+apT2TuovZ9+/LDg96+xj+Y2ABDT6W3aJ6hG/ikHO
H9PfF0WIEBgY+fgjrciHql219ocpVI9WQf5fwcynt1MrO47h8mb/LsnHAazK68/TQnaxefgB2yAC
LaV8rdcZDLSdWgvaBfT9+3gSPeKkbFLUYzRsiYWjNRMHgJtuI6eYfFpdiVxWozJh21mxB0L+85RJ
ZWhH+JvfNwzXz+Y6r3ygVcP1YV89s4JStkwdNm1An+z9fCBHQWfA/qzn5vc06ppEWgJfRt2pkUw/
/lSerLu7MLaWTg2862Mbmcafw/WIF0xtf0MKdZ/2td/ve1LGiNEcZitLgN6sNR93RW0xfzZoGfx9
F2KZ0SRfeFIS2v5qpJjoiMxZkW3b+hYiCeoZzEnPuzbmb45X/yTnIq2URisKPSt/ref1bym7HALF
/8YQp3sVUW8BRnCMV0I8FbGHqW53GBifckY9vfnviKmNk3Dj07LARZZXXd5lgRSofz9mv72M0Y8l
qLrA58UKIbBiWXMQcHQCh7aW4oXf/c80t6lXvCuLn5hsDK8DSdhEHRpRYyPlSj7UQi0gXkNLSebf
4gA/YcLEL8p+wyg26xw7coJ7qF/HcMj90GAp8zKh9F664zQYNJs/URy1T0UyE751nEs5R6vU7BJ9
jY+JpAs+/1ZDkAj5cWH7fH1IYTPsH9EpxTDKhcUeExNfkY238uVISi3SQKNOQedQ3/XKnz0dbvlq
3DDHlqIMtQw0wqDo3BuKbnxgjW9V1y0ei1AkONQsFMaoY7mymNV+ADJEw8uAusSKr/w9gl7RpoQA
1F5DgOumc2RxMRL/EOh6yDL2kz8uSB1HR/J4qV9PZ7AgcIxwb/M2bKFd0tJ6GvxBssZSMJE5Op32
hozbgvGwnMslcRBUDM88qaxc+2H2wL257b+AdtqIKiuUUCUSzcf4VnN4o2wJhmynmsJpysZM/z4x
oExVB9fqMob4XW5WmCqJHQDfuCXEGAzNjvLzO1s1LHszHizBVfVigNKqhxszxODgx6tNHVrtGiwr
yPWXWThCZjUIbR5g05LWLc/3Fx9fJM7nFfMLCfsIobnmq+PlL30zR5xtmk5e36ft44SyRfd9hbaO
sc6FGBQ4TT9NFFTTxuxg9pfwXL0UHPbnuS58/hYc6lj096z4Xei/YtTpu8gnrjIhCYxuqqPaMzpi
D+YQl+qsnCv/UpR/CRK3l5IrGFUHngvLp+Q/MLI78w9J9/COVRkAzlx7vRQ1HcFrmagtvaWDxHgf
hnxf2PJznH0QToAMNDBLJ8MQIdzhbKPoZgF43OqwCh662wgP7TpqebiYzRZuoZ6Pr6yNH+Ok3aL3
69g2YlXAry7y1RVdvgjUFDYT+CkbDq0DF9axtBT7z5J9iQwDd7a0i40aoSUhIcH70sDY8oEhs//+
DEQqYKxAkemVz7o7PEytwp01p7LuarfhIEC+n5UAPgC+y5eBaat/YssBOnbnq7LJ7mDD0PTCQgQi
er9IbLqELQKIiqQgZhmAWKojTWB7F5zQOA0Bl1ltVgGhi3nuCevWeUH/HOP8VImCimkBZoL3Ju6O
SH3htpRlLK626SPJ1zEWFpg9DtpG2R9VPrFcYkUZSHdkiILiYxFjUvPF6NwIKKb0gKFO+3fem1Ke
liC/o88L7RO9XIhZh27z4TgrYe5kloKDEsqLSrJ67FwyMlNS0sTJDcLU1o9YNyxLlADcuSQp+t1O
e6yKFRFTJVeVUm6w7QTQqXhIQQOEchx2dS2vr8obQ6iLBXsTQhC0+VN0ijjsY1jsDyGUSL0FDo0L
ipQhNzh+IqTvHAPvpF6OPdJbNWw54MTik6m2SYcMZLmMvsKpfycSHdvWndaeA74lVY3vEuEtZeu5
ypKMN3+8bu2DiW7pqx9HWpfsc4TJUnQ7LyW9L3GKaFZFYtsOgi6d+GMzIzZxlzBYYvW/PhTGJ5Q6
e9DMvwGzN0BVL9wU9xb7oI6JLphggkYUYdFjyFhgCObffmk+tn2ivNIhhLmVtVmPLfx4Ikt9XMDq
EzuQhs4IHZhhBQoWHQ2RuStXqNXwIsjuHGsp3SUw69XIgYgvwiNhYatRnG2GugnKfS2LLeww7ON9
1G7XguBwi4/xlt5SrEhSz+JAf8c06/BcYvWvZTbDEIbyyCH0nLFjuhsAKDoBexUZ9ls484HspoIy
sHMwAuIp/xS9NyY8zVxw1NZnBV4wQrpbeyOKQC6oxstqfo9UptPJxglnBxCETdg+shco5NCzw36H
6/IS+vzTI5qXucHdZGscs60858QTjcjlfTuWt/HpMkHTfH8Q+iWU7/W5eyAIap6fVBc6764Ls1Ad
UZXgz2Mxoa1e6PBdDleX45yP4FPlKg0cuGWpdQ0uQgEeoKQuqfqxqoe2ygtYuQrjYE5RZLjdbiSe
DNbt6cz3QT+a674wEksEkO8257B723vRPNpBoMjPiLWLP1knv4Q7f+QCVWW7zlL0FIinfP9QNQqb
+c9/V+CV3XycKZvqwe7JXHwFYHn34FncfTDgJjceGnObrtv6p4/EelKKIY+wufzoBuDBybTnqhS4
aqPt09EBs+NZpmTJwFfh3Lp9vnKyyhYoXAk0J8WE7rjXX/4SGtGqo0vKxaQmkKwYbsSKWH/PFUY3
qLzxHUlzROcC+ZOw6SnDbCn4SxOvC4LSiRR8It2FmS7urA379ou79URyUwUxcGMbP2aX5ZI9FFnj
noMO2hT/FLxai/4Of4T2H1ElxqSg8dsMMRq7LwjJEw1rWmeIJkRPFKpPSKCDdCH4jB4GfJod8UqC
z2E6LdFhjAnlnO4XI9irl0TViLeWzCHNL4KhlV9Wv3oZX2avpuxbERR201HsWovUeLDoDtm+yrNY
KJLxaVkmnoBUYiO/iW7/5/8fd+0Kp1u0lRxyhzQBQQkO8Jjm5bqjp61Q52uLACBuS15Vxry7Tv3o
Vp+QWw3wZW+PdsoXwggcsCoCih578wXkcIFWfl3R4BHgWq7NfFIg/SMMGMoLhi57z4M54ubGFN4y
CDQwa+7XDSNGU68x1W1w+NEmNC0VMyLTMMcQPCuXCTj2VGnNB3qAPAeir4t6rttM0K+suzJGwnT9
fWJzhai3a0qq3V5wKt2RK8ri8XLHzyZ29sKnLSTvHwOfQE4KAADGhzSKHS16bF6EI7XKzs6b3vBQ
/l74s/HVg8hNm88hVvTGkSbOz7LrlCg4YlwwNOZSxoorVbUC71ks7XaC/kHsd+Q/FP83K7R69hLk
f3EexJo/C9XK7tCZGSmHOMVm4pT9nOFPnWyjzT4WdkvgBRDt05BY0dptx9n8vV6RNcd2CM+FFWO7
AfqrOX+CcXFT72CzkWWBUmzyWfCkQofoLau2nM8YdpZ7otbQrXTRgbbZnHvZ7e6oLRg8RzfFf+++
4i8JVgY++DtT+MXrg2am6tPFFv5CM5sjtmVvAAzb2h6MtxMJcfrafpMf6jxxv+v+uvbY5vwIoLzu
zdzc0M3vZK0SAFO3h4mCtEhZmMIXiW52HeoZ3XfM2mzGvV1CWCBcO7NKOvRzB1O9cK2q3FGTJ6qi
80ePqfowirNQTOhR2D8cuv2K7qwf5G+ykLZDgnhRPxNYnggQ57qYXJnxswtWwIvc+3Ek9H2T6o2u
IURSo2RFJwNWDGAhuuyd1+yLiwcmNCMsg9G9JtNHRXmN5vQr4npAKfV2YwIMR4KjI42tgbB5NoAb
s8P+MZ8yrC+Gqsv0IEK/gNk90GdvcifVE1AcriH+wGvRhQZifSIfIWLvx6dhyixj7ZWsFcIvc5YV
8pFXJe7LKUz6P74CyRYhDYGLLH4vVcpkkd7ywd5HBdw+UMB4f398xH+nGf7z1SiLGDNUoi2FdsG9
dYdSTg/utGMuN1xTGXX8x5zlI2/0IaUJTRXpzSH1Stu5oOdweh/ee0eiUz+HbT9z9884VjoHKCNk
klEwkbf1cx5d49B2inFlSnqtmy5hs69KloT0BXoWSIDkL7f+n2F9qeFrZLtnc7E6C9TQlmjD5uDc
HEq34p3s6UGs2bwZ55bXk7MxXn8eL0x9G4JZYXaH32allummQYS6V/MHefx9gVKmFqHEh+57sHhm
fUQb+bjwLyDTM29yFOn/ZFUBXWxEmiIYSpbOL6BhSTyoLCZmOjeOB+gcnAh7B3BpEQYOJtn+uxLd
+VfjyXGKHqldbYHIbtAt3PyPV00jKOQabdPHpqolAHGJt3aokfW8uQpLkSZZ3iN9sRighBXrA7A5
E+zOLy59kxOMmAfGuXOvoCVH1yj8k1mk385XmGN7OaPWikD1IDJVbzLAFZ1fAfgvODwhuBsOk4C4
Hq1G0UyOfG6ZOXCZiWKhMI3dk5sehKdMQ72amCMDKtlgnTw3A0LKsvsknTCQG4MbZKv+JLl/sSoM
qgzjk3FJtcDGnTDhnjwtyBn3mGjycucF5t6c7AHigwUJRda+kFRPjOILRsNYuWOB6E7ebPPW0QGv
qBE2VVElFjjB6ok1H/C2fqoccD3sHEY62yDYxaa8MVko1astfHncmVT3GPmsC88emkQ1J/gsnxQT
kIyxfAZpzB4ikVKULIbARruMd9X5aHI7DrMHJ6SA+bsq8A8uj+NQUOeOAAw/cQp4ON132qWcSN1j
Dj8a2DCIhMVhhneVJmaBbGgiGsy9iLv2+2AQJj+Puh/BQ7vre8lNcA+WRHT75boX+ms0qTim0+IJ
TjXSYzbrspS4yOZPcOySD979ZFoHoK4cswrTb7wnfxjwlbdxw8HK0dRUzntDGlohK8Vr/77KZBmc
mbizA3bg0S0uYBz6ImklGkz4Cry+WFWbPKA5XTq2tlAQUhrlJ9mudvpWUXILXA47IxLckmAl++MJ
Ln/8sdQ1zc6nQ9R079RaULECQ0l9MrpO2b5tBeYQET2otwxnV8AQo0ktxq0SrCAcB0WMv3Ifl/od
Smq1zMyCfwvp8NioCImYpTo/XZW8UAkhOE8b8ka2IU4BeyHjBkRR9BvaT7wyi68HtgVT4msOL6nM
5Zfe8dM344TRMB3GfoW6OL44lDTyo3bvW+cYjDUkywRYHo2AsIVqKNgHqLUZ67TnjMFsFR1Se+f4
5iLQAz8G20yeeFt1NiRX8ILSdWD29QJ1mqz+yNez1injsW3xGZc+qCXmRBPG2jYFTUX+zeJhFXUI
MvMXPuAt8sGcGNdk4IqinagJxgVAl0o88ZETt4h7BPljbtKBHa7Ld8tsTJjSqqg3omNr+0IsLnWr
XWNuqd4R5LG6crHeHpV7P3U5VmAtslF+A2j/VJXOaWpEe/nYgME4ZifMFSeoD70yXDa5Ng5LR97F
t01LbueMhfen75ObCc/t2PYTT/0fWs9htLNcSCpQdonkIDPconjO7GeJRDcJ71WbyaZHdx6d6BVb
rvFxJK+WXzF18TvY5sWyEHDYjjTsWqmC6vNQvWKJGEkMev/tFvy6WbRx7gjKo3Zm2GRz9TRsjXAf
W8W06ZPjiR0JOe3PN3d189P75vPfr3iiYE1fMGYqBrVeVn51okhYKO1YSZFMVsV0ApaRQsLmn5gW
2zrNQmuBC6VxZx6VnA58WDTQgN7Cj2u/H0J4RS3lGnVvrCeIjQaThHrwdWtCPaIN1bNzUEOQ4nmA
LJKgS1MCiRzHDbkyKmzc/gXBCTfVIZTNr7zIVLLpYzPs5y7NNAmkfFUQPTcGiN+GkYqLKkT5ATiI
itteagAbMTe+SMx1VzoK8+95dYGu/Wef1oJ5XA6oqO02WMrmfo0rv64Kf7aNN45uDIeSHsHzZVpw
+KTF6VwLlK6nmzr9mS05YhNjkng8jI0LoYgzwUma3m5/hsa6PF+/Pq8dMVCyakceWa8e+wkFgxJ2
phRPDoZ5UUx/ZJ15IHtwAbF/E1xcnU4dOiU2FBkfztghWF9zfwryEzA09m8V0gi9d0bA7h607BrQ
LwRFudXMWsinYHwAw7flRC0Y6xhpRGzmKi5eIm2GdAy0ddE+nS+MiiS2TLEbCIuqNeUHFQAIMNTH
sZGXW9ccv4L1F2O6LFJfZGCtk0wTKJ/jgyCy478P52PSzxCeEN9lnGg5XTTOdd6beXeigALiezAC
GtWhyNIzet0LYLykMPSGLD2nySO0RZKCOl1g3yo0rLGBZY072xAyhY32XoJCHLVOun99T1FwUpj7
GRAIP8hAi7jtaZ1jag3X3f16XvxGQ2K7MXmEPo80+J/lk/2h61IJoGiB57fxP0CM1C6KBRcGHfQk
Q9WVBqp5Zn5hxCPR3A8Dn1yFoNwRB5yWmyzRHt9bAKVaHL8u55XbgTEbI3Qeemb3n1bD6aPKtDy0
61UPHnB4m8nv+L58sk9lrKIVEUNg+DVOoIc6CY1BxKVJeIJ1EAmunL4/HEPgLub4ntV+WWwKjbxD
0vI3URfHyuCDRvxyAh7dX9Rb6WpYxhFmk6XuPgKHBsIlkA5ZkcEoj202DBX4rXCPbUDKs3iyUnLs
BKK057J9BjORj1+J6EVxhNw8p0YUxbuzf8Smi7+S1cyfYygHuRtVYcXHK3/aMaU0RcYFQgALXMPK
kgyCoJi/fUZH731tgpYMSSIhP5Y66PkG/+NaT6Cdpg/v9Bl3Z/yV2bRHbYxsJVWCzvyDYP1EkAMB
aCeCDCMD0irk1ls4Cp8U9/yr9wCB80/E6F1XA7kW1kTOfnery9Uj8S/iuqgooIeDIjzXqx1Hrhyw
ZQOB5T/BWHu1PN72y6YOKI1GNQmQvVmxUcsvELTZlghoqfyRuPEgYActs+9VGD7LSB3Ae/xNEuAm
+Th/ptREyPAuUriZ0zda9rVFzikBjKdFYn6PdqYk3iPI/is3qA4+drzy/0I0wpMxFP/YpSw3ltye
M25v2zUIMHYU3UibREB1t7SPGn6/9TpeRGDQlLCEEOdDU8miWIbkGotXXi7KJvxIUVHpG9hoxmft
u0yDGkRsehQJc2j6/jDiv+DyfeEMDmlN1ZanxCK8RGH6inMetu2IwneivZX7TVH6/pd/sobpta9z
9CclwlVPnUyQyg4g6RSvRHG03xPCKJUEQieCfe+nuNM1R8squYvOZ4v10+3dgHkcc866bYT5MgdW
J0reQFuLM6NUukOgfWUXC0ie9NBP3uzA+AIex2k1FiXu24JtiXT0fm2iRYamzvGxVY8Ql8dUUXAY
LCzOg6016O0pblflFivWabupsrV4+NrtAoj2pYDxdxCGmz20iLo0m+4E4kbHw90o5sNz49dko4xL
5gTdJcFZQQgIqZ6f+7EuP2M9EAjhUKQN8tpFpheF5anGSm8zItcsEzcRYesNiBavpqPlKkk20R0m
GPuyWqSLoi4/wB5CO3ryt5nQ8of0+8RzUtd+rzDbxktSgnsY+jYaeEqNqgaATL/GUHwu7gl/NMxs
TSDc65qxlXVE5ZFRMLejLz6aRq1OgqAC0c4JNdi6/ojE74JWg8tC4ULVWsRVovCoaqgxkMr4mg4p
J+qt9PzmoLG8KsJ8Gt5PrWXfRThfjcP1kTcBTcgk8j9VmYsEP9D9F042no927gV/iBuyQU9QSg8S
775jMw4eIp9t2pw37OdcakUxBSVOXIGOPWozqQpYF1vO16+SEgDniCD9SLudrPsoqvhmLtqkWs1c
vHLm5w2pU04/BPsE4VfWuojJCwVwg3M9HsrSwd1NAiBEQQL2yH4xyIrKfnE1C2tIuDaFEtQO7Duo
fwb8Z21RgBemqOCJIztxdkfNXckLrt7XPGYHCC2kQa6n1BPEkLoDtgbYjohQ9FGSCJSmLz4m+Bod
RCtP8sPKqfOtXJs5F7ZjjUcNp4u2s0Gi8TWmbDtkoLYl1mcOqdNZJDg0eGW4zRE5cNnYmAXpKytX
lpdtzwTXb6CpaTryPREArkytePfOkTWCAxwMsKwYzUxcGLMnmXCOeE9CMM7qRUuPd/HyReIkQ0CJ
UFjS+ipjMSFzuS5gmUWPOk9zbyPbto7DEbky7TrIkIrPqsGfPJbh04qx2hivSlNG1sY1IHr7LnUV
b+Crz0SA+4R7aqSLAnJpLl5zUkQENGK15YJjD+1s5x4bi1hMFIvED7FTSj1mSt6HGrmUXr8hzRiw
XkN59WGlYUMIOmnLOjQeB0+W0A/v6Uj6njwLY6d3P3xavv7QSxQR4nw+dPaqGIU+WXneXahgSeqF
uwt1FUZzQ2zvZiUocGn+p7Y7A+G7pYa4WyUH9K9GuLMUIlIztYz4lfgpAce3GyukYEfk/n2TPqOb
bRfM+ayORa4R9PllwxZuvE/ZXMKHkhFc5+3GTSAGE1F+Kdx6RCZONL72YXMWoW3cIgFW9qS0IjkJ
QaMHuI+7NGfwqG6DXijOZ5ywx1WgVKU+llIXH+7JzpGRvqjJpqVlTxwWjEAxosNC7GyF/unrK6If
Zd9lNvqJusx0iLfnoOeGTXshRdiZK1IhhNbVFqYjHjemRY7OHe1Mud8smzu8XvfEhPWT376D1CL0
I6vQ69KeLH9KAzn5SFNmGJIUCoQwkx4IFdqU5dkTAx37HRfxiobvy+6YDLZXgrueQkaTiFvFNyN1
sKlM2kTCe5NRAdsO+5AYr6olBzh1LJhPFrc+imtNoXdOwKiaZkARUXKRInHcBo+MKRxDyYZ/kqUg
3NxvMmoNEOlhAr/TSLqOmLBIitP/nDh4lu+DpsMrww1njjOCMD9vPdIVPIZQcqkI40ZWEATmKZlY
JZs13CeqVBzDa1IgYPcC79OI4XW+dH+oPFHqlrgilgtqpcQdC1cdz4f4xTIWdnB46hW0Ew15bfXQ
bCSVumHOEoGmhOizOO9J3prxLmDRnCGYokQWUBHXU4GZ0ydUEBJTONYQWCptQhURlUztMKj7+izq
+dHsCRNR0hb3eqFwW6liNnL53wIRvj8BvX1tGF5HviVub1N9QqKRLw36w73UPviX2rtRwZMiI5sN
4p5Z36LotMU82oIyL7JaTW304BFoItJLsHrACLLAu6fnoEB9ren5V9rAodFMTCfaPZhGIeVb9S/R
xe/DOgSMukSINk0INnMg4rgzMUVzsjkqeSOKW2UZqNbU2FB/45ReoKSshN/9Wt36rFcJSrJ1lffJ
AjgP/TdhC+MyGmK0PsTuio0mEuhWGbaChz1HYWBvHxdCgANx91r5/364bFASE/WObOLEmTpCurp+
1o5PECHn8Ae9xKCyV7G9zxlu1ZSUob82NbFAVGKQy5gE3aMQJH+fWDmbttGX66oO+64wrzd46bed
cLKJHqLV/JgzX3hUANnkQJnGj/eLkaNBWkzGUCW4KWBP30eeiPe21WrNEudl8UXsaRoGTzz1hWVq
rb+Qk5E5P1TnFEJDvRkm10XPFf8F3vgNYK4qZTaPz9m0lvNnG46rPdWx2Hr0wzZCQKVnzhE224wP
+w9bHj//jWJ9+uwSV8iww+uvQc3EYFpZhMxeLYeMXE3hBQg5d9U1rnUL5oWUsmQ1ww31YkTAHQK4
qVbMqf4afK/DnP7nkmUAkItNdOkvc3bErsOisbj3jRT4CWZx5xkNPDkb7hFS1LmnhsRQda4TZ2zv
l+SyGryLK+nkrsdGCi4Dwc99O3SEfJFHAIoB3BeQ67Ck674bPfG9O6UeirGiTQp/RODmKFkpRl61
C4fI4Znuf6lze22rwyS/97w6JvF8B5rWUo4ZCHaXQ0KyrkZA2HnL7vuSUnSyvOJ7FyzN7DUPG7PE
UB1qHLw8qw0h3FLBfT8tzAulTFmSuvHqcfFXYh9HP5kf1k6vBHwo4fZUCf78ib8Eq/Dl5k7pFo8v
MfHpjfJKwQR/8MsOPs9wHnYy6DIPiPg5/+Us658BX3bSsfnpLASIJPcLGN/KsN/vEquVu7ZxoM9C
0AwbI08cNiiOO2X1EvjG3ohl1aj1PYaOYiqlFjpbhkdRz2Q9ekP2EKphADG3HKsR0P88qMKVeg5q
p1HVpIYCMys0lT0kbJEbgiG4F9pqL+2KI829UwfzAlidUQNDcsw7H+rpKJ3M65tAj9MmmOOSyQJe
oCHFR8Sb6e+i6OqrHBhdZ/mVWHagPFvbX3V+3Hvo+GHFk34lIp1TbIL42Yqb8p3ZzsXr9J+ea5+O
1L+d+G10INCKh1U8o9+hmqppwTrfFmT7dFaMADjHTPADSugh+tYJJPP5hXddFoy5Yi4BeFmirmo0
2bbUhN3jjAp9FUiXxbvfPdJ9Qy5oS8mjbov6TO1lOatBVwSMYcO0w3M7b+LuJxcJMMDgXOEerB3b
+GhYfcbpXL9oT4sN233GqnKnkPJOr/a6GJKGXxWkL7TSeNv9iheFtcvCJIkvm+BRxBnRrD3vQ2WZ
rIHP/xbDy+U9jIwtjOYNNyhxM4VKRmTpyeHygEpEha2q6N7WA0+49P8j9XN/a1w/3NbDb8lEOoyP
zrG1iEibdXM7Qzfcgj6/WaByKegNN8rhkQmofsKeCjyO0xEvltNgfHkPGzg0QGsu2F2wwhZqEal+
LrjpP0/PUlpM4zKUdJtkUTyNVJBvqh06gPkAplVM7uPmU0ACk9YOdTxecpY5F1uwMuezDAaBP+U9
KuWUv4McRa81dqrOHqPzxwVsIzC1QADNn1Nwy73cqRGhKp40u8mw8sAulu+33Wh3qrBenxHw6RCo
P0DlpuKS9/NPAWNr4QwXs9jClLzEWXtWxLruBYbQ6hZzZGA4s2LhoDMjZ1lkSs3Ma2WthyUsZvXs
eYHilGZOEVbmGeAdBjds7Vz2naoizA2hX3eFMYAZ28t4QpY3ym+PPgzri5uE3pj0tpoJlmVsthpA
chslMZ6i2lJRdG2Nt7v4YiY/q1wIn5RssuwNs1GgEVkS+QGyjgCZ5b6k8h0Af+Tbe/EUIUaQNAQS
5cbkelQDvM/tdviqmDN7C0I0+vuocDTgzJizCKKx5s+XDNrzIgAjKG8sTcGJPgoirBj4f/y0ZkHU
yZNLSluxcJSLm1//e9CFYfeRqjeoxEN9QPHnO36Xw0b8uQvsBmVk6ZapU6etOt2+RuAxplzQrzDO
ON8qfSAv/7ip1YphEsh8oR38KKAtWu3KNZMIH/xYzOAhWSqbPFpSgUK0UJwROU5Htqk2hj3Coom+
u6QU1pSslsAvjYdUfvYJSSR7GncDhozbkFEmKQtk9oiOzjyRH9XIMy8y8Ad0QxZ2I3Jkaz4Cfk7g
yZuxeOcRUX7BVRHOuXHf13KgHKew4xKVrHlrjOcGkrSDKmbGjia88r0N0ARRgu6LpQuLUNKCi6HA
5gr7Gia7Wa2E1cvjO+sylvPOPsC7YIVKJBKYxxJ+xoZfR9J1FjHG2MzOP3UnU1KgKoxzfBIYBjX3
jOu0RvmOxjAI7zXWa7nxDqGVySZQIxMHaHy8ChFRZHDiey1bk7wgCCGpA4ise1RqJ89KVa5OaYCE
kgvwURE6b5DVSeN9LOO7IeiUZ9MWYr8VqAacTsfGwWUuDVuzQoyX+r26h+3NQApNNRbYnfY2CI+Z
d56UvHLCcS5bwy30ktG6dOYn9iHbCrFAWtEmLLVtl7Iaf0heD+L9pvx4eRL2jvgSRfrrsIsqJPNR
uVDofz1NxJ+O1xPjg08etu6yWT4HOkthJghRlKeB6BOr7ynQHTeLP3IKd8I/obR2OEAwR+AgGY1M
sfSkLOp9XuxogN2YOr3F+JK3/f8UoANJFJDM1agYlBMszZF7GFBJ6clbjKirE1EHbCv04xkKufik
DVV3SQtrGvWRIOZN6LFq3EiYdlnmjyDYyy1stECqSFPDy/DmuTWBac/q2Xj2gefAEo0A4OoKeJpT
vrO1xPI4SCDbbloZ2ZgSh39izoKjKdsG7QPfH8vv+xQDG1CUqu/oNRnZGQ2sE00t9Ffq0EyvIp4W
oFSJowGMlketQl6rlaMnbf8aDukP37bUc1OKYnnzn6e4TvI5KrJbZ30YPXlsx6PHCBCdUQ9JB+aQ
/ixtWDhRruDii9MSCfBCxRscNfHQcTbeMmgXHu5Mg5VR8zICwy6PmvRI4b1sdszbK/p0RT9BVjOx
Lx2IJhTc2b2sxnrkF0BmUCdEtf2nwtM1dkhy/YiYlHn+As2t3jhxdneKMaJniaDbGmTpdVSz0818
UOZmnP6Teig3JULtZBenVdkiGClcQQn70ZsEj6oYdLCkhq164hR+bwl0E+QiRkrkE04Ezcq1Tgxl
9iq2MHDwds10rOQK52r6H3sEf0Y8i27HKVzUPUY6xYbGqd8z9gyPjNyVi4RFs25p/JGqGorIxP+A
7Z1MtcK4BU1bhha/4OTH8DXlxTwJieIsfyzvc+xleUZZRhjTHIPu8+Qn2I16skVglcXk+iYBQx6Q
m1CyLh49kvOiyOaYQKpVT/7X8Vss7AovWkhltsgnw9IAMDv3ZCBYLfypzqWs95wPaUHz24sj32qE
bNYwyXE3riJejRKqs7Tzz7fRFqmITWlkx/gSfEF9XnAdEofSMowc5s2cUESKvLAM9e6mp304MNI9
lu44mDTvQCGvKAidqX2vNmvSs7mfLgQYPGUiMn5MIwv31XUlUv91K2MdPp84cnddVsdWV3jCMvtT
lbbnNG8dBghANbofmlzT3u0eMtx0DDFtwIRDPOVbVQcqMmD8L6PHV4xD46BRe0nGo//hVkla6x1F
omogHGTCg1qNHC/CBx1a9m8Lteki3a1jT9P4JC7niK7Db3tb2rnbvYkCM6zY66vG2WY1cpYrzudq
+dxw3XxwB/ODv22MFwNixs8G4X2eNGEKjvdSGjIxtvYSksD0QCgBnuzyhwA7VVN+WwOrOketa56R
pje4JJuDwY1Wuc+YIwrIIjVaqtYTNRa80OH6+Ak0HHXJr0KbUfdTBavWrS6g2s4fv8M4RV8eBu6B
Q34ADoytZTnEVSyS+PF1ImEmImSt1ucsTLI0igzuGIc4IE+yuWi2Lp433gPfCjwmnszj8AC4McJx
6XRhHMwWXrj2zuBRvRbnakCWP4IcdRoJmb/KURhHGnLstUVK+2nuVmraurYD6ChJ11Fqgmg4Rgy9
w+ToUqBSjUmSy1UkX13mlV8JGIdmcA7UfY4Vg8BuJWjN0eb67KC41SbBvpyeOSk6SMLDw3vFFLSF
QQv50cxSS5pUT4YsGiwQ6mQNy5wL3rBKJuma1iQPRqLmmrJBZ3u7t4seNHf8/r1unwry1b6LEvFW
+HcLrdwuyEPXYuOde9yrRPBPOnQMjRs3KjUn8k9MG0Nco6t0OswW9F5kkWUhceJgNaXo6rhGREaT
aOPrwR/ZB4KjGnp3hzQ34x7vni9n/RkXdr610WyV2IFF+GGQGY/5iRgSd1tnNOT1bbXM5Zr3GB7c
K+4Ha3E3OfgF34eRouw/w1/5HJmMj7NOzbFN3ybvTujP5N9vGe0PRA2lDjwvkDeNIx8tq74zc0w3
4wL7fecVaz4kshdj8sQzowX3TyKrq7yaMFlQ+We0mpKwYXf6qqN1XClMG2LvhyUOLgAyfiHPz6Jd
qbZ2zUDP/XH65Kgbu7Trk2sGHRW/8/G3NmzjWPraEF1agOJ75dOJ0TDmeSd7CL2gSxBnQtBhS1EU
IC8PxbksU650Kwevrt7puMJOQjFU5ZWNZIAlsnTm7/IGacgzeSF7rpNxgQBQ2GgVrBRXUQGs8j/p
YQEzenskJGkFUQ5yuuBHXEnMG461g2SZrTPI+7Ej9yS8lyrQxp9zozWM+gFLrkMwqi1ITPOc/x8O
s+U7/bgQ1Teta1eYOTBjVahF0F4PXtuoDKed1sdydsPfCqo/bjzLEcoLdiu5RrP19VyATdm5SpRz
lpobbrYq4aLrPqolsXlfrlDO4pcsgDHoBXEUPCrxElQRAuSQLhxqdyjWJkNrZSS04kcljoI+y4P7
0ZMSRJ4JYj+hnVt9CcTDKVggIly0pUCgfm5hEgFV7qAsTXwovmEoGr+P8U0qmE5O5Lk8wzJVJfx6
gxge18t+EiN3LYOj3iovPC5NYdejSe80AvJKswCVZdwheqnfxd8aAH9HuQ97dqnOKHrIpwYB70rY
+47TTYdlvhaUs5PW/qYrKsveZgkOPfC+5HIT74luHRNqzcNjETiK4gQh/PSuRzWxM1Uv4sXrLH8G
GOM2aDAjU08QufEU2nQAt6T6NbgmmKLobs1psHn0OVGGm+9wEpCnBgpoSsaLv9MeDsqE7HXjXJHO
r7v6qZdJ1qUIjTjdybIyET0pdu4awNuZKlIWoTGo+Ln/1Fqeqf57DB8pLSJNSjSk0DI7i3D5LfRw
o9eccSeurQ+2waxLrCf7SS6v8gh/cZb/V+Xb0FMyqCMhLldzMPyw081rhy3OvutpOtGCKnSM/I27
KKFRl1hLH1ip80vt3sbZHY4Miy+87vMGzkzJ0n13cHHCB+6+ihOk2Rc1K7LCchJNrJ8ZXVdctytK
oBVgArA3vZUo9hLy0vOq1RKihb2sgnWvaWZ4UI4qjYN9GGqThSF8jIGqna2JGgUFogpcTSIsICPX
/n4h7lFxA3sp3DZ4qg+A65doLErhy6/+Td1hj3m+yblFqAPFBhab2x2evtztooRipQBPprTxoZ9+
p5vFXrY7THi5izyKFqaKyiyuJgBq2+vz9rJEAL98LJjplqrWXr2PTSDzSAkvvEHKt9xhz7S5zwwU
tLr88L4FA53MvZvWCQHGvomGu6YzQx7EfEBhtVmY3EbKtvamGXjz8ypH/YJ/+mZ96tlHms5rKR5X
vqDSkROIWnCjdLbCuNI0NrA6EdNbeLo0PXRudmZ8aduogdebogOrZ2H7I/y++RZRW5hwG8ryccxt
iVCajplolBlCdNYuY4pctpCgU2j3+pLoboHY8qZeVqFN3JB87rTqMPSqQuXY1ZD+zz+jgFKnX3Qh
95WOsFF43Rlq/zv1FWAFI2GuxawdyXDuakjW37d0sOKWMAwbK/W/eQxcYX1A9rLuRB9E8/9NoaZY
BBg8/zrvavxQeOfdh6go+dDGwIw9vxwfH9+EqM1+VBTabwffXOAQpdMdtdv5NQR6a1PPQ1kwawTZ
0s8I/dD3NIbW+7G6bFRqAKlri7rf7p7jf97GE5cEm67zSvKxf+mLlQXXAaC9QzZ9dvX+T+Eevhoz
XhzdntWBD9c959KDXpZYxtUnYabumVfmXErBlUXgkogzKuPiWGs/gXfKqJjc+hbnTXVMcsx53up2
5F4NN08MwFqNoJJB70U3kxXRqf+FFd+TLzkIKffLbz4CK3dP+Qip96kz/Pf7fZR1IupyTakl+qeI
rnVCjse/OiQHwA6PUI7if1bafx2KJ5YYooJ7rrgN+VeqV7nRTkSYkuc2tx5Hv74s6ND738ZYc9Xw
sWqvH77gO90SNCCcAp4O2vLBY5uwsWM9MYiKprcDK+oIc8dRuGSD+onmoJmvFdl5jrWQNVaTRs39
NaOjA0zl+62/4QoYF5V/AKajeCuMyQHsl3h84Px+sf7mce7psLcAPSWVACL1xvh9iiw16j9KPzJw
3sgcZou/1RxQZba4qxLfKZu/EECFLLrdGMPWRKjhJjMm3L1xPWKLjM259wQGmP3uwOeuwDELs5D/
1IZsyzJNigNPgk9B+/aQkAB4shzDYBxhu0umg/EvZ3Ur2v1OO/wQxG10QNyoadNvg3swus0YReCc
ri0NdXSiJRC+6sD+KPY3tBeVeSiSWSyMPa4KMwmkF1llJ4aY3IVjquVULrbPWTjK0DIpHU7PIUrz
J3qE7qhIHvoFNWcAkftLhoK70yyNUzshJDe/lISfcXWB7c5J7yEregN/cbuxtn4kHPD+VxjtXkqT
66mp1MpIaWdo6SjHkwSbO1+4/QnDJTcjG6zrLmDCc0Ct3mp1t77Ml5aAoyORXyqQEFjWHoHwbbXt
awuyoHnBSeqzASkQNKWnRVNk6jM5UZwY925urNLU9V1hAFm1pkJtsV7o99N9E3KacXldMNsCye9w
tUuuWEpPcyStKLMrYOGgUaxGk8OOlb00Lnx4aSyZh7pLfIJ3ZIDfAwFlBA5kQypCd3LDXXoQgfOs
fCM4Fh21IV07AKodjfdvUYrQFfz6H936A3FyPNuxv4yLnt0axWeuLk+rP20meFdY6gkPY0S3Nr0s
NzcT1osCFk2BZF8GCkD/dGSpeGsK/YH0keROO4ddici+i9B3ep+X+Lqd5NwzlhlIuhp3jGOZZ+xa
1WYv9MgQViOvR1Wln0a2Z9lUxfVX31kf42kjZGHS2jjp/oilzdbgNJFY9W0Ji8TggvaV02Scr5+y
zv63GQvh0eODsTRgo3LgvjCx6tWM1LCcsop3vjH340SELT+n4Myj+/JPD2QvkVwl72/nIGUcxhd4
e784vdEtPHvXpmGBEZI5UnAzxPU8fKtSVftsX6Np/KE0a2UhmwVDasIW1But6L5tl62ltY2pA7qG
cGDlt9qD9S7SiHdZWu9U1vsUBM4FbC7pMaYdf1TTwvzCBGgUdF/a6Tjsp1Xgdu8yxuD4lm2IiH0o
fl8pCSbao0+Pom0rWik19/mD3ZcifhnFfwa8OLmaczijLVURvrLPlcS1M0xrXMEBlQc1yvtLk+iS
yG3uCN9diWvyNSLkIn5oJ60pLiXrYZG3tzHJweED1ClnWPBZ11S9J8lrEt8bv+kJL89TWilM37dk
pBgauL94j+/H8CHr7YR4MibBblvQy0o8hcGp7ARnHytLpcbIRm3xQxbthyY9ZeDi4HRGybDLkROu
adpzENx07hYbKa7AecJPxrWGO0JrB5mh1ZU2zbA6TcZJV4jva1PP4jQbEeFtOMOlngH+Br9hRgf6
u86mUKyE5wBpOk8nwC1LzuclnVMG6ELiz476Egy3ZB6XKej2EIqHXBcgDTsR2bWNdJHxMmR1Dc3l
q2i0vEpumMbN5P/CB2VM/yuyxJoupwQnPHxBdLHk/l2QiYxcUQcVYVBlkAolY8DCqtIMiu0ezO3S
M1RY4x8woG6sfMfZ9e+tHCaiaRleNhnxrQW5bkRq80TLfFl/WZTi9z2c3qXWI04/xSaoemh6hA3z
TcCBvFBYa9OrZvaicQ++VUD2T/c619ryIn8b6pitzaVkG+vELn4dtikQfLKXECHPogiruYEYFcPN
ZEoiUsRE01AK62kSkNuYNlxtYtm8HGThlrPwoCAh9b61JwXF1dcGjKlL6PyolQNJjGEdXUheOWgW
BsE413VDRtuqdlCcAjbV1LmJPBd4jC/Ez3k3wEX+oBozSsAT4bonYWpsgOzQCdj2tALpoOOKHY8i
9iUgWDs738Uf3b6VoQxJ8ZVoKvhYOzcyzrCWZ+YSlb9W0ZVjT4c8tz4PbE6TfIB/WmFI4NWTfSdI
7rWPg1odlPUQtmnghevCuisdpyoVIeUfzFm1aSPmgeMiE5rrQKcU6lDHUnhOXKcVKAbqv6U48u+a
Cw2wAX1UFUoBZYbvAj3iKS59Y3eLq8woixItqVmZJ+i3FJDWd/QoV0uS3M5nW+3BWsZHBzBt1pSK
cTqRe55Ch25EEzapAhcOdd7/ngHAEQH7rK4h2qn6DHuaMzNbYMSDhEUi4bq482ng3EwR+W3X28Rs
szPNQtCtp5NyMJbpLIuZzVIkxKxpNn5aEvEZbZ3HlBt3yZsDcManRW5adyrQGWjjvrHFN2fFX9qf
JDUUsqPyYf4g/xpuPJKOsNYOjPaHN+IwFOrXZPtcSuF1LiBBBvr4dGMMn+7YgpkttBIYA1O+mmny
iZ/ttsGpBgMP0SjtGHEtLnEmgOCAkwXz/v+7wl/mbBDV9hkgXyoHKou3JhkZCEUXrSwRudxNrYTf
NZmw0ZTR5ThL4tAT68N1ipwg6JXFxENj86zbvGXJZdcNw1zLacbbGzz1KestwWXK98hWgkv0DSfn
jNCEPm/1hlbKFt9TDEl9bqRm4KDZM/HUtZZyu6RWqhryCwP4QoY/V55w1pLSybBxEdNy5B8Mhs3X
Hr26qKrI2vXKbfGUojIVYI0TSFMGcQdnH1u1VYFKz8yYlI0CC11o7KOpDOVm70Gj8lnFQV7Rtr+y
hoV+Ya+AGd153EX4vFYz+GVFSItgzCeDAgdBxUPiC1yGyfeMdN+UAifpv21cpbnsCIQrUwaiUX0s
NPaqQl9DaO5BNLSFQF1Juf5V2g+QIVod6q3a+3WxqI7l3S7sosvfkxYt6it2I3C3c0f1gk6+J8wO
yfVK0VM8fCoT5iKiVAwqam7+hMu87EJx1omqqMBUEuO7sSUVPmlg7ttMSbiulFue+wSSsmBilUQc
KcO5fmuswZdfztFQyUsZg+Ornj91A4cKRaMVBRpfOAEX+tWu5vciPKXlQpoUCojHQkYFspueMnkJ
DLqn6epqbeAwLzJdl3kCK6wY7u5058TMZnh7519ACo3X0pAgfzhNTxEGOQMRd8vjK+7ttYYm298J
kkx4wt51a2O4jCM++d+sS47yal72OFZpidEnXXH0lzXZJ+vV8BL3YBNQDy9GOcL1362J24oBa7eG
DQR2hFwcyvxPWb75J+Tsy7lCa7ixYRxC5X6UYAYGD7RqjbJWvXvQstG2nTepCWcU03Ys7+Rvm0vt
JQOn2uf+91tW6+INYwyrkZLUeX34f9c9RN6cyhE2VAt/O55pjCvJSqFPGIvUwzFmCJmovNwhzFK/
J2C+aT7eaBSM7sad27hHbzoAJyUMdCH/TvUsS/pvFevBjw1IXln5dB5ZZegtDwIE37XlqzJL1Fmr
ADKJ5YD3LqUCQVrL/fkfUjreI62D+nC9lvC09zTHv4CT6JjaPuztyKwMTPxWe0CQcLGn+zTQA+o3
nIJ1J7cc1JQNy+z0I7N+HJ6yOtO/YQu2JQUofUbOHq4YCyujPJREp5lGORi0tlq/EXXl0MGmIpgP
8DNILwejH3BPFadVPGqbyPLr4/YfZi67xu/tmYz0AlA2fkUdyt+q3qltsCDS2n4jcfL9vqKBTZEx
VpghVmMEkfAbNVbLo0jEH100ONEoxClLFfuQkmpHwKTKgNYMdLtlwMBiwgp7SdAw+0BiesRUepmi
fbfUwYMTJE0Frw6BskhoTFTqKH67heEfCxzmi2KXAaLwkEhRroXOeOnDbqXdtACK5zFk7sg7OpRD
GGQsZJOor1XMxXsA5VPyBp2S55qtGnaivXDFdsU6pfzsQQFFMLE4NCK00AhEb0Pw5Vt/nH41NOov
SvIVDTxcf+OrG/nsYv6uVyvmeEHs6gO9pfl0ZLWr9CvRGRvKvy0kgpcklzHhjYgZos3vCP41LGyp
ZVdnyMSQ0wF3h4GdugL4wHAdpHfU8s+n7B54dT6bip4l3+gZwk8/0nn8scw0SI8puGnaWpje8PLB
6Ef+lFCCto329nAIswK4Bk72tPLIA2Pt3RXU/Tj5UWdjqvLULK0ROzAgNBdgz09F9S47Eo/dpw24
MNpSIgOn3Pnbc/cta80//mDWGn8iCihbp/DnUuuMvlbwpJqr9fkYG5jv5Mn7dw9waxLLJ7ZEDabQ
9Koq+BmMF+tXqLFwFlvnIRSaR53EuGOZZDlvzxdYjh1jV9bBrp4SsfVpeJxK7B5JG/qem0x+YXj1
1p5T+4dzEuL/YQL99lrQbLIpHco7gVPwPI7w8rm1CBzX7uFLDZUjXf8oIfU+6DWd6TVk6ayKTgYT
VasCdFbONi5uWh1ngThW78nR3Sp1BTXr414Ja8pxDHUghqDOx5Zmn/KlaweCjFCfhsa5B+i1Knz4
tkF90Si+mi1xzBbC8qiIgr9lo6ryXwAn0R4vsvWdsjkQbX0HRtLPwOChS4iqV0t5AazaSVaPst3E
GsfbzhwvBBcw37R6cN5vll9iiuxW1+eo/4aTFho/34Pg3qvGWN3piiUkD1CsrslajV/Cc+uak6Ng
8+ysCX1wAUCTA9vWbiVmQbd8caStYcdWaeXr0JW8/yzwl0p9xI5gJFy647ryJSb84ez3YQjjPSuS
IM8KrsynpG/nK3i39IwOy+LDHilYYp9a+pseriORzkPggji1UYgBVIJq12aTgRsfRWJOj6o+LlzK
0JnFsWIAZB2dEzDXpNWd1+GhxIOKBbxIFEsac8fwDC1UC28QrB+t8wKH6TUN728DM5Wp3ifgZA5p
lbbHV+OYikGUZ2CjB88xxT/192PKm/0ynm0KkQqn34kfQwby0Q0wzA6EnziI8Yv0KG0b/FGbJUjT
KCWc2QoU9ZlDUBHXiYWviDHxJ0JaGtfjcbcTe1P6xs09RPSi+R7UqB+bmnDHQrknF8/SIYaqeeNY
3w2zrLdMqfYwnjEzH5eN0UGPFzD/UNCmUmm76b8ClRvUPBYO
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
