// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jun 13 18:41:34 2018
// Host        : DESKTOP-VQJOVAR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Projects/ESon_FPGA/LAB2/Task4_OLED/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_stub.v
// Design      : top_oled_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_oled,Vivado 2018.1" *)
module top_oled_0(clk, reset_i, ascii_data_i, data_valid_i, 
  data_consumed_o, SDIN, SCLK, DC, RES, VBAT, VDD, dBtnU, dBTnD)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_i,ascii_data_i[7:0],data_valid_i,data_consumed_o,SDIN,SCLK,DC,RES,VBAT,VDD,dBtnU,dBTnD" */;
  input clk;
  input reset_i;
  input [7:0]ascii_data_i;
  input data_valid_i;
  output data_consumed_o;
  output SDIN;
  output SCLK;
  output DC;
  output RES;
  output VBAT;
  output VDD;
  input dBtnU;
  input dBTnD;
endmodule
