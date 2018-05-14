--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Mon May 14 12:18:58 2018
--Host        : DESKTOP-VQJOVAR running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    sws_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    sws_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component system;
begin
system_i: component system
     port map (
      sws_8bits_tri_i(7 downto 0) => sws_8bits_tri_i(7 downto 0)
    );
end STRUCTURE;
