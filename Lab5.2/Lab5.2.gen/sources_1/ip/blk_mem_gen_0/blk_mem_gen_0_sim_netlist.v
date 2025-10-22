// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Oct 19 19:07:33 2025
// Host        : Kartik-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/karti/Documents/ECE_385/Lab5.2/Lab5.2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
5mKz6A==
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
