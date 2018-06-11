// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 11 12:47:11 2018
// Host        : DESKTOP-VQJOVAR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Projects/ESon_FPGA/LAB2/Task2_PWM/PWM.srcs/sources_1/bd/system/ip/system_PWM_0_0/system_PWM_0_0_stub.v
// Design      : system_PWM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PWM,Vivado 2018.1" *)
module system_PWM_0_0(clk, duty_cycle, pwm_out)
/* synthesis syn_black_box black_box_pad_pin="clk,duty_cycle[31:0],pwm_out[7:0]" */;
  input clk;
  input [31:0]duty_cycle;
  output [7:0]pwm_out;
endmodule
