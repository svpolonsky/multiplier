// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jul 14 07:40:20 2022
// Host        : ubuntu1 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/stas/Playground/Multiplier_Karatsuba/nexys_a7/nexys_a7.srcs/sources_1/ip/comb_mult_41x41/comb_mult_41x41_stub.v
// Design      : comb_mult_41x41
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *)
module comb_mult_41x41(A, B, P)
/* synthesis syn_black_box black_box_pad_pin="A[40:0],B[40:0],P[81:0]" */;
  input [40:0]A;
  input [40:0]B;
  output [81:0]P;
endmodule
