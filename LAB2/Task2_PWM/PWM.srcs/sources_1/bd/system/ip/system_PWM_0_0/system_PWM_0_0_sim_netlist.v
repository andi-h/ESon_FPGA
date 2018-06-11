// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jun 11 12:47:11 2018
// Host        : DESKTOP-VQJOVAR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Projects/ESon_FPGA/LAB2/Task2_PWM/PWM.srcs/sources_1/bd/system/ip/system_PWM_0_0/system_PWM_0_0_sim_netlist.v
// Design      : system_PWM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_PWM_0_0,PWM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "PWM,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module system_PWM_0_0
   (clk,
    duty_cycle,
    pwm_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input clk;
  input [31:0]duty_cycle;
  output [7:0]pwm_out;

  wire clk;
  wire [31:0]duty_cycle;
  wire [0:0]\^pwm_out ;

  assign pwm_out[7] = \^pwm_out [0];
  assign pwm_out[6] = \^pwm_out [0];
  assign pwm_out[5] = \^pwm_out [0];
  assign pwm_out[4] = \^pwm_out [0];
  assign pwm_out[3] = \^pwm_out [0];
  assign pwm_out[2] = \^pwm_out [0];
  assign pwm_out[1] = \^pwm_out [0];
  assign pwm_out[0] = \^pwm_out [0];
  system_PWM_0_0_PWM U0
       (.clk(clk),
        .duty_cycle(duty_cycle),
        .pwm_out(\^pwm_out ));
endmodule

(* ORIG_REF_NAME = "PWM" *) 
module system_PWM_0_0_PWM
   (pwm_out,
    duty_cycle,
    clk);
  output [0:0]pwm_out;
  input [31:0]duty_cycle;
  input clk;

  wire clear;
  wire clk;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire [19:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [31:0]duty_cycle;
  wire p_0_in;
  wire [0:0]pwm_out;
  wire pwm_out0_carry__0_i_1_n_0;
  wire pwm_out0_carry__0_i_2_n_0;
  wire pwm_out0_carry__0_i_3_n_0;
  wire pwm_out0_carry__0_i_4_n_0;
  wire pwm_out0_carry__0_i_5_n_0;
  wire pwm_out0_carry__0_i_6_n_0;
  wire pwm_out0_carry__0_i_7_n_0;
  wire pwm_out0_carry__0_i_8_n_0;
  wire pwm_out0_carry__0_n_0;
  wire pwm_out0_carry__0_n_1;
  wire pwm_out0_carry__0_n_2;
  wire pwm_out0_carry__0_n_3;
  wire pwm_out0_carry__1_i_1_n_0;
  wire pwm_out0_carry__1_i_2_n_0;
  wire pwm_out0_carry__1_i_3_n_0;
  wire pwm_out0_carry__1_i_4_n_0;
  wire pwm_out0_carry__1_i_5_n_0;
  wire pwm_out0_carry__1_i_6_n_0;
  wire pwm_out0_carry__1_i_7_n_0;
  wire pwm_out0_carry__1_i_8_n_0;
  wire pwm_out0_carry__1_n_0;
  wire pwm_out0_carry__1_n_1;
  wire pwm_out0_carry__1_n_2;
  wire pwm_out0_carry__1_n_3;
  wire pwm_out0_carry__2_i_1_n_0;
  wire pwm_out0_carry__2_i_2_n_0;
  wire pwm_out0_carry__2_i_3_n_0;
  wire pwm_out0_carry__2_i_4_n_0;
  wire pwm_out0_carry__2_i_5_n_0;
  wire pwm_out0_carry__2_i_6_n_0;
  wire pwm_out0_carry__2_i_7_n_0;
  wire pwm_out0_carry__2_i_8_n_0;
  wire pwm_out0_carry__2_n_1;
  wire pwm_out0_carry__2_n_2;
  wire pwm_out0_carry__2_n_3;
  wire pwm_out0_carry_i_1_n_0;
  wire pwm_out0_carry_i_2_n_0;
  wire pwm_out0_carry_i_3_n_0;
  wire pwm_out0_carry_i_4_n_0;
  wire pwm_out0_carry_i_5_n_0;
  wire pwm_out0_carry_i_6_n_0;
  wire pwm_out0_carry_i_7_n_0;
  wire pwm_out0_carry_i_8_n_0;
  wire pwm_out0_carry_n_0;
  wire pwm_out0_carry_n_1;
  wire pwm_out0_carry_n_2;
  wire pwm_out0_carry_n_3;
  wire [3:3]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_pwm_out0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_pwm_out0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00000000DDDDDDD5)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(counter_reg[9]),
        .I2(counter_reg[8]),
        .I3(counter_reg[6]),
        .I4(counter_reg[7]),
        .I5(\counter[0]_i_4_n_0 ),
        .O(clear));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[0]_i_3 
       (.I0(counter_reg[12]),
        .I1(counter_reg[10]),
        .I2(counter_reg[15]),
        .I3(counter_reg[13]),
        .I4(counter_reg[11]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \counter[0]_i_4 
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .I2(counter_reg[19]),
        .I3(counter_reg[17]),
        .I4(counter_reg[16]),
        .I5(counter_reg[18]),
        .O(\counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(clear));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3],\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
  CARRY4 pwm_out0_carry
       (.CI(1'b0),
        .CO({pwm_out0_carry_n_0,pwm_out0_carry_n_1,pwm_out0_carry_n_2,pwm_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry_i_1_n_0,pwm_out0_carry_i_2_n_0,pwm_out0_carry_i_3_n_0,pwm_out0_carry_i_4_n_0}),
        .O(NLW_pwm_out0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry_i_5_n_0,pwm_out0_carry_i_6_n_0,pwm_out0_carry_i_7_n_0,pwm_out0_carry_i_8_n_0}));
  CARRY4 pwm_out0_carry__0
       (.CI(pwm_out0_carry_n_0),
        .CO({pwm_out0_carry__0_n_0,pwm_out0_carry__0_n_1,pwm_out0_carry__0_n_2,pwm_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry__0_i_1_n_0,pwm_out0_carry__0_i_2_n_0,pwm_out0_carry__0_i_3_n_0,pwm_out0_carry__0_i_4_n_0}),
        .O(NLW_pwm_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry__0_i_5_n_0,pwm_out0_carry__0_i_6_n_0,pwm_out0_carry__0_i_7_n_0,pwm_out0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry__0_i_1
       (.I0(duty_cycle[14]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .I3(duty_cycle[15]),
        .O(pwm_out0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry__0_i_2
       (.I0(duty_cycle[12]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .I3(duty_cycle[13]),
        .O(pwm_out0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry__0_i_3
       (.I0(duty_cycle[10]),
        .I1(counter_reg[10]),
        .I2(counter_reg[11]),
        .I3(duty_cycle[11]),
        .O(pwm_out0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry__0_i_4
       (.I0(duty_cycle[8]),
        .I1(counter_reg[8]),
        .I2(counter_reg[9]),
        .I3(duty_cycle[9]),
        .O(pwm_out0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry__0_i_5
       (.I0(duty_cycle[14]),
        .I1(counter_reg[14]),
        .I2(duty_cycle[15]),
        .I3(counter_reg[15]),
        .O(pwm_out0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry__0_i_6
       (.I0(duty_cycle[12]),
        .I1(counter_reg[12]),
        .I2(duty_cycle[13]),
        .I3(counter_reg[13]),
        .O(pwm_out0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry__0_i_7
       (.I0(duty_cycle[10]),
        .I1(counter_reg[10]),
        .I2(duty_cycle[11]),
        .I3(counter_reg[11]),
        .O(pwm_out0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry__0_i_8
       (.I0(duty_cycle[8]),
        .I1(counter_reg[8]),
        .I2(duty_cycle[9]),
        .I3(counter_reg[9]),
        .O(pwm_out0_carry__0_i_8_n_0));
  CARRY4 pwm_out0_carry__1
       (.CI(pwm_out0_carry__0_n_0),
        .CO({pwm_out0_carry__1_n_0,pwm_out0_carry__1_n_1,pwm_out0_carry__1_n_2,pwm_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry__1_i_1_n_0,pwm_out0_carry__1_i_2_n_0,pwm_out0_carry__1_i_3_n_0,pwm_out0_carry__1_i_4_n_0}),
        .O(NLW_pwm_out0_carry__1_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry__1_i_5_n_0,pwm_out0_carry__1_i_6_n_0,pwm_out0_carry__1_i_7_n_0,pwm_out0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    pwm_out0_carry__1_i_1
       (.I0(duty_cycle[22]),
        .I1(duty_cycle[23]),
        .O(pwm_out0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pwm_out0_carry__1_i_2
       (.I0(duty_cycle[20]),
        .I1(duty_cycle[21]),
        .O(pwm_out0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry__1_i_3
       (.I0(duty_cycle[18]),
        .I1(counter_reg[18]),
        .I2(counter_reg[19]),
        .I3(duty_cycle[19]),
        .O(pwm_out0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry__1_i_4
       (.I0(duty_cycle[16]),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(duty_cycle[17]),
        .O(pwm_out0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_out0_carry__1_i_5
       (.I0(duty_cycle[22]),
        .I1(duty_cycle[23]),
        .O(pwm_out0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_out0_carry__1_i_6
       (.I0(duty_cycle[20]),
        .I1(duty_cycle[21]),
        .O(pwm_out0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry__1_i_7
       (.I0(duty_cycle[18]),
        .I1(counter_reg[18]),
        .I2(duty_cycle[19]),
        .I3(counter_reg[19]),
        .O(pwm_out0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry__1_i_8
       (.I0(duty_cycle[16]),
        .I1(counter_reg[16]),
        .I2(duty_cycle[17]),
        .I3(counter_reg[17]),
        .O(pwm_out0_carry__1_i_8_n_0));
  CARRY4 pwm_out0_carry__2
       (.CI(pwm_out0_carry__1_n_0),
        .CO({p_0_in,pwm_out0_carry__2_n_1,pwm_out0_carry__2_n_2,pwm_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_out0_carry__2_i_1_n_0,pwm_out0_carry__2_i_2_n_0,pwm_out0_carry__2_i_3_n_0,pwm_out0_carry__2_i_4_n_0}),
        .O(NLW_pwm_out0_carry__2_O_UNCONNECTED[3:0]),
        .S({pwm_out0_carry__2_i_5_n_0,pwm_out0_carry__2_i_6_n_0,pwm_out0_carry__2_i_7_n_0,pwm_out0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    pwm_out0_carry__2_i_1
       (.I0(duty_cycle[30]),
        .I1(duty_cycle[31]),
        .O(pwm_out0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pwm_out0_carry__2_i_2
       (.I0(duty_cycle[28]),
        .I1(duty_cycle[29]),
        .O(pwm_out0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pwm_out0_carry__2_i_3
       (.I0(duty_cycle[26]),
        .I1(duty_cycle[27]),
        .O(pwm_out0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pwm_out0_carry__2_i_4
       (.I0(duty_cycle[24]),
        .I1(duty_cycle[25]),
        .O(pwm_out0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_out0_carry__2_i_5
       (.I0(duty_cycle[30]),
        .I1(duty_cycle[31]),
        .O(pwm_out0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_out0_carry__2_i_6
       (.I0(duty_cycle[28]),
        .I1(duty_cycle[29]),
        .O(pwm_out0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_out0_carry__2_i_7
       (.I0(duty_cycle[26]),
        .I1(duty_cycle[27]),
        .O(pwm_out0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_out0_carry__2_i_8
       (.I0(duty_cycle[24]),
        .I1(duty_cycle[25]),
        .O(pwm_out0_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_1
       (.I0(duty_cycle[6]),
        .I1(counter_reg[6]),
        .I2(counter_reg[7]),
        .I3(duty_cycle[7]),
        .O(pwm_out0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_2
       (.I0(duty_cycle[4]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(duty_cycle[5]),
        .O(pwm_out0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_3
       (.I0(duty_cycle[2]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(duty_cycle[3]),
        .O(pwm_out0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_out0_carry_i_4
       (.I0(duty_cycle[0]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(duty_cycle[1]),
        .O(pwm_out0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_5
       (.I0(duty_cycle[6]),
        .I1(counter_reg[6]),
        .I2(duty_cycle[7]),
        .I3(counter_reg[7]),
        .O(pwm_out0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_6
       (.I0(duty_cycle[4]),
        .I1(counter_reg[4]),
        .I2(duty_cycle[5]),
        .I3(counter_reg[5]),
        .O(pwm_out0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_7
       (.I0(duty_cycle[2]),
        .I1(counter_reg[2]),
        .I2(duty_cycle[3]),
        .I3(counter_reg[3]),
        .O(pwm_out0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_out0_carry_i_8
       (.I0(duty_cycle[0]),
        .I1(counter_reg[0]),
        .I2(duty_cycle[1]),
        .I3(counter_reg[1]),
        .O(pwm_out0_carry_i_8_n_0));
  FDRE \pwm_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(pwm_out),
        .R(1'b0));
endmodule
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
