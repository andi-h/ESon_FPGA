--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Wed Jun 13 14:22:07 2018
--Host        : DESKTOP-VQJOVAR running 64-bit major release  (build 9200)
--Command     : generate_target vivado_system_wrapper.bd
--Design      : vivado_system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vivado_system_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIO_0_tri_io : inout STD_LOGIC_VECTOR ( 55 downto 0 );
    USBIND_0_port_indctl : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USBIND_0_vbus_pwrfault : in STD_LOGIC;
    USBIND_0_vbus_pwrselect : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    user_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    user_clk : out STD_LOGIC;
    user_irq : in STD_LOGIC;
    user_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    user_rden : out STD_LOGIC;
    user_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    user_wren : out STD_LOGIC;
    user_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_clk : out STD_LOGIC;
    vga_de : out STD_LOGIC;
    vga_green : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_vsync : out STD_LOGIC;
    xillybus_M_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_M_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_arready : out STD_LOGIC;
    xillybus_M_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_arvalid : in STD_LOGIC;
    xillybus_M_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_M_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_awready : out STD_LOGIC;
    xillybus_M_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_awvalid : in STD_LOGIC;
    xillybus_M_AXI_bready : in STD_LOGIC;
    xillybus_M_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_bvalid : out STD_LOGIC;
    xillybus_M_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xillybus_M_AXI_rlast : out STD_LOGIC;
    xillybus_M_AXI_rready : in STD_LOGIC;
    xillybus_M_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_rvalid : out STD_LOGIC;
    xillybus_M_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xillybus_M_AXI_wlast : in STD_LOGIC;
    xillybus_M_AXI_wready : out STD_LOGIC;
    xillybus_M_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xillybus_M_AXI_wvalid : in STD_LOGIC;
    xillybus_S_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_arready : in STD_LOGIC;
    xillybus_S_AXI_arvalid : out STD_LOGIC;
    xillybus_S_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_awready : in STD_LOGIC;
    xillybus_S_AXI_awvalid : out STD_LOGIC;
    xillybus_S_AXI_bready : out STD_LOGIC;
    xillybus_S_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_S_AXI_bvalid : in STD_LOGIC;
    xillybus_S_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_rready : out STD_LOGIC;
    xillybus_S_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_S_AXI_rvalid : in STD_LOGIC;
    xillybus_S_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_wready : in STD_LOGIC;
    xillybus_S_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_S_AXI_wvalid : out STD_LOGIC;
    xillybus_bus_clk : out STD_LOGIC;
    xillybus_bus_rst_n : out STD_LOGIC;
    xillybus_host_interrupt : in STD_LOGIC
  );
end vivado_system_wrapper;

