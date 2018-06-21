-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:top_oled:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_oled_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset_i : IN STD_LOGIC;
    ascii_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_valid_i : IN STD_LOGIC;
    data_consumed_o : OUT STD_LOGIC;
    SDIN : OUT STD_LOGIC;
    SCLK : OUT STD_LOGIC;
    DC : OUT STD_LOGIC;
    RES : OUT STD_LOGIC;
    VBAT : OUT STD_LOGIC;
    VDD : OUT STD_LOGIC;
    dBtnU : IN STD_LOGIC;
    dBTnD : IN STD_LOGIC
  );
END top_oled_0;

ARCHITECTURE top_oled_0_arch OF top_oled_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_oled_0_arch: ARCHITECTURE IS "yes";
  COMPONENT top_oled IS
    PORT (
      clk : IN STD_LOGIC;
      reset_i : IN STD_LOGIC;
      ascii_data_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      data_valid_i : IN STD_LOGIC;
      data_consumed_o : OUT STD_LOGIC;
      SDIN : OUT STD_LOGIC;
      SCLK : OUT STD_LOGIC;
      DC : OUT STD_LOGIC;
      RES : OUT STD_LOGIC;
      VBAT : OUT STD_LOGIC;
      VDD : OUT STD_LOGIC;
      dBtnU : IN STD_LOGIC;
      dBTnD : IN STD_LOGIC
    );
  END COMPONENT top_oled;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_i: SIGNAL IS "XIL_INTERFACENAME reset_i, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset_i: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_i RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : top_oled
    PORT MAP (
      clk => clk,
      reset_i => reset_i,
      ascii_data_i => ascii_data_i,
      data_valid_i => data_valid_i,
      data_consumed_o => data_consumed_o,
      SDIN => SDIN,
      SCLK => SCLK,
      DC => DC,
      RES => RES,
      VBAT => VBAT,
      VDD => VDD,
      dBtnU => dBtnU,
      dBTnD => dBTnD
    );
END top_oled_0_arch;
