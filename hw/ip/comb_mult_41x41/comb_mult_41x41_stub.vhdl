-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Jul 14 07:40:20 2022
-- Host        : ubuntu1 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/stas/Playground/Multiplier_Karatsuba/nexys_a7/nexys_a7.srcs/sources_1/ip/comb_mult_41x41/comb_mult_41x41_stub.vhdl
-- Design      : comb_mult_41x41
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comb_mult_41x41 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 40 downto 0 );
    B : in STD_LOGIC_VECTOR ( 40 downto 0 );
    P : out STD_LOGIC_VECTOR ( 81 downto 0 )
  );

end comb_mult_41x41;

architecture stub of comb_mult_41x41 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[40:0],B[40:0],P[81:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_15,Vivado 2019.1";
begin
end;