architecture STRUCTURE of vivado_system_wrapper is
  component vivado_system is
  port (
    xillybus_M_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_M_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_awvalid : in STD_LOGIC;
    xillybus_M_AXI_awready : out STD_LOGIC;
    xillybus_M_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xillybus_M_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xillybus_M_AXI_wlast : in STD_LOGIC;
    xillybus_M_AXI_wvalid : in STD_LOGIC;
    xillybus_M_AXI_wready : out STD_LOGIC;
    xillybus_M_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_bvalid : out STD_LOGIC;
    xillybus_M_AXI_bready : in STD_LOGIC;
    xillybus_M_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_M_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_M_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    xillybus_M_AXI_arvalid : in STD_LOGIC;
    xillybus_M_AXI_arready : out STD_LOGIC;
    xillybus_M_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xillybus_M_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_M_AXI_rlast : out STD_LOGIC;
    xillybus_M_AXI_rvalid : out STD_LOGIC;
    xillybus_M_AXI_rready : in STD_LOGIC;
    xillybus_S_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_awvalid : out STD_LOGIC;
    xillybus_S_AXI_awready : in STD_LOGIC;
    xillybus_S_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    xillybus_S_AXI_wvalid : out STD_LOGIC;
    xillybus_S_AXI_wready : in STD_LOGIC;
    xillybus_S_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_S_AXI_bvalid : in STD_LOGIC;
    xillybus_S_AXI_bready : out STD_LOGIC;
    xillybus_S_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_arvalid : out STD_LOGIC;
    xillybus_S_AXI_arready : in STD_LOGIC;
    xillybus_S_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    xillybus_S_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    xillybus_S_AXI_rvalid : in STD_LOGIC;
    xillybus_S_AXI_rready : out STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    USBIND_0_port_indctl : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USBIND_0_vbus_pwrselect : out STD_LOGIC;
    USBIND_0_vbus_pwrfault : in STD_LOGIC;
    GPIO_0_tri_i : in STD_LOGIC_VECTOR ( 55 downto 0 );
    GPIO_0_tri_o : out STD_LOGIC_VECTOR ( 55 downto 0 );
    GPIO_0_tri_t : out STD_LOGIC_VECTOR ( 55 downto 0 );
    xillybus_host_interrupt : in STD_LOGIC;
    xillybus_bus_rst_n : out STD_LOGIC;
    xillybus_bus_clk : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_de : out STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_clk : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_hsync : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    user_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    user_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    user_irq : in STD_LOGIC;
    user_wren : out STD_LOGIC;
    user_clk : out STD_LOGIC;
    user_rden : out STD_LOGIC;
    user_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    user_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component vivado_system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal GPIO_0_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_0_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_0_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_0_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_0_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_0_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_0_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_0_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_0_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_0_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_0_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_0_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_0_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_0_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_0_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_0_tri_i_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_0_tri_i_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_0_tri_i_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_0_tri_i_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_0_tri_i_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_0_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_i_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_0_tri_i_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_0_tri_i_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_0_tri_i_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_0_tri_i_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_0_tri_i_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_0_tri_i_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_0_tri_i_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_0_tri_i_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_0_tri_i_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_0_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_0_tri_i_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_0_tri_i_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_0_tri_i_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_0_tri_i_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_0_tri_i_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_0_tri_i_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_0_tri_i_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_0_tri_i_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_0_tri_i_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_0_tri_i_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_0_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_0_tri_i_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_0_tri_i_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_0_tri_i_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_0_tri_i_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_0_tri_i_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_0_tri_i_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_0_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_0_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_0_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_0_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal GPIO_0_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_0_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_0_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_0_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_0_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_0_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_0_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_0_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_0_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_0_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_0_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_0_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_0_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_0_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_0_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_0_tri_io_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_0_tri_io_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_0_tri_io_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_0_tri_io_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_0_tri_io_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_0_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_io_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_0_tri_io_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_0_tri_io_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_0_tri_io_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_0_tri_io_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_0_tri_io_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_0_tri_io_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_0_tri_io_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_0_tri_io_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_0_tri_io_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_0_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_0_tri_io_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_0_tri_io_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_0_tri_io_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_0_tri_io_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_0_tri_io_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_0_tri_io_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_0_tri_io_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_0_tri_io_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_0_tri_io_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_0_tri_io_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_0_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_0_tri_io_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_0_tri_io_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_0_tri_io_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_0_tri_io_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_0_tri_io_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_0_tri_io_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_0_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_0_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_0_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_0_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal GPIO_0_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_0_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_0_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_0_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_0_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_0_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_0_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_0_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_0_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_0_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_0_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_0_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_0_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_0_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_0_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_0_tri_o_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_0_tri_o_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_0_tri_o_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_0_tri_o_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_0_tri_o_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_0_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_o_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_0_tri_o_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_0_tri_o_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_0_tri_o_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_0_tri_o_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_0_tri_o_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_0_tri_o_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_0_tri_o_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_0_tri_o_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_0_tri_o_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_0_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_0_tri_o_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_0_tri_o_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_0_tri_o_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_0_tri_o_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_0_tri_o_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_0_tri_o_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_0_tri_o_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_0_tri_o_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_0_tri_o_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_0_tri_o_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_0_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_0_tri_o_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_0_tri_o_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_0_tri_o_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_0_tri_o_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_0_tri_o_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_0_tri_o_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_0_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_0_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_0_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_0_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal GPIO_0_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GPIO_0_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal GPIO_0_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal GPIO_0_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal GPIO_0_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal GPIO_0_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal GPIO_0_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal GPIO_0_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal GPIO_0_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal GPIO_0_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal GPIO_0_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal GPIO_0_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal GPIO_0_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal GPIO_0_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal GPIO_0_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal GPIO_0_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal GPIO_0_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal GPIO_0_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal GPIO_0_tri_t_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal GPIO_0_tri_t_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal GPIO_0_tri_t_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal GPIO_0_tri_t_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal GPIO_0_tri_t_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal GPIO_0_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal GPIO_0_tri_t_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal GPIO_0_tri_t_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal GPIO_0_tri_t_32 : STD_LOGIC_VECTOR ( 32 to 32 );
  signal GPIO_0_tri_t_33 : STD_LOGIC_VECTOR ( 33 to 33 );
  signal GPIO_0_tri_t_34 : STD_LOGIC_VECTOR ( 34 to 34 );
  signal GPIO_0_tri_t_35 : STD_LOGIC_VECTOR ( 35 to 35 );
  signal GPIO_0_tri_t_36 : STD_LOGIC_VECTOR ( 36 to 36 );
  signal GPIO_0_tri_t_37 : STD_LOGIC_VECTOR ( 37 to 37 );
  signal GPIO_0_tri_t_38 : STD_LOGIC_VECTOR ( 38 to 38 );
  signal GPIO_0_tri_t_39 : STD_LOGIC_VECTOR ( 39 to 39 );
  signal GPIO_0_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GPIO_0_tri_t_40 : STD_LOGIC_VECTOR ( 40 to 40 );
  signal GPIO_0_tri_t_41 : STD_LOGIC_VECTOR ( 41 to 41 );
  signal GPIO_0_tri_t_42 : STD_LOGIC_VECTOR ( 42 to 42 );
  signal GPIO_0_tri_t_43 : STD_LOGIC_VECTOR ( 43 to 43 );
  signal GPIO_0_tri_t_44 : STD_LOGIC_VECTOR ( 44 to 44 );
  signal GPIO_0_tri_t_45 : STD_LOGIC_VECTOR ( 45 to 45 );
  signal GPIO_0_tri_t_46 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal GPIO_0_tri_t_47 : STD_LOGIC_VECTOR ( 47 to 47 );
  signal GPIO_0_tri_t_48 : STD_LOGIC_VECTOR ( 48 to 48 );
  signal GPIO_0_tri_t_49 : STD_LOGIC_VECTOR ( 49 to 49 );
  signal GPIO_0_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal GPIO_0_tri_t_50 : STD_LOGIC_VECTOR ( 50 to 50 );
  signal GPIO_0_tri_t_51 : STD_LOGIC_VECTOR ( 51 to 51 );
  signal GPIO_0_tri_t_52 : STD_LOGIC_VECTOR ( 52 to 52 );
  signal GPIO_0_tri_t_53 : STD_LOGIC_VECTOR ( 53 to 53 );
  signal GPIO_0_tri_t_54 : STD_LOGIC_VECTOR ( 54 to 54 );
  signal GPIO_0_tri_t_55 : STD_LOGIC_VECTOR ( 55 to 55 );
  signal GPIO_0_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal GPIO_0_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal GPIO_0_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal GPIO_0_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
begin
GPIO_0_tri_iobuf_0: component IOBUF
     port map (
      I => GPIO_0_tri_o_0(0),
      IO => GPIO_0_tri_io(0),
      O => GPIO_0_tri_i_0(0),
      T => GPIO_0_tri_t_0(0)
    );
GPIO_0_tri_iobuf_1: component IOBUF
     port map (
      I => GPIO_0_tri_o_1(1),
      IO => GPIO_0_tri_io(1),
      O => GPIO_0_tri_i_1(1),
      T => GPIO_0_tri_t_1(1)
    );
GPIO_0_tri_iobuf_10: component IOBUF
     port map (
      I => GPIO_0_tri_o_10(10),
      IO => GPIO_0_tri_io(10),
      O => GPIO_0_tri_i_10(10),
      T => GPIO_0_tri_t_10(10)
    );
GPIO_0_tri_iobuf_11: component IOBUF
     port map (
      I => GPIO_0_tri_o_11(11),
      IO => GPIO_0_tri_io(11),
      O => GPIO_0_tri_i_11(11),
      T => GPIO_0_tri_t_11(11)
    );
GPIO_0_tri_iobuf_12: component IOBUF
     port map (
      I => GPIO_0_tri_o_12(12),
      IO => GPIO_0_tri_io(12),
      O => GPIO_0_tri_i_12(12),
      T => GPIO_0_tri_t_12(12)
    );
GPIO_0_tri_iobuf_13: component IOBUF
     port map (
      I => GPIO_0_tri_o_13(13),
      IO => GPIO_0_tri_io(13),
      O => GPIO_0_tri_i_13(13),
      T => GPIO_0_tri_t_13(13)
    );
GPIO_0_tri_iobuf_14: component IOBUF
     port map (
      I => GPIO_0_tri_o_14(14),
      IO => GPIO_0_tri_io(14),
      O => GPIO_0_tri_i_14(14),
      T => GPIO_0_tri_t_14(14)
    );
GPIO_0_tri_iobuf_15: component IOBUF
     port map (
      I => GPIO_0_tri_o_15(15),
      IO => GPIO_0_tri_io(15),
      O => GPIO_0_tri_i_15(15),
      T => GPIO_0_tri_t_15(15)
    );
GPIO_0_tri_iobuf_16: component IOBUF
     port map (
      I => GPIO_0_tri_o_16(16),
      IO => GPIO_0_tri_io(16),
      O => GPIO_0_tri_i_16(16),
      T => GPIO_0_tri_t_16(16)
    );
GPIO_0_tri_iobuf_17: component IOBUF
     port map (
      I => GPIO_0_tri_o_17(17),
      IO => GPIO_0_tri_io(17),
      O => GPIO_0_tri_i_17(17),
      T => GPIO_0_tri_t_17(17)
    );
GPIO_0_tri_iobuf_18: component IOBUF
     port map (
      I => GPIO_0_tri_o_18(18),
      IO => GPIO_0_tri_io(18),
      O => GPIO_0_tri_i_18(18),
      T => GPIO_0_tri_t_18(18)
    );
GPIO_0_tri_iobuf_19: component IOBUF
     port map (
      I => GPIO_0_tri_o_19(19),
      IO => GPIO_0_tri_io(19),
      O => GPIO_0_tri_i_19(19),
      T => GPIO_0_tri_t_19(19)
    );
GPIO_0_tri_iobuf_2: component IOBUF
     port map (
      I => GPIO_0_tri_o_2(2),
      IO => GPIO_0_tri_io(2),
      O => GPIO_0_tri_i_2(2),
      T => GPIO_0_tri_t_2(2)
    );
GPIO_0_tri_iobuf_20: component IOBUF
     port map (
      I => GPIO_0_tri_o_20(20),
      IO => GPIO_0_tri_io(20),
      O => GPIO_0_tri_i_20(20),
      T => GPIO_0_tri_t_20(20)
    );
GPIO_0_tri_iobuf_21: component IOBUF
     port map (
      I => GPIO_0_tri_o_21(21),
      IO => GPIO_0_tri_io(21),
      O => GPIO_0_tri_i_21(21),
      T => GPIO_0_tri_t_21(21)
    );
GPIO_0_tri_iobuf_22: component IOBUF
     port map (
      I => GPIO_0_tri_o_22(22),
      IO => GPIO_0_tri_io(22),
      O => GPIO_0_tri_i_22(22),
      T => GPIO_0_tri_t_22(22)
    );
GPIO_0_tri_iobuf_23: component IOBUF
     port map (
      I => GPIO_0_tri_o_23(23),
      IO => GPIO_0_tri_io(23),
      O => GPIO_0_tri_i_23(23),
      T => GPIO_0_tri_t_23(23)
    );
GPIO_0_tri_iobuf_24: component IOBUF
     port map (
      I => GPIO_0_tri_o_24(24),
      IO => GPIO_0_tri_io(24),
      O => GPIO_0_tri_i_24(24),
      T => GPIO_0_tri_t_24(24)
    );
GPIO_0_tri_iobuf_25: component IOBUF
     port map (
      I => GPIO_0_tri_o_25(25),
      IO => GPIO_0_tri_io(25),
      O => GPIO_0_tri_i_25(25),
      T => GPIO_0_tri_t_25(25)
    );
GPIO_0_tri_iobuf_26: component IOBUF
     port map (
      I => GPIO_0_tri_o_26(26),
      IO => GPIO_0_tri_io(26),
      O => GPIO_0_tri_i_26(26),
      T => GPIO_0_tri_t_26(26)
    );
GPIO_0_tri_iobuf_27: component IOBUF
     port map (
      I => GPIO_0_tri_o_27(27),
      IO => GPIO_0_tri_io(27),
      O => GPIO_0_tri_i_27(27),
      T => GPIO_0_tri_t_27(27)
    );
GPIO_0_tri_iobuf_28: component IOBUF
     port map (
      I => GPIO_0_tri_o_28(28),
      IO => GPIO_0_tri_io(28),
      O => GPIO_0_tri_i_28(28),
      T => GPIO_0_tri_t_28(28)
    );
GPIO_0_tri_iobuf_29: component IOBUF
     port map (
      I => GPIO_0_tri_o_29(29),
      IO => GPIO_0_tri_io(29),
      O => GPIO_0_tri_i_29(29),
      T => GPIO_0_tri_t_29(29)
    );
GPIO_0_tri_iobuf_3: component IOBUF
     port map (
      I => GPIO_0_tri_o_3(3),
      IO => GPIO_0_tri_io(3),
      O => GPIO_0_tri_i_3(3),
      T => GPIO_0_tri_t_3(3)
    );
GPIO_0_tri_iobuf_30: component IOBUF
     port map (
      I => GPIO_0_tri_o_30(30),
      IO => GPIO_0_tri_io(30),
      O => GPIO_0_tri_i_30(30),
      T => GPIO_0_tri_t_30(30)
    );
GPIO_0_tri_iobuf_31: component IOBUF
     port map (
      I => GPIO_0_tri_o_31(31),
      IO => GPIO_0_tri_io(31),
      O => GPIO_0_tri_i_31(31),
      T => GPIO_0_tri_t_31(31)
    );
GPIO_0_tri_iobuf_32: component IOBUF
     port map (
      I => GPIO_0_tri_o_32(32),
      IO => GPIO_0_tri_io(32),
      O => GPIO_0_tri_i_32(32),
      T => GPIO_0_tri_t_32(32)
    );
GPIO_0_tri_iobuf_33: component IOBUF
     port map (
      I => GPIO_0_tri_o_33(33),
      IO => GPIO_0_tri_io(33),
      O => GPIO_0_tri_i_33(33),
      T => GPIO_0_tri_t_33(33)
    );
GPIO_0_tri_iobuf_34: component IOBUF
     port map (
      I => GPIO_0_tri_o_34(34),
      IO => GPIO_0_tri_io(34),
      O => GPIO_0_tri_i_34(34),
      T => GPIO_0_tri_t_34(34)
    );
GPIO_0_tri_iobuf_35: component IOBUF
     port map (
      I => GPIO_0_tri_o_35(35),
      IO => GPIO_0_tri_io(35),
      O => GPIO_0_tri_i_35(35),
      T => GPIO_0_tri_t_35(35)
    );
GPIO_0_tri_iobuf_36: component IOBUF
     port map (
      I => GPIO_0_tri_o_36(36),
      IO => GPIO_0_tri_io(36),
      O => GPIO_0_tri_i_36(36),
      T => GPIO_0_tri_t_36(36)
    );
GPIO_0_tri_iobuf_37: component IOBUF
     port map (
      I => GPIO_0_tri_o_37(37),
      IO => GPIO_0_tri_io(37),
      O => GPIO_0_tri_i_37(37),
      T => GPIO_0_tri_t_37(37)
    );
GPIO_0_tri_iobuf_38: component IOBUF
     port map (
      I => GPIO_0_tri_o_38(38),
      IO => GPIO_0_tri_io(38),
      O => GPIO_0_tri_i_38(38),
      T => GPIO_0_tri_t_38(38)
    );
GPIO_0_tri_iobuf_39: component IOBUF
     port map (
      I => GPIO_0_tri_o_39(39),
      IO => GPIO_0_tri_io(39),
      O => GPIO_0_tri_i_39(39),
      T => GPIO_0_tri_t_39(39)
    );
GPIO_0_tri_iobuf_4: component IOBUF
     port map (
      I => GPIO_0_tri_o_4(4),
      IO => GPIO_0_tri_io(4),
      O => GPIO_0_tri_i_4(4),
      T => GPIO_0_tri_t_4(4)
    );
GPIO_0_tri_iobuf_40: component IOBUF
     port map (
      I => GPIO_0_tri_o_40(40),
      IO => GPIO_0_tri_io(40),
      O => GPIO_0_tri_i_40(40),
      T => GPIO_0_tri_t_40(40)
    );
GPIO_0_tri_iobuf_41: component IOBUF
     port map (
      I => GPIO_0_tri_o_41(41),
      IO => GPIO_0_tri_io(41),
      O => GPIO_0_tri_i_41(41),
      T => GPIO_0_tri_t_41(41)
    );
GPIO_0_tri_iobuf_42: component IOBUF
     port map (
      I => GPIO_0_tri_o_42(42),
      IO => GPIO_0_tri_io(42),
      O => GPIO_0_tri_i_42(42),
      T => GPIO_0_tri_t_42(42)
    );
GPIO_0_tri_iobuf_43: component IOBUF
     port map (
      I => GPIO_0_tri_o_43(43),
      IO => GPIO_0_tri_io(43),
      O => GPIO_0_tri_i_43(43),
      T => GPIO_0_tri_t_43(43)
    );
GPIO_0_tri_iobuf_44: component IOBUF
     port map (
      I => GPIO_0_tri_o_44(44),
      IO => GPIO_0_tri_io(44),
      O => GPIO_0_tri_i_44(44),
      T => GPIO_0_tri_t_44(44)
    );
GPIO_0_tri_iobuf_45: component IOBUF
     port map (
      I => GPIO_0_tri_o_45(45),
      IO => GPIO_0_tri_io(45),
      O => GPIO_0_tri_i_45(45),
      T => GPIO_0_tri_t_45(45)
    );
GPIO_0_tri_iobuf_46: component IOBUF
     port map (
      I => GPIO_0_tri_o_46(46),
      IO => GPIO_0_tri_io(46),
      O => GPIO_0_tri_i_46(46),
      T => GPIO_0_tri_t_46(46)
    );
GPIO_0_tri_iobuf_47: component IOBUF
     port map (
      I => GPIO_0_tri_o_47(47),
      IO => GPIO_0_tri_io(47),
      O => GPIO_0_tri_i_47(47),
      T => GPIO_0_tri_t_47(47)
    );
GPIO_0_tri_iobuf_48: component IOBUF
     port map (
      I => GPIO_0_tri_o_48(48),
      IO => GPIO_0_tri_io(48),
      O => GPIO_0_tri_i_48(48),
      T => GPIO_0_tri_t_48(48)
    );
GPIO_0_tri_iobuf_49: component IOBUF
     port map (
      I => GPIO_0_tri_o_49(49),
      IO => GPIO_0_tri_io(49),
      O => GPIO_0_tri_i_49(49),
      T => GPIO_0_tri_t_49(49)
    );
GPIO_0_tri_iobuf_5: component IOBUF
     port map (
      I => GPIO_0_tri_o_5(5),
      IO => GPIO_0_tri_io(5),
      O => GPIO_0_tri_i_5(5),
      T => GPIO_0_tri_t_5(5)
    );
GPIO_0_tri_iobuf_50: component IOBUF
     port map (
      I => GPIO_0_tri_o_50(50),
      IO => GPIO_0_tri_io(50),
      O => GPIO_0_tri_i_50(50),
      T => GPIO_0_tri_t_50(50)
    );
GPIO_0_tri_iobuf_51: component IOBUF
     port map (
      I => GPIO_0_tri_o_51(51),
      IO => GPIO_0_tri_io(51),
      O => GPIO_0_tri_i_51(51),
      T => GPIO_0_tri_t_51(51)
    );
GPIO_0_tri_iobuf_52: component IOBUF
     port map (
      I => GPIO_0_tri_o_52(52),
      IO => GPIO_0_tri_io(52),
      O => GPIO_0_tri_i_52(52),
      T => GPIO_0_tri_t_52(52)
    );
GPIO_0_tri_iobuf_53: component IOBUF
     port map (
      I => GPIO_0_tri_o_53(53),
      IO => GPIO_0_tri_io(53),
      O => GPIO_0_tri_i_53(53),
      T => GPIO_0_tri_t_53(53)
    );
GPIO_0_tri_iobuf_54: component IOBUF
     port map (
      I => GPIO_0_tri_o_54(54),
      IO => GPIO_0_tri_io(54),
      O => GPIO_0_tri_i_54(54),
      T => GPIO_0_tri_t_54(54)
    );
GPIO_0_tri_iobuf_55: component IOBUF
     port map (
      I => GPIO_0_tri_o_55(55),
      IO => GPIO_0_tri_io(55),
      O => GPIO_0_tri_i_55(55),
      T => GPIO_0_tri_t_55(55)
    );
GPIO_0_tri_iobuf_6: component IOBUF
     port map (
      I => GPIO_0_tri_o_6(6),
      IO => GPIO_0_tri_io(6),
      O => GPIO_0_tri_i_6(6),
      T => GPIO_0_tri_t_6(6)
    );
GPIO_0_tri_iobuf_7: component IOBUF
     port map (
      I => GPIO_0_tri_o_7(7),
      IO => GPIO_0_tri_io(7),
      O => GPIO_0_tri_i_7(7),
      T => GPIO_0_tri_t_7(7)
    );
GPIO_0_tri_iobuf_8: component IOBUF
     port map (
      I => GPIO_0_tri_o_8(8),
      IO => GPIO_0_tri_io(8),
      O => GPIO_0_tri_i_8(8),
      T => GPIO_0_tri_t_8(8)
    );
GPIO_0_tri_iobuf_9: component IOBUF
     port map (
      I => GPIO_0_tri_o_9(9),
      IO => GPIO_0_tri_io(9),
      O => GPIO_0_tri_i_9(9),
      T => GPIO_0_tri_t_9(9)
    );
vivado_system_i: component vivado_system
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GPIO_0_tri_i(55) => GPIO_0_tri_i_55(55),
      GPIO_0_tri_i(54) => GPIO_0_tri_i_54(54),
      GPIO_0_tri_i(53) => GPIO_0_tri_i_53(53),
      GPIO_0_tri_i(52) => GPIO_0_tri_i_52(52),
      GPIO_0_tri_i(51) => GPIO_0_tri_i_51(51),
      GPIO_0_tri_i(50) => GPIO_0_tri_i_50(50),
      GPIO_0_tri_i(49) => GPIO_0_tri_i_49(49),
      GPIO_0_tri_i(48) => GPIO_0_tri_i_48(48),
      GPIO_0_tri_i(47) => GPIO_0_tri_i_47(47),
      GPIO_0_tri_i(46) => GPIO_0_tri_i_46(46),
      GPIO_0_tri_i(45) => GPIO_0_tri_i_45(45),
      GPIO_0_tri_i(44) => GPIO_0_tri_i_44(44),
      GPIO_0_tri_i(43) => GPIO_0_tri_i_43(43),
      GPIO_0_tri_i(42) => GPIO_0_tri_i_42(42),
      GPIO_0_tri_i(41) => GPIO_0_tri_i_41(41),
      GPIO_0_tri_i(40) => GPIO_0_tri_i_40(40),
      GPIO_0_tri_i(39) => GPIO_0_tri_i_39(39),
      GPIO_0_tri_i(38) => GPIO_0_tri_i_38(38),
      GPIO_0_tri_i(37) => GPIO_0_tri_i_37(37),
      GPIO_0_tri_i(36) => GPIO_0_tri_i_36(36),
      GPIO_0_tri_i(35) => GPIO_0_tri_i_35(35),
      GPIO_0_tri_i(34) => GPIO_0_tri_i_34(34),
      GPIO_0_tri_i(33) => GPIO_0_tri_i_33(33),
      GPIO_0_tri_i(32) => GPIO_0_tri_i_32(32),
      GPIO_0_tri_i(31) => GPIO_0_tri_i_31(31),
      GPIO_0_tri_i(30) => GPIO_0_tri_i_30(30),
      GPIO_0_tri_i(29) => GPIO_0_tri_i_29(29),
      GPIO_0_tri_i(28) => GPIO_0_tri_i_28(28),
      GPIO_0_tri_i(27) => GPIO_0_tri_i_27(27),
      GPIO_0_tri_i(26) => GPIO_0_tri_i_26(26),
      GPIO_0_tri_i(25) => GPIO_0_tri_i_25(25),
      GPIO_0_tri_i(24) => GPIO_0_tri_i_24(24),
      GPIO_0_tri_i(23) => GPIO_0_tri_i_23(23),
      GPIO_0_tri_i(22) => GPIO_0_tri_i_22(22),
      GPIO_0_tri_i(21) => GPIO_0_tri_i_21(21),
      GPIO_0_tri_i(20) => GPIO_0_tri_i_20(20),
      GPIO_0_tri_i(19) => GPIO_0_tri_i_19(19),
      GPIO_0_tri_i(18) => GPIO_0_tri_i_18(18),
      GPIO_0_tri_i(17) => GPIO_0_tri_i_17(17),
      GPIO_0_tri_i(16) => GPIO_0_tri_i_16(16),
      GPIO_0_tri_i(15) => GPIO_0_tri_i_15(15),
      GPIO_0_tri_i(14) => GPIO_0_tri_i_14(14),
      GPIO_0_tri_i(13) => GPIO_0_tri_i_13(13),
      GPIO_0_tri_i(12) => GPIO_0_tri_i_12(12),
      GPIO_0_tri_i(11) => GPIO_0_tri_i_11(11),
      GPIO_0_tri_i(10) => GPIO_0_tri_i_10(10),
      GPIO_0_tri_i(9) => GPIO_0_tri_i_9(9),
      GPIO_0_tri_i(8) => GPIO_0_tri_i_8(8),
      GPIO_0_tri_i(7) => GPIO_0_tri_i_7(7),
      GPIO_0_tri_i(6) => GPIO_0_tri_i_6(6),
      GPIO_0_tri_i(5) => GPIO_0_tri_i_5(5),
      GPIO_0_tri_i(4) => GPIO_0_tri_i_4(4),
      GPIO_0_tri_i(3) => GPIO_0_tri_i_3(3),
      GPIO_0_tri_i(2) => GPIO_0_tri_i_2(2),
      GPIO_0_tri_i(1) => GPIO_0_tri_i_1(1),
      GPIO_0_tri_i(0) => GPIO_0_tri_i_0(0),
      GPIO_0_tri_o(55) => GPIO_0_tri_o_55(55),
      GPIO_0_tri_o(54) => GPIO_0_tri_o_54(54),
      GPIO_0_tri_o(53) => GPIO_0_tri_o_53(53),
      GPIO_0_tri_o(52) => GPIO_0_tri_o_52(52),
      GPIO_0_tri_o(51) => GPIO_0_tri_o_51(51),
      GPIO_0_tri_o(50) => GPIO_0_tri_o_50(50),
      GPIO_0_tri_o(49) => GPIO_0_tri_o_49(49),
      GPIO_0_tri_o(48) => GPIO_0_tri_o_48(48),
      GPIO_0_tri_o(47) => GPIO_0_tri_o_47(47),
      GPIO_0_tri_o(46) => GPIO_0_tri_o_46(46),
      GPIO_0_tri_o(45) => GPIO_0_tri_o_45(45),
      GPIO_0_tri_o(44) => GPIO_0_tri_o_44(44),
      GPIO_0_tri_o(43) => GPIO_0_tri_o_43(43),
      GPIO_0_tri_o(42) => GPIO_0_tri_o_42(42),
      GPIO_0_tri_o(41) => GPIO_0_tri_o_41(41),
      GPIO_0_tri_o(40) => GPIO_0_tri_o_40(40),
      GPIO_0_tri_o(39) => GPIO_0_tri_o_39(39),
      GPIO_0_tri_o(38) => GPIO_0_tri_o_38(38),
      GPIO_0_tri_o(37) => GPIO_0_tri_o_37(37),
      GPIO_0_tri_o(36) => GPIO_0_tri_o_36(36),
      GPIO_0_tri_o(35) => GPIO_0_tri_o_35(35),
      GPIO_0_tri_o(34) => GPIO_0_tri_o_34(34),
      GPIO_0_tri_o(33) => GPIO_0_tri_o_33(33),
      GPIO_0_tri_o(32) => GPIO_0_tri_o_32(32),
      GPIO_0_tri_o(31) => GPIO_0_tri_o_31(31),
      GPIO_0_tri_o(30) => GPIO_0_tri_o_30(30),
      GPIO_0_tri_o(29) => GPIO_0_tri_o_29(29),
      GPIO_0_tri_o(28) => GPIO_0_tri_o_28(28),
      GPIO_0_tri_o(27) => GPIO_0_tri_o_27(27),
      GPIO_0_tri_o(26) => GPIO_0_tri_o_26(26),
      GPIO_0_tri_o(25) => GPIO_0_tri_o_25(25),
      GPIO_0_tri_o(24) => GPIO_0_tri_o_24(24),
      GPIO_0_tri_o(23) => GPIO_0_tri_o_23(23),
      GPIO_0_tri_o(22) => GPIO_0_tri_o_22(22),
      GPIO_0_tri_o(21) => GPIO_0_tri_o_21(21),
      GPIO_0_tri_o(20) => GPIO_0_tri_o_20(20),
      GPIO_0_tri_o(19) => GPIO_0_tri_o_19(19),
      GPIO_0_tri_o(18) => GPIO_0_tri_o_18(18),
      GPIO_0_tri_o(17) => GPIO_0_tri_o_17(17),
      GPIO_0_tri_o(16) => GPIO_0_tri_o_16(16),
      GPIO_0_tri_o(15) => GPIO_0_tri_o_15(15),
      GPIO_0_tri_o(14) => GPIO_0_tri_o_14(14),
      GPIO_0_tri_o(13) => GPIO_0_tri_o_13(13),
      GPIO_0_tri_o(12) => GPIO_0_tri_o_12(12),
      GPIO_0_tri_o(11) => GPIO_0_tri_o_11(11),
      GPIO_0_tri_o(10) => GPIO_0_tri_o_10(10),
      GPIO_0_tri_o(9) => GPIO_0_tri_o_9(9),
      GPIO_0_tri_o(8) => GPIO_0_tri_o_8(8),
      GPIO_0_tri_o(7) => GPIO_0_tri_o_7(7),
      GPIO_0_tri_o(6) => GPIO_0_tri_o_6(6),
      GPIO_0_tri_o(5) => GPIO_0_tri_o_5(5),
      GPIO_0_tri_o(4) => GPIO_0_tri_o_4(4),
      GPIO_0_tri_o(3) => GPIO_0_tri_o_3(3),
      GPIO_0_tri_o(2) => GPIO_0_tri_o_2(2),
      GPIO_0_tri_o(1) => GPIO_0_tri_o_1(1),
      GPIO_0_tri_o(0) => GPIO_0_tri_o_0(0),
      GPIO_0_tri_t(55) => GPIO_0_tri_t_55(55),
      GPIO_0_tri_t(54) => GPIO_0_tri_t_54(54),
      GPIO_0_tri_t(53) => GPIO_0_tri_t_53(53),
      GPIO_0_tri_t(52) => GPIO_0_tri_t_52(52),
      GPIO_0_tri_t(51) => GPIO_0_tri_t_51(51),
      GPIO_0_tri_t(50) => GPIO_0_tri_t_50(50),
      GPIO_0_tri_t(49) => GPIO_0_tri_t_49(49),
      GPIO_0_tri_t(48) => GPIO_0_tri_t_48(48),
      GPIO_0_tri_t(47) => GPIO_0_tri_t_47(47),
      GPIO_0_tri_t(46) => GPIO_0_tri_t_46(46),
      GPIO_0_tri_t(45) => GPIO_0_tri_t_45(45),
      GPIO_0_tri_t(44) => GPIO_0_tri_t_44(44),
      GPIO_0_tri_t(43) => GPIO_0_tri_t_43(43),
      GPIO_0_tri_t(42) => GPIO_0_tri_t_42(42),
      GPIO_0_tri_t(41) => GPIO_0_tri_t_41(41),
      GPIO_0_tri_t(40) => GPIO_0_tri_t_40(40),
      GPIO_0_tri_t(39) => GPIO_0_tri_t_39(39),
      GPIO_0_tri_t(38) => GPIO_0_tri_t_38(38),
      GPIO_0_tri_t(37) => GPIO_0_tri_t_37(37),
      GPIO_0_tri_t(36) => GPIO_0_tri_t_36(36),
      GPIO_0_tri_t(35) => GPIO_0_tri_t_35(35),
      GPIO_0_tri_t(34) => GPIO_0_tri_t_34(34),
      GPIO_0_tri_t(33) => GPIO_0_tri_t_33(33),
      GPIO_0_tri_t(32) => GPIO_0_tri_t_32(32),
      GPIO_0_tri_t(31) => GPIO_0_tri_t_31(31),
      GPIO_0_tri_t(30) => GPIO_0_tri_t_30(30),
      GPIO_0_tri_t(29) => GPIO_0_tri_t_29(29),
      GPIO_0_tri_t(28) => GPIO_0_tri_t_28(28),
      GPIO_0_tri_t(27) => GPIO_0_tri_t_27(27),
      GPIO_0_tri_t(26) => GPIO_0_tri_t_26(26),
      GPIO_0_tri_t(25) => GPIO_0_tri_t_25(25),
      GPIO_0_tri_t(24) => GPIO_0_tri_t_24(24),
      GPIO_0_tri_t(23) => GPIO_0_tri_t_23(23),
      GPIO_0_tri_t(22) => GPIO_0_tri_t_22(22),
      GPIO_0_tri_t(21) => GPIO_0_tri_t_21(21),
      GPIO_0_tri_t(20) => GPIO_0_tri_t_20(20),
      GPIO_0_tri_t(19) => GPIO_0_tri_t_19(19),
      GPIO_0_tri_t(18) => GPIO_0_tri_t_18(18),
      GPIO_0_tri_t(17) => GPIO_0_tri_t_17(17),
      GPIO_0_tri_t(16) => GPIO_0_tri_t_16(16),
      GPIO_0_tri_t(15) => GPIO_0_tri_t_15(15),
      GPIO_0_tri_t(14) => GPIO_0_tri_t_14(14),
      GPIO_0_tri_t(13) => GPIO_0_tri_t_13(13),
      GPIO_0_tri_t(12) => GPIO_0_tri_t_12(12),
      GPIO_0_tri_t(11) => GPIO_0_tri_t_11(11),
      GPIO_0_tri_t(10) => GPIO_0_tri_t_10(10),
      GPIO_0_tri_t(9) => GPIO_0_tri_t_9(9),
      GPIO_0_tri_t(8) => GPIO_0_tri_t_8(8),
      GPIO_0_tri_t(7) => GPIO_0_tri_t_7(7),
      GPIO_0_tri_t(6) => GPIO_0_tri_t_6(6),
      GPIO_0_tri_t(5) => GPIO_0_tri_t_5(5),
      GPIO_0_tri_t(4) => GPIO_0_tri_t_4(4),
      GPIO_0_tri_t(3) => GPIO_0_tri_t_3(3),
      GPIO_0_tri_t(2) => GPIO_0_tri_t_2(2),
      GPIO_0_tri_t(1) => GPIO_0_tri_t_1(1),
      GPIO_0_tri_t(0) => GPIO_0_tri_t_0(0),
      USBIND_0_port_indctl(1 downto 0) => USBIND_0_port_indctl(1 downto 0),
      USBIND_0_vbus_pwrfault => USBIND_0_vbus_pwrfault,
      USBIND_0_vbus_pwrselect => USBIND_0_vbus_pwrselect,
      clk_in => clk_in,
      user_addr(31 downto 0) => user_addr(31 downto 0),
      user_clk => user_clk,
      user_irq => user_irq,
      user_rd_data(31 downto 0) => user_rd_data(31 downto 0),
      user_rden => user_rden,
      user_wr_data(31 downto 0) => user_wr_data(31 downto 0),
      user_wren => user_wren,
      user_wstrb(3 downto 0) => user_wstrb(3 downto 0),
      vga_blue(7 downto 0) => vga_blue(7 downto 0),
      vga_clk => vga_clk,
      vga_de => vga_de,
      vga_green(7 downto 0) => vga_green(7 downto 0),
      vga_hsync => vga_hsync,
      vga_red(7 downto 0) => vga_red(7 downto 0),
      vga_vsync => vga_vsync,
      xillybus_M_AXI_araddr(31 downto 0) => xillybus_M_AXI_araddr(31 downto 0),
      xillybus_M_AXI_arburst(1 downto 0) => xillybus_M_AXI_arburst(1 downto 0),
      xillybus_M_AXI_arcache(3 downto 0) => xillybus_M_AXI_arcache(3 downto 0),
      xillybus_M_AXI_arlen(3 downto 0) => xillybus_M_AXI_arlen(3 downto 0),
      xillybus_M_AXI_arprot(2 downto 0) => xillybus_M_AXI_arprot(2 downto 0),
      xillybus_M_AXI_arready => xillybus_M_AXI_arready,
      xillybus_M_AXI_arsize(2 downto 0) => xillybus_M_AXI_arsize(2 downto 0),
      xillybus_M_AXI_arvalid => xillybus_M_AXI_arvalid,
      xillybus_M_AXI_awaddr(31 downto 0) => xillybus_M_AXI_awaddr(31 downto 0),
      xillybus_M_AXI_awburst(1 downto 0) => xillybus_M_AXI_awburst(1 downto 0),
      xillybus_M_AXI_awcache(3 downto 0) => xillybus_M_AXI_awcache(3 downto 0),
      xillybus_M_AXI_awlen(3 downto 0) => xillybus_M_AXI_awlen(3 downto 0),
      xillybus_M_AXI_awprot(2 downto 0) => xillybus_M_AXI_awprot(2 downto 0),
      xillybus_M_AXI_awready => xillybus_M_AXI_awready,
      xillybus_M_AXI_awsize(2 downto 0) => xillybus_M_AXI_awsize(2 downto 0),
      xillybus_M_AXI_awvalid => xillybus_M_AXI_awvalid,
      xillybus_M_AXI_bready => xillybus_M_AXI_bready,
      xillybus_M_AXI_bresp(1 downto 0) => xillybus_M_AXI_bresp(1 downto 0),
      xillybus_M_AXI_bvalid => xillybus_M_AXI_bvalid,
      xillybus_M_AXI_rdata(63 downto 0) => xillybus_M_AXI_rdata(63 downto 0),
      xillybus_M_AXI_rlast => xillybus_M_AXI_rlast,
      xillybus_M_AXI_rready => xillybus_M_AXI_rready,
      xillybus_M_AXI_rresp(1 downto 0) => xillybus_M_AXI_rresp(1 downto 0),
      xillybus_M_AXI_rvalid => xillybus_M_AXI_rvalid,
      xillybus_M_AXI_wdata(63 downto 0) => xillybus_M_AXI_wdata(63 downto 0),
      xillybus_M_AXI_wlast => xillybus_M_AXI_wlast,
      xillybus_M_AXI_wready => xillybus_M_AXI_wready,
      xillybus_M_AXI_wstrb(7 downto 0) => xillybus_M_AXI_wstrb(7 downto 0),
      xillybus_M_AXI_wvalid => xillybus_M_AXI_wvalid,
      xillybus_S_AXI_araddr(31 downto 0) => xillybus_S_AXI_araddr(31 downto 0),
      xillybus_S_AXI_arready => xillybus_S_AXI_arready,
      xillybus_S_AXI_arvalid => xillybus_S_AXI_arvalid,
      xillybus_S_AXI_awaddr(31 downto 0) => xillybus_S_AXI_awaddr(31 downto 0),
      xillybus_S_AXI_awready => xillybus_S_AXI_awready,
      xillybus_S_AXI_awvalid => xillybus_S_AXI_awvalid,
      xillybus_S_AXI_bready => xillybus_S_AXI_bready,
      xillybus_S_AXI_bresp(1 downto 0) => xillybus_S_AXI_bresp(1 downto 0),
      xillybus_S_AXI_bvalid => xillybus_S_AXI_bvalid,
      xillybus_S_AXI_rdata(31 downto 0) => xillybus_S_AXI_rdata(31 downto 0),
      xillybus_S_AXI_rready => xillybus_S_AXI_rready,
      xillybus_S_AXI_rresp(1 downto 0) => xillybus_S_AXI_rresp(1 downto 0),
      xillybus_S_AXI_rvalid => xillybus_S_AXI_rvalid,
      xillybus_S_AXI_wdata(31 downto 0) => xillybus_S_AXI_wdata(31 downto 0),
      xillybus_S_AXI_wready => xillybus_S_AXI_wready,
      xillybus_S_AXI_wstrb(3 downto 0) => xillybus_S_AXI_wstrb(3 downto 0),
      xillybus_S_AXI_wvalid => xillybus_S_AXI_wvalid,
      xillybus_bus_clk => xillybus_bus_clk,
      xillybus_bus_rst_n => xillybus_bus_rst_n,
      xillybus_host_interrupt => xillybus_host_interrupt
    );
end STRUCTURE;
