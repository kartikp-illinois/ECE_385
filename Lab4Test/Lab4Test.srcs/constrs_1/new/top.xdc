# XAB Multiplier Constraints File
# Based on pin assignment table provided

# Clock - 50 MHz
set_property PACKAGE_PIN N15 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports Clk]
create_clock -period 20.000 [get_ports Clk]

# Push Buttons
set_property PACKAGE_PIN J2 [get_ports Reset_Load_Clear]
set_property IOSTANDARD LVCMOS25 [get_ports Reset_Load_Clear]

set_property PACKAGE_PIN J1 [get_ports Run]
set_property IOSTANDARD LVCMOS25 [get_ports Run]

# Switches SW[7:0]
set_property PACKAGE_PIN G1 [get_ports {SW[0]}]
set_property PACKAGE_PIN F2 [get_ports {SW[1]}]
set_property PACKAGE_PIN F1 [get_ports {SW[2]}]
set_property PACKAGE_PIN E2 [get_ports {SW[3]}]
set_property PACKAGE_PIN E1 [get_ports {SW[4]}]
set_property PACKAGE_PIN D2 [get_ports {SW[5]}]
set_property PACKAGE_PIN D1 [get_ports {SW[6]}]
set_property PACKAGE_PIN C2 [get_ports {SW[7]}]

set_property IOSTANDARD LVCMOS25 [get_ports {SW[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {SW[7]}]

# B Value LEDs (LED0-LED7)
set_property PACKAGE_PIN C13 [get_ports {Bval[0]}]
set_property PACKAGE_PIN C14 [get_ports {Bval[1]}]
set_property PACKAGE_PIN D14 [get_ports {Bval[2]}]
set_property PACKAGE_PIN D15 [get_ports {Bval[3]}]
set_property PACKAGE_PIN D16 [get_ports {Bval[4]}]
set_property PACKAGE_PIN F18 [get_ports {Bval[5]}]
set_property PACKAGE_PIN E17 [get_ports {Bval[6]}]
set_property PACKAGE_PIN D17 [get_ports {Bval[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {Bval[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Bval[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Bval[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Bval[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Bval[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Bval[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Bval[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Bval[7]}]

# A Value LEDs (LED8-LED15)
set_property PACKAGE_PIN C17 [get_ports {Aval[0]}]
set_property PACKAGE_PIN B18 [get_ports {Aval[1]}]
set_property PACKAGE_PIN A17 [get_ports {Aval[2]}]
set_property PACKAGE_PIN B17 [get_ports {Aval[3]}]
set_property PACKAGE_PIN C18 [get_ports {Aval[4]}]
set_property PACKAGE_PIN D18 [get_ports {Aval[5]}]
set_property PACKAGE_PIN E18 [get_ports {Aval[6]}]
set_property PACKAGE_PIN G17 [get_ports {Aval[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {Aval[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aval[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aval[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aval[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aval[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aval[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aval[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Aval[7]}]

# X Value LED (RGB Red)
set_property PACKAGE_PIN C9 [get_ports Xval]
set_property IOSTANDARD LVCMOS33 [get_ports Xval]

# Hex Display A - Grid
set_property PACKAGE_PIN G6 [get_ports {hex_gridA[0]}]
set_property PACKAGE_PIN H6 [get_ports {hex_gridA[1]}]
set_property PACKAGE_PIN C3 [get_ports {hex_gridA[2]}]
set_property PACKAGE_PIN B3 [get_ports {hex_gridA[3]}]

set_property IOSTANDARD LVCMOS25 [get_ports {hex_gridA[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_gridA[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_gridA[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_gridA[3]}]

# Hex Display A - Segments
set_property PACKAGE_PIN E6 [get_ports {hex_segA[0]}]
set_property PACKAGE_PIN B4 [get_ports {hex_segA[1]}]
set_property PACKAGE_PIN D5 [get_ports {hex_segA[2]}]
set_property PACKAGE_PIN C5 [get_ports {hex_segA[3]}]
set_property PACKAGE_PIN D7 [get_ports {hex_segA[4]}]
set_property PACKAGE_PIN D6 [get_ports {hex_segA[5]}]
set_property PACKAGE_PIN C4 [get_ports {hex_segA[6]}]
set_property PACKAGE_PIN B5 [get_ports {hex_segA[7]}]

set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {hex_segA[7]}]