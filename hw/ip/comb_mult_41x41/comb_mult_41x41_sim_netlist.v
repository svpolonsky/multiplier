// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jul 14 07:40:20 2022
// Host        : ubuntu1 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/stas/Playground/Multiplier_Karatsuba/nexys_a7/nexys_a7.srcs/sources_1/ip/comb_mult_41x41/comb_mult_41x41_sim_netlist.v
// Design      : comb_mult_41x41
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "comb_mult_41x41,mult_gen_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module comb_mult_41x41
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [40:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [40:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [81:0]P;

  wire [40:0]A;
  wire [40:0]B;
  wire [81:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "41" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "41" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "81" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  comb_mult_41x41_mult_gen_v12_0_15 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "41" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "41" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "81" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_15" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module comb_mult_41x41_mult_gen_v12_0_15
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [40:0]A;
  input [40:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [81:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [40:0]A;
  wire [40:0]B;
  wire [81:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "41" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "41" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "81" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  comb_mult_41x41_mult_gen_v12_0_15_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
KGg++J83s0yJ7o2/XMVLkRRTRjS0oC9h86tQjl1+xE1m53Uwmm0+K41skiYHo3Urr6lMQ4q2jL5Y
R/1NOu1WGg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jCBx8aLaNWpgdwu0tsffQfmLNKET4Uy44Upxw9AlkO9Ma9Y+tqZHrHroYhGJUxa/dyJZ7Z0HDJ1t
hUhVV6SjuhVMs1NLM1MVw9F3MTSW7MB/qx7j0WAj62FJgoxsCtt6g392p1JAAosX8yACeLKiQ0KF
mnMpugzqSRDI445k7So=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zdO8kU0uCj5Mggk0oLUcYcllNQJVD7vxIj25evesPPwBvXuv6EUsbKmUaCAlFUyG0YQ0mxWxXmzV
V/dRqKxqZ1ZI8+mX4IFaTJSCcYctMZsCl+2EWvQQHakV4QzWuCyca1phNacrRJfur8Ssc/Mhbez3
GLQCRrSfyBYyi3u9J+SAJRcJapyB1syXXhclDtup6m1z2C5S+NX/ql6kVXkcd9P+C5ordunfutgU
6uco8UymF/9QFYiBCWlTkHAgd7DH3dCI1E72N2H/KpX0/0xFBk++NCVuNucOwd9h4/hAyr4L+SI0
6Dzmn6kaBO4lnMAj5P58GIeWO/EtqrPeWg4UJw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdbUT4bIXyyFULrG0eEn0kqX6tjVoWssNb1FURO5jvyN5IkvkkDKCSLsd4J+2RE35ttJ20+4IZm2
p3H/UGCxkuCYtlZzovVpVf93DlhFUM2iSGd/L3evdLLL8VYETZTScGFdFXqiqe4ggXPHQCSEPD+e
PmMIJTGQka0DD3H+w+9t5Po/+M8b4r1y70l3Py7aYMeCEsZ/yHRmk8szsOjUbwvFEJk8SPXrEERg
EYMIrbryPHXq5E2fCL7hTgHa+bzIdFQOc2/8wn8YMVTmIJCZLBZDXvGSSm16cifWzXKHbPSly8js
RAoD2yYva4rr9cUy8jEyEpUcPGnaJXBDnB7lsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eGYl/A3vBqVYodgklvBXVlduDkQKDOe941//b/7D71XaDbW1Cqv7m5eqy+I7bUTyBfnKRV6WeTtg
K2eZlSMADPLNGmIEawb1T81kHA95L4SgxCaMDbzt0t5pO+IQTca0KxjvPFPjj860AZ/Y4IJCgD9Z
vZNfcSeez7bqGB9kVNzxh40hdeBm7XY8a+5R/yPufF2S8KSSaiPSvYwD8yXOBzVoRhqA9q5PWKTd
u6qoeWMnQ1r/hIDsge5oDE06b6+zC7odC460K8KIOtKzeCrfWezkynmD7wBR1fdIwh9FGe2Uq4lO
ZbT2QFx8Ga5NQIwIIZZci/uL4Tw/7+CPKEoddw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
k1GN+kT7KgRIHJs5Cw+hQb7EZrReCsvXgXeCjz4o0RyqpPm8XlxoPCNX4kR8BSaVxBTPm8qGrOj8
IkQcLP4XpLGNjMzOE8knGvgjraCBhhY/bboSihIYbJYXuKW0k/ErxcqbMup3dsmp8N5M+ZYpiEuF
88HraBjchDshDh5xlcY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jzBUDUoUQBD0tzi9B/VXNwpoyjUIKBzxkVyikkxc/QHKpaIlgud+eCQD6psG9RUWZouQN8CQmJEY
0K5qgvfm7GxXMbjLUwnVBRg4Uzfc4OTySfJMu1k9/qGISvYwf4r0rzMMp9aPgp+ElEwTGx3z9N0A
vWNdEjCI2mqdxmP3Q9AYUPTudILppELRMP4SJijczuRIhtAKpxFjTP2gL8zQE0aq1kkWRZfaHW1t
wV7tZ/jCUxkX8uj8DL6Bei6oBC1nTm/FjPhi+htKla8XNUEftaqUre2/0Sxhsxl/FTAzaex9fCj4
AMt2l6o0FpW5JlLhGnTYhWm/bgsyGCPBg6lSjQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UoAkJoe0EQfnhEy5Gu2Ngvx5Lt30qDCGd6mhiuUG3xrjAsOYOH2jybaD2sy7lhYvhPuM3whLYOXi
kkSubnpM12RTzz4drp8olf/1ugITorKrCmCpBDYYozQZ5rMgQTbmMLxqNYpr6Lp45LMTr7ooLvXY
YMm4J9YF8wCTJ5VdS8uoEfszxbIFb5fNpy49NncqCuKV0tU4vt3f9NR9N6hiGzdyk+Wfbq5KWppF
Vu1QFEwTWW/352/eV8YWCK5p0B3DC6nDCFJHT5QN/zrmP3GPORNWM7AASNPjatU6XJCIwYOti8AX
PT4QBpWPgxbcS+LzDseXqnY7T8dUfYkpQ3Dusw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zkkVpF6Ldy3Bl7ZhCMtq0GXWfGISKyPOGMqtxM7lKoPCi/dzddy7OZNnAACN8//zRvTP77mcE1jZ
s/oPJ8/E9VpGMwDGPMYgeHifB9aIOURsRBBH/vh9HJG3QsCY1JMz1daYSOIwEKeznl9gAGrlppbS
RPZD4hZBFS8eRkp31Lkzh343c3AeEGvGrJvBP/y8XpOdsnxUYYsUo+H6SHzHhv0vPGWoLgw2Jn+O
A++EtnIW8Y+Sd3EdILtQBjQcyvY98sYaUb0Pyf/996VGxrFy00zIv/cld+jTu3NIv2fAUZFdlFX8
2lJWb2jMifVrJrlaSNGlJn04uJw/Kd4Ft+SGag==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31744)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
