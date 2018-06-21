// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jun 13 18:41:34 2018
// Host        : DESKTOP-VQJOVAR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/ESon_FPGA/LAB2/Task4_OLED/xillinux-eval-zedboard-2.0c/vhdl/vivado/xillydemo.srcs/sources_1/ip/top_oled_0/top_oled_0_sim_netlist.v
// Design      : top_oled_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_oled_0,top_oled,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "top_oled,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module top_oled_0
   (clk,
    reset_i,
    ascii_data_i,
    data_valid_i,
    data_consumed_o,
    SDIN,
    SCLK,
    DC,
    RES,
    VBAT,
    VDD,
    dBtnU,
    dBTnD);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_i, POLARITY ACTIVE_LOW" *) input reset_i;
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

  wire DC;
  wire RES;
  wire SCLK;
  wire SDIN;
  wire VBAT;
  wire VDD;
  wire [7:0]ascii_data_i;
  wire clk;
  wire dBTnD;
  wire dBtnU;
  wire data_consumed_o;
  wire data_valid_i;
  wire reset_i;

  top_oled_0_top_oled U0
       (.DC(DC),
        .RES(RES),
        .SCLK(SCLK),
        .SDIN(SDIN),
        .VBAT(VBAT),
        .VDD(VDD),
        .ascii_data_i(ascii_data_i),
        .clk(clk),
        .dBTnD(dBTnD),
        .dBtnU(dBtnU),
        .data_consumed_o(data_consumed_o),
        .data_valid_i(data_valid_i),
        .reset_i(reset_i));
endmodule

(* ORIG_REF_NAME = "OLEDCtrl" *) 
module top_oled_0_OLEDCtrl
   (DC,
    RES,
    VBAT,
    VDD,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[0] ,
    SDIN,
    SCLK,
    E,
    D,
    \s_write_ascii_data_reg[0] ,
    s_write_start_reg,
    s_update_clear_reg,
    s_update_start_reg,
    once_reg,
    clk,
    in0,
    once_reg_0,
    out,
    disp_on_start,
    write_start,
    update_start,
    \FSM_sequential_state_reg[1]_0 ,
    dBtnU,
    dBTnD,
    once_reg_1,
    data_valid_i,
    dBtnU_0,
    ascii_data_i,
    Q,
    \FSM_sequential_state_reg[2]_0 ,
    \s_write_base_addr_reg[6] ,
    \s_write_base_addr_reg[8] ,
    \s_write_ascii_data_reg[4] ,
    \s_write_ascii_data_reg[3] ,
    \s_write_ascii_data_reg[2] ,
    \s_write_ascii_data_reg[1] ,
    once_reg_2,
    update_clear);
  output DC;
  output RES;
  output VBAT;
  output VDD;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[0] ;
  output SDIN;
  output SCLK;
  output [0:0]E;
  output [6:0]D;
  output [0:0]\s_write_ascii_data_reg[0] ;
  output s_write_start_reg;
  output s_update_clear_reg;
  output s_update_start_reg;
  output once_reg;
  input clk;
  input [2:0]in0;
  input once_reg_0;
  input [2:0]out;
  input disp_on_start;
  input write_start;
  input update_start;
  input \FSM_sequential_state_reg[1]_0 ;
  input dBtnU;
  input dBTnD;
  input once_reg_1;
  input data_valid_i;
  input dBtnU_0;
  input [6:0]ascii_data_i;
  input [6:0]Q;
  input \FSM_sequential_state_reg[2]_0 ;
  input \s_write_base_addr_reg[6] ;
  input [5:0]\s_write_base_addr_reg[8] ;
  input \s_write_ascii_data_reg[4] ;
  input \s_write_ascii_data_reg[3] ;
  input \s_write_ascii_data_reg[2] ;
  input \s_write_ascii_data_reg[1] ;
  input once_reg_2;
  input update_clear;

  wire [6:0]D;
  wire DC;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state[2]_i_3__0_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire MS_DELAY_n_0;
  wire PIXEL_BUFFER_n_0;
  wire PIXEL_BUFFER_n_1;
  wire PIXEL_BUFFER_n_2;
  wire PIXEL_BUFFER_n_3;
  wire PIXEL_BUFFER_n_4;
  wire PIXEL_BUFFER_n_5;
  wire PIXEL_BUFFER_n_6;
  wire PIXEL_BUFFER_n_7;
  wire PIXEL_BUFFER_n_8;
  wire [6:0]Q;
  wire RES;
  wire SCLK;
  wire SDIN;
  wire SPI_CTRL_n_0;
  wire VBAT;
  wire VDD;
  wire [5:0]after_char_state;
  wire \after_char_state[0]_i_1_n_0 ;
  wire \after_char_state[1]_i_1_n_0 ;
  wire [5:1]after_page_state;
  wire \after_page_state[1]_i_1_n_0 ;
  wire \after_page_state[2]_i_1_n_0 ;
  wire \after_page_state[5]_i_1_n_0 ;
  wire \after_state[0]_i_1_n_0 ;
  wire \after_state[1]_i_1_n_0 ;
  wire \after_state[2]_i_1_n_0 ;
  wire \after_state[4]_i_1_n_0 ;
  wire \after_state[5]_i_1_n_0 ;
  wire \after_state[5]_i_2_n_0 ;
  wire \after_state[5]_i_3_n_0 ;
  wire \after_state_reg_n_0_[0] ;
  wire \after_state_reg_n_0_[1] ;
  wire \after_state_reg_n_0_[2] ;
  wire \after_state_reg_n_0_[4] ;
  wire \after_state_reg_n_0_[5] ;
  wire [5:2]after_update_state;
  wire \after_update_state[2]_i_1_n_0 ;
  wire \after_update_state[5]_i_1_n_0 ;
  wire \after_update_state[5]_i_2_n_0 ;
  wire [6:0]ascii_data_i;
  wire [9:0]char_lib_addr;
  wire clear_screen;
  wire clear_screen_i_1_n_0;
  wire clk;
  wire dBTnD;
  wire dBtnU;
  wire dBtnU_0;
  wire data_valid_i;
  wire disp_is_full;
  wire disp_is_full_i_1_n_0;
  wire disp_on_start;
  wire [2:0]in0;
  wire [14:0]init_operation;
  wire [7:0]iop_data;
  wire \iop_data[7]_i_1_n_0 ;
  wire \iop_data[7]_i_2_n_0 ;
  wire iop_res_set;
  wire iop_res_val;
  wire iop_state_select_reg_n_0;
  wire iop_vbat_set;
  wire iop_vbat_val;
  wire iop_vdd_set;
  wire iop_vdd_val;
  wire oled_dc_i_1_n_0;
  wire oled_dc_i_3_n_0;
  wire oled_dc_i_4_n_0;
  wire oled_res_i_1_n_0;
  wire oled_res_i_2_n_0;
  wire oled_vbat_i_1_n_0;
  wire oled_vbat_i_2_n_0;
  wire oled_vdd_i_1_n_0;
  wire oled_vdd_i_2_n_0;
  wire once_i_2_n_0;
  wire once_reg;
  wire once_reg_0;
  wire once_reg_1;
  wire once_reg_2;
  wire [2:0]out;
  wire [8:0]pbuf_read_addr;
  wire [7:0]pbuf_write_data;
  wire s_update_clear_i_3_n_0;
  wire s_update_clear_reg;
  wire s_update_start_i_2_n_0;
  wire s_update_start_i_3_n_0;
  wire s_update_start_reg;
  wire \s_write_ascii_data[2]_i_2_n_0 ;
  wire \s_write_ascii_data[6]_i_3_n_0 ;
  wire [0:0]\s_write_ascii_data_reg[0] ;
  wire \s_write_ascii_data_reg[1] ;
  wire \s_write_ascii_data_reg[2] ;
  wire \s_write_ascii_data_reg[3] ;
  wire \s_write_ascii_data_reg[4] ;
  wire \s_write_base_addr[8]_i_3_n_0 ;
  wire \s_write_base_addr_reg[6] ;
  wire [5:0]\s_write_base_addr_reg[8] ;
  wire s_write_start_reg;
  wire \startup_count[0]_i_1_n_0 ;
  wire \startup_count[1]_i_1_n_0 ;
  wire \startup_count[2]_i_1_n_0 ;
  wire \startup_count[3]_i_1_n_0 ;
  wire \startup_count[3]_i_2_n_0 ;
  wire \startup_count_reg_n_0_[0] ;
  wire \startup_count_reg_n_0_[1] ;
  wire \startup_count_reg_n_0_[2] ;
  wire \startup_count_reg_n_0_[3] ;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[5]_i_2_n_0 ;
  wire \state[5]_i_3_n_0 ;
  wire \state[5]_i_4_n_0 ;
  wire \state[5]_i_5_n_0 ;
  wire \state[5]_i_6_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[6]_i_2_n_0 ;
  wire \state[6]_i_3_n_0 ;
  wire \state[6]_i_4_n_0 ;
  wire \state[6]_i_5_n_0 ;
  wire \state[7]_i_2_n_0 ;
  wire \state[7]_i_3_n_0 ;
  wire \state[7]_i_5_n_0 ;
  wire \state[7]_i_6_n_0 ;
  wire \state[7]_i_8_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire \state_reg_n_0_[6] ;
  wire \state_reg_n_0_[7] ;
  wire [7:0]temp_delay_ms;
  wire \temp_delay_ms[2]_i_1_n_0 ;
  wire \temp_delay_ms[5]_i_1_n_0 ;
  wire \temp_delay_ms[6]_i_1_n_0 ;
  wire \temp_delay_ms[7]_i_1_n_0 ;
  wire \temp_delay_ms[7]_i_2_n_0 ;
  wire temp_delay_start_i_1_n_0;
  wire temp_delay_start_reg_n_0;
  wire \temp_index[0]_i_1_n_0 ;
  wire \temp_index[1]_i_1_n_0 ;
  wire \temp_index[2]_i_1_n_0 ;
  wire \temp_index[3]_i_1_n_0 ;
  wire \temp_index[4]_i_1_n_0 ;
  wire \temp_index[4]_i_2_n_0 ;
  wire \temp_index[5]_i_1_n_0 ;
  wire \temp_index[5]_i_2_n_0 ;
  wire \temp_index[6]_i_1_n_0 ;
  wire \temp_index[6]_i_2_n_0 ;
  wire \temp_index[6]_i_3_n_0 ;
  wire \temp_page[0]_i_1_n_0 ;
  wire \temp_page[1]_i_1_n_0 ;
  wire \temp_page[1]_i_2_n_0 ;
  wire \temp_page[1]_i_3_n_0 ;
  wire \temp_page[1]_i_4_n_0 ;
  wire \temp_page[1]_i_5_n_0 ;
  wire \temp_page[1]_i_6_n_0 ;
  wire \temp_page[1]_i_7_n_0 ;
  wire [7:0]temp_spi_data;
  wire \temp_spi_data[0]_i_2_n_0 ;
  wire \temp_spi_data[1]_i_2_n_0 ;
  wire \temp_spi_data[1]_i_3_n_0 ;
  wire \temp_spi_data[4]_i_3_n_0 ;
  wire \temp_spi_data[5]_i_2_n_0 ;
  wire \temp_spi_data[7]_i_1_n_0 ;
  wire \temp_spi_data[7]_i_3_n_0 ;
  wire \temp_spi_data[7]_i_4_n_0 ;
  wire temp_spi_start;
  wire temp_spi_start_i_1_n_0;
  wire temp_spi_start_i_3_n_0;
  wire temp_spi_start_reg_n_0;
  wire \temp_write_ascii[6]_i_1_n_0 ;
  wire [8:3]temp_write_base_addr;
  wire update_clear;
  wire \update_page_count[0]_i_1_n_0 ;
  wire \update_page_count[1]_i_1_n_0 ;
  wire \update_page_count[1]_i_2_n_0 ;
  wire \update_page_count[2]_i_1_n_0 ;
  wire \update_page_count[2]_i_2_n_0 ;
  wire \update_page_count[2]_i_3_n_0 ;
  wire \update_page_count[2]_i_4_n_0 ;
  wire \update_page_count[2]_i_5_n_0 ;
  wire \update_page_count_reg_n_0_[0] ;
  wire \update_page_count_reg_n_0_[1] ;
  wire \update_page_count_reg_n_0_[2] ;
  wire update_start;
  wire \write_byte_count[0]_i_1_n_0 ;
  wire \write_byte_count[1]_i_1_n_0 ;
  wire \write_byte_count[2]_i_1_n_0 ;
  wire \write_byte_count[2]_i_2_n_0 ;
  wire write_start;

  top_oled_0_charLib CHAR_LIB
       (.addra(char_lib_addr),
        .clk(clk),
        .douta(pbuf_write_data));
  LUT4 #(
    .INIT(16'h2F20)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(out[0]),
        .I2(\FSM_sequential_state[2]_i_3__0_n_0 ),
        .I3(in0[0]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\temp_index[6]_i_3_n_0 ),
        .I1(\state[6]_i_2_n_0 ),
        .I2(write_start),
        .I3(\s_write_base_addr_reg[6] ),
        .I4(\s_write_base_addr_reg[8] [5]),
        .I5(\FSM_sequential_state_reg[2]_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33E0FFFF33E00000)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(once_reg_0),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\FSM_sequential_state[2]_i_3__0_n_0 ),
        .I5(in0[1]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(\FSM_sequential_state[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3__0_n_0 ),
        .I2(in0[2]),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h11FF11D1)) 
    \FSM_sequential_state[2]_i_2__0 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(out[0]),
        .I2(\s_write_ascii_data[6]_i_3_n_0 ),
        .I3(out[1]),
        .I4(out[2]),
        .O(\FSM_sequential_state[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAB)) 
    \FSM_sequential_state[2]_i_3__0 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\s_write_base_addr[8]_i_3_n_0 ),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000F1111000F1)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\state[6]_i_2_n_0 ),
        .I1(\temp_index[6]_i_3_n_0 ),
        .I2(out[2]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(update_start),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010001)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(write_start),
        .I1(\state[6]_i_2_n_0 ),
        .I2(\temp_index[6]_i_3_n_0 ),
        .I3(once_reg_1),
        .I4(out[2]),
        .I5(out[1]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  top_oled_0_init_sequence_rom INIT_SEQ
       (.Q({\startup_count_reg_n_0_[3] ,\startup_count_reg_n_0_[2] ,\startup_count_reg_n_0_[1] ,\startup_count_reg_n_0_[0] }),
        .clk(clk),
        .douta(init_operation));
  top_oled_0_delay_ms MS_DELAY
       (.D(temp_delay_ms),
        .E(MS_DELAY_n_0),
        .\FSM_sequential_state_reg[2] (SPI_CTRL_n_0),
        .Q({\state_reg_n_0_[7] ,\state_reg_n_0_[5] ,\state_reg_n_0_[4] ,\state_reg_n_0_[3] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .clk(clk),
        .disp_on_start(disp_on_start),
        .\state_reg[1] (\temp_index[4]_i_2_n_0 ),
        .\state_reg[4] (\state[7]_i_3_n_0 ),
        .temp_delay_start_reg(temp_delay_start_reg_n_0),
        .temp_spi_start_reg(temp_spi_start_reg_n_0));
  top_oled_0_pixel_buffer PIXEL_BUFFER
       (.D({PIXEL_BUFFER_n_1,PIXEL_BUFFER_n_2,PIXEL_BUFFER_n_3,PIXEL_BUFFER_n_4,PIXEL_BUFFER_n_5,PIXEL_BUFFER_n_6,PIXEL_BUFFER_n_7,PIXEL_BUFFER_n_8}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (PIXEL_BUFFER_n_0),
        .Q({\state_reg_n_0_[7] ,\state_reg_n_0_[6] ,\state_reg_n_0_[5] ,\state_reg_n_0_[4] ,\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .addra({temp_write_base_addr,char_lib_addr[2:0]}),
        .clear_screen(clear_screen),
        .clk(clk),
        .disp_is_full(disp_is_full),
        .douta(pbuf_write_data),
        .\iop_data_reg[7] (iop_data),
        .pbuf_read_addr(pbuf_read_addr),
        .\state_reg[0] (\temp_spi_data[7]_i_4_n_0 ),
        .\state_reg[4] (\temp_index[6]_i_3_n_0 ),
        .\state_reg[5] (\temp_spi_data[1]_i_2_n_0 ),
        .\state_reg[5]_0 (\temp_spi_data[1]_i_3_n_0 ),
        .\update_page_count_reg[0] (\temp_spi_data[5]_i_2_n_0 ),
        .\update_page_count_reg[0]_0 (\temp_spi_data[0]_i_2_n_0 ),
        .\update_page_count_reg[0]_1 (\temp_spi_data[4]_i_3_n_0 ));
  top_oled_0_SpiCtrl SPI_CTRL
       (.Q(temp_spi_data),
        .SCLK(SCLK),
        .SDIN(SDIN),
        .clk(clk),
        .\state_reg[0] (SPI_CTRL_n_0),
        .temp_spi_start_reg(temp_spi_start_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \after_char_state[0]_i_1 
       (.I0(pbuf_read_addr[6]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\temp_page[1]_i_7_n_0 ),
        .O(\after_char_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \after_char_state[1]_i_1 
       (.I0(\temp_page[1]_i_7_n_0 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(pbuf_read_addr[6]),
        .O(\after_char_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_char_state_reg[0] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\after_char_state[0]_i_1_n_0 ),
        .Q(after_char_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_char_state_reg[1] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\after_char_state[1]_i_1_n_0 ),
        .Q(after_char_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_char_state_reg[5] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(1'b1),
        .Q(after_char_state[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \after_page_state[1]_i_1 
       (.I0(pbuf_read_addr[8]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(pbuf_read_addr[7]),
        .O(\after_page_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \after_page_state[2]_i_1 
       (.I0(after_update_state[2]),
        .I1(pbuf_read_addr[7]),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(pbuf_read_addr[8]),
        .O(\after_page_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \after_page_state[5]_i_1 
       (.I0(pbuf_read_addr[7]),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(pbuf_read_addr[8]),
        .I4(after_update_state[5]),
        .O(\after_page_state[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[1] 
       (.C(clk),
        .CE(\temp_page[1]_i_1_n_0 ),
        .D(\after_page_state[1]_i_1_n_0 ),
        .Q(after_page_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[2] 
       (.C(clk),
        .CE(\temp_page[1]_i_1_n_0 ),
        .D(\after_page_state[2]_i_1_n_0 ),
        .Q(after_page_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_page_state_reg[5] 
       (.C(clk),
        .CE(\temp_page[1]_i_1_n_0 ),
        .D(\after_page_state[5]_i_1_n_0 ),
        .Q(after_page_state[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFBBBFB)) 
    \after_state[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(after_char_state[0]),
        .O(\after_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB0908090)) 
    \after_state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(after_char_state[1]),
        .O(\after_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \after_state[2]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\after_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00007FFF)) 
    \after_state[4]_i_1 
       (.I0(\startup_count_reg_n_0_[2] ),
        .I1(\startup_count_reg_n_0_[0] ),
        .I2(\startup_count_reg_n_0_[1] ),
        .I3(\startup_count_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\after_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000A000F00A20000)) 
    \after_state[5]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\update_page_count_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(oled_dc_i_3_n_0),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\after_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFC55FF55)) 
    \after_state[5]_i_2 
       (.I0(\after_state[5]_i_3_n_0 ),
        .I1(after_char_state[5]),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\after_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \after_state[5]_i_3 
       (.I0(\startup_count_reg_n_0_[2] ),
        .I1(\startup_count_reg_n_0_[0] ),
        .I2(\startup_count_reg_n_0_[1] ),
        .I3(\startup_count_reg_n_0_[3] ),
        .O(\after_state[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[0] 
       (.C(clk),
        .CE(\after_state[5]_i_1_n_0 ),
        .D(\after_state[0]_i_1_n_0 ),
        .Q(\after_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[1] 
       (.C(clk),
        .CE(\after_state[5]_i_1_n_0 ),
        .D(\after_state[1]_i_1_n_0 ),
        .Q(\after_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[2] 
       (.C(clk),
        .CE(\after_state[5]_i_1_n_0 ),
        .D(\after_state[2]_i_1_n_0 ),
        .Q(\after_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[4] 
       (.C(clk),
        .CE(\after_state[5]_i_1_n_0 ),
        .D(\after_state[4]_i_1_n_0 ),
        .Q(\after_state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_state_reg[5] 
       (.C(clk),
        .CE(\after_state[5]_i_1_n_0 ),
        .D(\after_state[5]_i_2_n_0 ),
        .Q(\after_state_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \after_update_state[2]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\after_update_state[5]_i_2_n_0 ),
        .I2(after_update_state[2]),
        .O(\after_update_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \after_update_state[5]_i_1 
       (.I0(\after_update_state[5]_i_2_n_0 ),
        .I1(after_update_state[5]),
        .O(\after_update_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001030000010000)) 
    \after_update_state[5]_i_2 
       (.I0(\after_state[5]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\iop_data[7]_i_2_n_0 ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(update_start),
        .O(\after_update_state[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \after_update_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\after_update_state[2]_i_1_n_0 ),
        .Q(after_update_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \after_update_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\after_update_state[5]_i_1_n_0 ),
        .Q(after_update_state[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hBFB0)) 
    clear_screen_i_1
       (.I0(update_clear),
        .I1(\state_reg_n_0_[5] ),
        .I2(\after_update_state[5]_i_2_n_0 ),
        .I3(clear_screen),
        .O(clear_screen_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clear_screen_reg
       (.C(clk),
        .CE(1'b1),
        .D(clear_screen_i_1_n_0),
        .Q(clear_screen),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    disp_is_full_i_1
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\iop_data[7]_i_2_n_0 ),
        .I4(disp_is_full),
        .O(disp_is_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    disp_is_full_reg
       (.C(clk),
        .CE(1'b1),
        .D(disp_is_full_i_1_n_0),
        .Q(disp_is_full),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \iop_data[7]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\iop_data[7]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .O(\iop_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \iop_data[7]_i_2 
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[7] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\iop_data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[0] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[0]),
        .Q(iop_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[1] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[1]),
        .Q(iop_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[2] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[2]),
        .Q(iop_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[3] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[3]),
        .Q(iop_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[4] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[4]),
        .Q(iop_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[5] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[5]),
        .Q(iop_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[6] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[6]),
        .Q(iop_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \iop_data_reg[7] 
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[7]),
        .Q(iop_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iop_res_set_reg
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[13]),
        .Q(iop_res_set),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iop_res_val_reg
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[12]),
        .Q(iop_res_val),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iop_state_select_reg
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[14]),
        .Q(iop_state_select_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iop_vbat_set_reg
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[9]),
        .Q(iop_vbat_set),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iop_vbat_val_reg
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[8]),
        .Q(iop_vbat_val),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iop_vdd_set_reg
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[11]),
        .Q(iop_vdd_set),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    iop_vdd_val_reg
       (.C(clk),
        .CE(\iop_data[7]_i_1_n_0 ),
        .D(init_operation[10]),
        .Q(iop_vdd_val),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00FFFDFF000A00)) 
    oled_dc_i_1
       (.I0(PIXEL_BUFFER_n_0),
        .I1(\update_page_count_reg_n_0_[2] ),
        .I2(oled_dc_i_3_n_0),
        .I3(\state_reg_n_0_[1] ),
        .I4(oled_dc_i_4_n_0),
        .I5(DC),
        .O(oled_dc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    oled_dc_i_3
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[7] ),
        .I3(\state_reg_n_0_[6] ),
        .O(oled_dc_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    oled_dc_i_4
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\iop_data[7]_i_2_n_0 ),
        .O(oled_dc_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    oled_dc_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_dc_i_1_n_0),
        .Q(DC),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    oled_res_i_1
       (.I0(iop_res_val),
        .I1(oled_res_i_2_n_0),
        .I2(iop_res_set),
        .I3(RES),
        .O(oled_res_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    oled_res_i_2
       (.I0(\iop_data[7]_i_2_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .O(oled_res_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    oled_res_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_res_i_1_n_0),
        .Q(RES),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F20)) 
    oled_vbat_i_1
       (.I0(iop_vbat_val),
        .I1(\state_reg_n_0_[5] ),
        .I2(oled_vbat_i_2_n_0),
        .I3(VBAT),
        .O(oled_vbat_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30000200)) 
    oled_vbat_i_2
       (.I0(iop_vbat_set),
        .I1(\iop_data[7]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .O(oled_vbat_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    oled_vbat_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_vbat_i_1_n_0),
        .Q(VBAT),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F20)) 
    oled_vdd_i_1
       (.I0(iop_vdd_val),
        .I1(\state_reg_n_0_[5] ),
        .I2(oled_vdd_i_2_n_0),
        .I3(VDD),
        .O(oled_vdd_i_1_n_0));
  LUT6 #(
    .INIT(64'h0C00000000020000)) 
    oled_vdd_i_2
       (.I0(iop_vdd_set),
        .I1(\state_reg_n_0_[1] ),
        .I2(oled_dc_i_3_n_0),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[5] ),
        .O(oled_vdd_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    oled_vdd_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_vdd_i_1_n_0),
        .Q(VDD),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    once_i_1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(once_i_2_n_0),
        .I3(out[0]),
        .I4(once_reg_1),
        .O(once_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    once_i_2
       (.I0(\s_write_base_addr_reg[8] [5]),
        .I1(\s_write_base_addr_reg[6] ),
        .I2(write_start),
        .I3(\state_reg_n_0_[0] ),
        .I4(\iop_data[7]_i_2_n_0 ),
        .I5(\temp_index[6]_i_3_n_0 ),
        .O(once_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA808A)) 
    s_update_clear_i_1
       (.I0(once_reg_2),
        .I1(s_update_clear_i_3_n_0),
        .I2(out[0]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(update_clear),
        .O(s_update_clear_reg));
  LUT6 #(
    .INIT(64'h0000000000FF4040)) 
    s_update_clear_i_3
       (.I0(data_valid_i),
        .I1(once_reg_1),
        .I2(dBtnU_0),
        .I3(\s_write_base_addr[8]_i_3_n_0 ),
        .I4(out[2]),
        .I5(out[1]),
        .O(s_update_clear_i_3_n_0));
  LUT6 #(
    .INIT(64'hBBBFBFBFBBB0B0B0)) 
    s_update_start_i_1
       (.I0(s_update_start_i_2_n_0),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(s_update_start_i_3_n_0),
        .I3(out[0]),
        .I4(s_update_clear_i_3_n_0),
        .I5(update_start),
        .O(s_update_start_reg));
  LUT6 #(
    .INIT(64'h0000000000FFE0E0)) 
    s_update_start_i_2
       (.I0(dBtnU),
        .I1(dBTnD),
        .I2(once_reg_1),
        .I3(\s_write_base_addr[8]_i_3_n_0 ),
        .I4(out[2]),
        .I5(out[1]),
        .O(s_update_start_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    s_update_start_i_3
       (.I0(out[0]),
        .I1(out[1]),
        .I2(once_i_2_n_0),
        .I3(out[2]),
        .O(s_update_start_i_3_n_0));
  LUT4 #(
    .INIT(16'h0FDD)) 
    \s_write_ascii_data[0]_i_1 
       (.I0(\s_write_ascii_data[6]_i_3_n_0 ),
        .I1(ascii_data_i[0]),
        .I2(Q[0]),
        .I3(out[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h08F8F808)) 
    \s_write_ascii_data[1]_i_1 
       (.I0(\s_write_ascii_data[6]_i_3_n_0 ),
        .I1(ascii_data_i[1]),
        .I2(out[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h888888888FFFF888)) 
    \s_write_ascii_data[2]_i_1 
       (.I0(\s_write_ascii_data[2]_i_2_n_0 ),
        .I1(ascii_data_i[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_sequential_state_reg[2]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \s_write_ascii_data[2]_i_2 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\s_write_ascii_data[6]_i_3_n_0 ),
        .O(\s_write_ascii_data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF00F8888)) 
    \s_write_ascii_data[3]_i_1 
       (.I0(\s_write_ascii_data[6]_i_3_n_0 ),
        .I1(ascii_data_i[3]),
        .I2(\s_write_ascii_data_reg[1] ),
        .I3(Q[3]),
        .I4(out[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF00F8888)) 
    \s_write_ascii_data[4]_i_1 
       (.I0(\s_write_ascii_data[6]_i_3_n_0 ),
        .I1(ascii_data_i[4]),
        .I2(\s_write_ascii_data_reg[2] ),
        .I3(Q[4]),
        .I4(out[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF00F8888)) 
    \s_write_ascii_data[5]_i_1 
       (.I0(\s_write_ascii_data[6]_i_3_n_0 ),
        .I1(ascii_data_i[5]),
        .I2(\s_write_ascii_data_reg[3] ),
        .I3(Q[5]),
        .I4(out[1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00000000F8FF0000)) 
    \s_write_ascii_data[6]_i_1 
       (.I0(data_valid_i),
        .I1(once_reg_1),
        .I2(out[1]),
        .I3(\s_write_ascii_data[6]_i_3_n_0 ),
        .I4(out[0]),
        .I5(out[2]),
        .O(\s_write_ascii_data_reg[0] ));
  LUT5 #(
    .INIT(32'h9F9F909F)) 
    \s_write_ascii_data[6]_i_2 
       (.I0(Q[6]),
        .I1(\s_write_ascii_data_reg[4] ),
        .I2(out[1]),
        .I3(\s_write_ascii_data[6]_i_3_n_0 ),
        .I4(ascii_data_i[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \s_write_ascii_data[6]_i_3 
       (.I0(write_start),
        .I1(\state_reg_n_0_[0] ),
        .I2(\iop_data[7]_i_2_n_0 ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .I5(once_reg_1),
        .O(\s_write_ascii_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55D555D55DD55DDD)) 
    \s_write_base_addr[8]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(once_reg_1),
        .I5(\s_write_base_addr[8]_i_3_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \s_write_base_addr[8]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\iop_data[7]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(write_start),
        .O(\s_write_base_addr[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFC3F0C34)) 
    s_write_start_i_1
       (.I0(\s_write_ascii_data[6]_i_3_n_0 ),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(write_start),
        .O(s_write_start_reg));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \startup_count[0]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\startup_count_reg_n_0_[0] ),
        .O(\startup_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \startup_count[1]_i_1 
       (.I0(\startup_count_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\startup_count_reg_n_0_[1] ),
        .O(\startup_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \startup_count[2]_i_1 
       (.I0(\startup_count_reg_n_0_[0] ),
        .I1(\startup_count_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\startup_count_reg_n_0_[2] ),
        .O(\startup_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000A0C)) 
    \startup_count[3]_i_1 
       (.I0(\after_state[5]_i_3_n_0 ),
        .I1(disp_on_start),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\iop_data[7]_i_2_n_0 ),
        .O(\startup_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \startup_count[3]_i_2 
       (.I0(\startup_count_reg_n_0_[1] ),
        .I1(\startup_count_reg_n_0_[0] ),
        .I2(\startup_count_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\startup_count_reg_n_0_[3] ),
        .O(\startup_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \startup_count_reg[0] 
       (.C(clk),
        .CE(\startup_count[3]_i_1_n_0 ),
        .D(\startup_count[0]_i_1_n_0 ),
        .Q(\startup_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \startup_count_reg[1] 
       (.C(clk),
        .CE(\startup_count[3]_i_1_n_0 ),
        .D(\startup_count[1]_i_1_n_0 ),
        .Q(\startup_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \startup_count_reg[2] 
       (.C(clk),
        .CE(\startup_count[3]_i_1_n_0 ),
        .D(\startup_count[2]_i_1_n_0 ),
        .Q(\startup_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \startup_count_reg[3] 
       (.C(clk),
        .CE(\startup_count[3]_i_1_n_0 ),
        .D(\startup_count[3]_i_2_n_0 ),
        .Q(\startup_count_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[6]_i_5_n_0 ),
        .I3(\state[0]_i_4_n_0 ),
        .I4(\state[4]_i_3_n_0 ),
        .I5(\state[0]_i_5_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080808)) 
    \state[0]_i_2 
       (.I0(\temp_page[1]_i_5_n_0 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state[4]_i_2_n_0 ),
        .I4(\after_state_reg_n_0_[0] ),
        .I5(\state[0]_i_6_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000880F)) 
    \state[0]_i_3 
       (.I0(\state[5]_i_5_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(oled_dc_i_3_n_0),
        .I3(write_start),
        .I4(\update_page_count_reg_n_0_[2] ),
        .I5(\temp_index[6]_i_3_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[0]_i_4 
       (.I0(PIXEL_BUFFER_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(char_lib_addr[2]),
        .I3(char_lib_addr[1]),
        .I4(char_lib_addr[0]),
        .I5(\state[5]_i_6_n_0 ),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0405050)) 
    \state[0]_i_5 
       (.I0(\state_reg_n_0_[0] ),
        .I1(update_start),
        .I2(\state[5]_i_5_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .I4(write_start),
        .I5(\temp_index[6]_i_3_n_0 ),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h000E0000)) 
    \state[0]_i_6 
       (.I0(\state_reg_n_0_[5] ),
        .I1(iop_state_select_reg_n_0),
        .I2(\iop_data[7]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .O(\state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[4]_i_2_n_0 ),
        .I2(\after_state_reg_n_0_[1] ),
        .I3(\state[3]_i_2_n_0 ),
        .I4(\temp_page[1]_i_6_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \state[1]_i_2 
       (.I0(\temp_page[1]_i_6_n_0 ),
        .I1(\temp_page[1]_i_5_n_0 ),
        .I2(\state[1]_i_4_n_0 ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\update_page_count_reg_n_0_[2] ),
        .I5(after_page_state[1]),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \state[1]_i_3 
       (.I0(oled_dc_i_3_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(disp_on_start),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\temp_delay_ms[7]_i_2_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \state[1]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[7] ),
        .I5(\state_reg_n_0_[6] ),
        .O(\state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \state[2]_i_1 
       (.I0(\state[7]_i_2_n_0 ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\after_state_reg_n_0_[2] ),
        .I3(\state[4]_i_2_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000030000000AAAA)) 
    \state[2]_i_2 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(\iop_data[7]_i_2_n_0 ),
        .I2(\update_page_count_reg_n_0_[2] ),
        .I3(after_page_state[2]),
        .I4(\temp_index[6]_i_3_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAEAAA)) 
    \state[3]_i_1 
       (.I0(\state[7]_i_2_n_0 ),
        .I1(\state[3]_i_2_n_0 ),
        .I2(write_start),
        .I3(PIXEL_BUFFER_n_0),
        .I4(\state[3]_i_3_n_0 ),
        .I5(\temp_write_ascii[6]_i_1_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \state[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[6] ),
        .I3(\state_reg_n_0_[7] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[6] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[7] ),
        .O(\state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_2_n_0 ),
        .I1(\after_state_reg_n_0_[4] ),
        .I2(\iop_data[7]_i_1_n_0 ),
        .I3(\state[4]_i_3_n_0 ),
        .I4(\state[7]_i_2_n_0 ),
        .O(\state[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \state[4]_i_2 
       (.I0(temp_spi_start_i_3_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state[4]_i_3 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\iop_data[7]_i_2_n_0 ),
        .O(\state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEFEEEE)) 
    \state[5]_i_1 
       (.I0(\state[7]_i_2_n_0 ),
        .I1(\state[5]_i_2_n_0 ),
        .I2(\state_reg_n_0_[6] ),
        .I3(\temp_index[6]_i_3_n_0 ),
        .I4(\state[5]_i_3_n_0 ),
        .I5(\state[5]_i_4_n_0 ),
        .O(\state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \state[5]_i_2 
       (.I0(\after_state_reg_n_0_[5] ),
        .I1(\state[4]_i_2_n_0 ),
        .I2(\state[5]_i_5_n_0 ),
        .I3(\update_page_count_reg_n_0_[2] ),
        .I4(after_page_state[5]),
        .I5(PIXEL_BUFFER_n_0),
        .O(\state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0018)) 
    \state[5]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[7] ),
        .O(\state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \state[5]_i_4 
       (.I0(\temp_page[1]_i_6_n_0 ),
        .I1(\state[5]_i_6_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(update_start),
        .I5(write_start),
        .O(\state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state[5]_i_5 
       (.I0(\state_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[6] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(\state[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[5]_i_6 
       (.I0(\state_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[6] ),
        .O(\state[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2322)) 
    \state[6]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state[6]_i_2_n_0 ),
        .I2(\state[6]_i_3_n_0 ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state[6]_i_4_n_0 ),
        .I5(\state[6]_i_5_n_0 ),
        .O(\state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[6]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[7] ),
        .I4(\state_reg_n_0_[6] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[6]_i_3 
       (.I0(update_start),
        .I1(write_start),
        .O(\state[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111000045000000)) 
    \state[6]_i_4 
       (.I0(oled_dc_i_3_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\update_page_count_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \state[6]_i_5 
       (.I0(oled_dc_i_3_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(disp_on_start),
        .O(\state[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \state[7]_i_2 
       (.I0(disp_on_start),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(oled_dc_i_3_n_0),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEAEEE)) 
    \state[7]_i_3 
       (.I0(\state[7]_i_5_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[6] ),
        .I5(\state[7]_i_6_n_0 ),
        .O(\state[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF1F14FF4F1F1F4F4)) 
    \state[7]_i_5 
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(update_start),
        .O(\state[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000F0000FFAF00EE)) 
    \state[7]_i_6 
       (.I0(\state_reg_n_0_[6] ),
        .I1(disp_on_start),
        .I2(\state[7]_i_8_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[7]_i_8 
       (.I0(update_start),
        .I1(write_start),
        .O(\state[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[5]_i_1_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[6]_i_1_n_0 ),
        .Q(\state_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(clk),
        .CE(MS_DELAY_n_0),
        .D(\state[7]_i_2_n_0 ),
        .Q(\state_reg_n_0_[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \temp_delay_ms[2]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(iop_data[2]),
        .I2(\temp_delay_ms[7]_i_2_n_0 ),
        .I3(temp_delay_ms[2]),
        .O(\temp_delay_ms[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \temp_delay_ms[5]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(iop_data[5]),
        .I2(\temp_delay_ms[7]_i_2_n_0 ),
        .I3(temp_delay_ms[5]),
        .O(\temp_delay_ms[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \temp_delay_ms[6]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(iop_data[6]),
        .I2(\temp_delay_ms[7]_i_2_n_0 ),
        .I3(temp_delay_ms[6]),
        .O(\temp_delay_ms[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \temp_delay_ms[7]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\temp_delay_ms[7]_i_2_n_0 ),
        .O(\temp_delay_ms[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30000100)) 
    \temp_delay_ms[7]_i_2 
       (.I0(iop_state_select_reg_n_0),
        .I1(\iop_data[7]_i_2_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .O(\temp_delay_ms[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[0] 
       (.C(clk),
        .CE(\temp_delay_ms[7]_i_2_n_0 ),
        .D(iop_data[0]),
        .Q(temp_delay_ms[0]),
        .R(\temp_delay_ms[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[1] 
       (.C(clk),
        .CE(\temp_delay_ms[7]_i_2_n_0 ),
        .D(iop_data[1]),
        .Q(temp_delay_ms[1]),
        .R(\temp_delay_ms[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp_delay_ms[2]_i_1_n_0 ),
        .Q(temp_delay_ms[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[3] 
       (.C(clk),
        .CE(\temp_delay_ms[7]_i_2_n_0 ),
        .D(iop_data[3]),
        .Q(temp_delay_ms[3]),
        .R(\temp_delay_ms[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[4] 
       (.C(clk),
        .CE(\temp_delay_ms[7]_i_2_n_0 ),
        .D(iop_data[4]),
        .Q(temp_delay_ms[4]),
        .R(\temp_delay_ms[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp_delay_ms[5]_i_1_n_0 ),
        .Q(temp_delay_ms[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp_delay_ms[6]_i_1_n_0 ),
        .Q(temp_delay_ms[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_delay_ms_reg[7] 
       (.C(clk),
        .CE(\temp_delay_ms[7]_i_2_n_0 ),
        .D(iop_data[7]),
        .Q(temp_delay_ms[7]),
        .R(\temp_delay_ms[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555FF7F55550040)) 
    temp_delay_start_i_1
       (.I0(\state_reg_n_0_[6] ),
        .I1(temp_spi_start_i_3_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\temp_delay_ms[7]_i_2_n_0 ),
        .I5(temp_delay_start_reg_n_0),
        .O(temp_delay_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_delay_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(temp_delay_start_i_1_n_0),
        .Q(temp_delay_start_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \temp_index[0]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(pbuf_read_addr[0]),
        .O(\temp_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \temp_index[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(pbuf_read_addr[0]),
        .I3(pbuf_read_addr[1]),
        .O(\temp_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h70008000)) 
    \temp_index[2]_i_1 
       (.I0(pbuf_read_addr[0]),
        .I1(pbuf_read_addr[1]),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(pbuf_read_addr[2]),
        .O(\temp_index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F00000080000000)) 
    \temp_index[3]_i_1 
       (.I0(pbuf_read_addr[1]),
        .I1(pbuf_read_addr[0]),
        .I2(pbuf_read_addr[2]),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(pbuf_read_addr[3]),
        .O(\temp_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \temp_index[4]_i_1 
       (.I0(pbuf_read_addr[2]),
        .I1(pbuf_read_addr[0]),
        .I2(pbuf_read_addr[1]),
        .I3(pbuf_read_addr[3]),
        .I4(\temp_index[4]_i_2_n_0 ),
        .I5(pbuf_read_addr[4]),
        .O(\temp_index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \temp_index[4]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .O(\temp_index[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \temp_index[5]_i_1 
       (.I0(\temp_index[5]_i_2_n_0 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(pbuf_read_addr[5]),
        .O(\temp_index[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \temp_index[5]_i_2 
       (.I0(pbuf_read_addr[3]),
        .I1(pbuf_read_addr[1]),
        .I2(pbuf_read_addr[0]),
        .I3(pbuf_read_addr[2]),
        .I4(pbuf_read_addr[4]),
        .O(\temp_index[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
    \temp_index[6]_i_1 
       (.I0(update_start),
        .I1(\temp_index[6]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(oled_dc_i_3_n_0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\temp_page[1]_i_4_n_0 ),
        .O(\temp_index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \temp_index[6]_i_2 
       (.I0(\temp_page[1]_i_7_n_0 ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(pbuf_read_addr[6]),
        .O(\temp_index[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \temp_index[6]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .O(\temp_index[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[0] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\temp_index[0]_i_1_n_0 ),
        .Q(pbuf_read_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[1] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\temp_index[1]_i_1_n_0 ),
        .Q(pbuf_read_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[2] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\temp_index[2]_i_1_n_0 ),
        .Q(pbuf_read_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[3] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\temp_index[3]_i_1_n_0 ),
        .Q(pbuf_read_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[4] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\temp_index[4]_i_1_n_0 ),
        .Q(pbuf_read_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[5] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\temp_index[5]_i_1_n_0 ),
        .Q(pbuf_read_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_index_reg[6] 
       (.C(clk),
        .CE(\temp_index[6]_i_1_n_0 ),
        .D(\temp_index[6]_i_2_n_0 ),
        .Q(pbuf_read_addr[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \temp_page[0]_i_1 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(pbuf_read_addr[7]),
        .O(\temp_page[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEEEEEEE)) 
    \temp_page[1]_i_1 
       (.I0(\temp_page[1]_i_3_n_0 ),
        .I1(\temp_page[1]_i_4_n_0 ),
        .I2(\temp_page[1]_i_5_n_0 ),
        .I3(\temp_page[1]_i_6_n_0 ),
        .I4(pbuf_read_addr[6]),
        .I5(\temp_page[1]_i_7_n_0 ),
        .O(\temp_page[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \temp_page[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(pbuf_read_addr[7]),
        .I3(pbuf_read_addr[8]),
        .O(\temp_page[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \temp_page[1]_i_3 
       (.I0(update_start),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\iop_data[7]_i_2_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .O(\temp_page[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \temp_page[1]_i_4 
       (.I0(oled_res_i_2_n_0),
        .I1(\startup_count_reg_n_0_[3] ),
        .I2(\startup_count_reg_n_0_[1] ),
        .I3(\startup_count_reg_n_0_[0] ),
        .I4(\startup_count_reg_n_0_[2] ),
        .O(\temp_page[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \temp_page[1]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[6] ),
        .I2(\state_reg_n_0_[7] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\temp_page[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_page[1]_i_6 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\temp_page[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \temp_page[1]_i_7 
       (.I0(pbuf_read_addr[4]),
        .I1(pbuf_read_addr[2]),
        .I2(pbuf_read_addr[0]),
        .I3(pbuf_read_addr[1]),
        .I4(pbuf_read_addr[3]),
        .I5(pbuf_read_addr[5]),
        .O(\temp_page[1]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_page_reg[0] 
       (.C(clk),
        .CE(\temp_page[1]_i_1_n_0 ),
        .D(\temp_page[0]_i_1_n_0 ),
        .Q(pbuf_read_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_page_reg[1] 
       (.C(clk),
        .CE(\temp_page[1]_i_1_n_0 ),
        .D(\temp_page[1]_i_2_n_0 ),
        .Q(pbuf_read_addr[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \temp_spi_data[0]_i_2 
       (.I0(\update_page_count_reg_n_0_[0] ),
        .I1(pbuf_read_addr[7]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\update_page_count_reg_n_0_[1] ),
        .O(\temp_spi_data[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \temp_spi_data[1]_i_2 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(clear_screen),
        .O(\temp_spi_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020002000000020)) 
    \temp_spi_data[1]_i_3 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\update_page_count_reg_n_0_[1] ),
        .I4(\update_page_count_reg_n_0_[0] ),
        .I5(pbuf_read_addr[8]),
        .O(\temp_spi_data[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \temp_spi_data[4]_i_3 
       (.I0(\update_page_count_reg_n_0_[0] ),
        .I1(\update_page_count_reg_n_0_[1] ),
        .O(\temp_spi_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF000F100F000FF00)) 
    \temp_spi_data[5]_i_2 
       (.I0(\update_page_count_reg_n_0_[0] ),
        .I1(\update_page_count_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\temp_spi_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAEAAAEAAAA)) 
    \temp_spi_data[7]_i_1 
       (.I0(\temp_spi_data[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\iop_data[7]_i_2_n_0 ),
        .I4(iop_state_select_reg_n_0),
        .I5(\state_reg_n_0_[5] ),
        .O(\temp_spi_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0023000000000000)) 
    \temp_spi_data[7]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(oled_dc_i_3_n_0),
        .I2(\update_page_count_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\temp_spi_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF010)) 
    \temp_spi_data[7]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[4] ),
        .O(\temp_spi_data[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[0] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_8),
        .Q(temp_spi_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[1] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_7),
        .Q(temp_spi_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[2] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_6),
        .Q(temp_spi_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[3] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_5),
        .Q(temp_spi_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[4] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_4),
        .Q(temp_spi_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[5] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_3),
        .Q(temp_spi_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[6] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_2),
        .Q(temp_spi_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_spi_data_reg[7] 
       (.C(clk),
        .CE(\temp_spi_data[7]_i_1_n_0 ),
        .D(PIXEL_BUFFER_n_1),
        .Q(temp_spi_data[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    temp_spi_start_i_1
       (.I0(temp_spi_start),
        .I1(temp_spi_start_i_3_n_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\temp_spi_data[7]_i_1_n_0 ),
        .I5(temp_spi_start_reg_n_0),
        .O(temp_spi_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h8AFF8A00)) 
    temp_spi_start_i_2
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\update_page_count_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[4] ),
        .O(temp_spi_start));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    temp_spi_start_i_3
       (.I0(\state_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[7] ),
        .O(temp_spi_start_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_spi_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(temp_spi_start_i_1_n_0),
        .Q(temp_spi_start_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \temp_write_ascii[6]_i_1 
       (.I0(write_start),
        .I1(update_start),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\iop_data[7]_i_2_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\temp_write_ascii[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_ascii_reg[0] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(Q[0]),
        .Q(char_lib_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_ascii_reg[1] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(Q[1]),
        .Q(char_lib_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_ascii_reg[2] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(Q[2]),
        .Q(char_lib_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_ascii_reg[3] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(Q[3]),
        .Q(char_lib_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_ascii_reg[4] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(Q[4]),
        .Q(char_lib_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_ascii_reg[5] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(Q[5]),
        .Q(char_lib_addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_ascii_reg[6] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(Q[6]),
        .Q(char_lib_addr[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_base_addr_reg[3] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(\s_write_base_addr_reg[8] [0]),
        .Q(temp_write_base_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_base_addr_reg[4] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(\s_write_base_addr_reg[8] [1]),
        .Q(temp_write_base_addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_base_addr_reg[5] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(\s_write_base_addr_reg[8] [2]),
        .Q(temp_write_base_addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_base_addr_reg[6] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(\s_write_base_addr_reg[8] [3]),
        .Q(temp_write_base_addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_base_addr_reg[7] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(\s_write_base_addr_reg[8] [4]),
        .Q(temp_write_base_addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_write_base_addr_reg[8] 
       (.C(clk),
        .CE(\temp_write_ascii[6]_i_1_n_0 ),
        .D(\s_write_base_addr_reg[8] [5]),
        .Q(temp_write_base_addr[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000003AAAAAAA8)) 
    \update_page_count[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\update_page_count[2]_i_3_n_0 ),
        .I2(\temp_page[1]_i_4_n_0 ),
        .I3(\update_page_count[2]_i_4_n_0 ),
        .I4(\update_page_count[2]_i_5_n_0 ),
        .I5(\update_page_count_reg_n_0_[0] ),
        .O(\update_page_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \update_page_count[1]_i_1 
       (.I0(\update_page_count[1]_i_2_n_0 ),
        .I1(\update_page_count[2]_i_3_n_0 ),
        .I2(\temp_page[1]_i_4_n_0 ),
        .I3(\update_page_count[2]_i_4_n_0 ),
        .I4(\update_page_count[2]_i_5_n_0 ),
        .I5(\update_page_count_reg_n_0_[1] ),
        .O(\update_page_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \update_page_count[1]_i_2 
       (.I0(\update_page_count_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\update_page_count_reg_n_0_[1] ),
        .O(\update_page_count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \update_page_count[2]_i_1 
       (.I0(\update_page_count[2]_i_2_n_0 ),
        .I1(\update_page_count[2]_i_3_n_0 ),
        .I2(\temp_page[1]_i_4_n_0 ),
        .I3(\update_page_count[2]_i_4_n_0 ),
        .I4(\update_page_count[2]_i_5_n_0 ),
        .I5(\update_page_count_reg_n_0_[2] ),
        .O(\update_page_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \update_page_count[2]_i_2 
       (.I0(\update_page_count_reg_n_0_[0] ),
        .I1(\update_page_count_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\update_page_count_reg_n_0_[2] ),
        .O(\update_page_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \update_page_count[2]_i_3 
       (.I0(\temp_page[1]_i_5_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(pbuf_read_addr[6]),
        .I5(\temp_page[1]_i_7_n_0 ),
        .O(\update_page_count[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \update_page_count[2]_i_4 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(update_start),
        .I3(\iop_data[7]_i_2_n_0 ),
        .O(\update_page_count[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \update_page_count[2]_i_5 
       (.I0(PIXEL_BUFFER_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[7] ),
        .I5(\state_reg_n_0_[6] ),
        .O(\update_page_count[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \update_page_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\update_page_count[0]_i_1_n_0 ),
        .Q(\update_page_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \update_page_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\update_page_count[1]_i_1_n_0 ),
        .Q(\update_page_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \update_page_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\update_page_count[2]_i_1_n_0 ),
        .Q(\update_page_count_reg_n_0_[2] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \write_byte_count[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(char_lib_addr[0]),
        .O(\write_byte_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \write_byte_count[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(char_lib_addr[0]),
        .I3(char_lib_addr[1]),
        .O(\write_byte_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \write_byte_count[2]_i_1 
       (.I0(\state[5]_i_3_n_0 ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[5] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[6] ),
        .I5(\temp_write_ascii[6]_i_1_n_0 ),
        .O(\write_byte_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \write_byte_count[2]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(char_lib_addr[1]),
        .I3(char_lib_addr[0]),
        .I4(char_lib_addr[2]),
        .O(\write_byte_count[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_byte_count_reg[0] 
       (.C(clk),
        .CE(\write_byte_count[2]_i_1_n_0 ),
        .D(\write_byte_count[0]_i_1_n_0 ),
        .Q(char_lib_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_byte_count_reg[1] 
       (.C(clk),
        .CE(\write_byte_count[2]_i_1_n_0 ),
        .D(\write_byte_count[1]_i_1_n_0 ),
        .Q(char_lib_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \write_byte_count_reg[2] 
       (.C(clk),
        .CE(\write_byte_count[2]_i_1_n_0 ),
        .D(\write_byte_count[2]_i_2_n_0 ),
        .Q(char_lib_addr[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SpiCtrl" *) 
module top_oled_0_SpiCtrl
   (\state_reg[0] ,
    SDIN,
    SCLK,
    clk,
    temp_spi_start_reg,
    Q);
  output \state_reg[0] ;
  output SDIN;
  output SCLK;
  input clk;
  input temp_spi_start_reg;
  input [7:0]Q;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5__0_n_0 ;
  wire [7:0]Q;
  wire SCLK;
  wire SCLK_INST_0_i_1_n_0;
  wire SCLK_INST_0_i_2_n_0;
  wire SDIN;
  wire clk;
  wire [4:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire [3:0]shift_counter;
  wire \shift_counter[3]_i_1_n_0 ;
  wire \shift_counter[3]_i_2_n_0 ;
  wire \shift_counter[3]_i_4_n_0 ;
  wire \shift_counter[3]_i_5_n_0 ;
  wire \shift_counter_reg_n_0_[0] ;
  wire \shift_counter_reg_n_0_[1] ;
  wire \shift_counter_reg_n_0_[2] ;
  wire \shift_counter_reg_n_0_[3] ;
  wire [7:0]shift_register;
  wire \shift_register[7]_i_1_n_0 ;
  wire \shift_register_reg_n_0_[0] ;
  wire \shift_register_reg_n_0_[1] ;
  wire \shift_register_reg_n_0_[2] ;
  wire \shift_register_reg_n_0_[3] ;
  wire \shift_register_reg_n_0_[4] ;
  wire \shift_register_reg_n_0_[5] ;
  wire \shift_register_reg_n_0_[6] ;
  wire \shift_register_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire \state_reg[0] ;
  wire temp_sdo_i_1_n_0;
  wire temp_sdo_reg_n_0;
  wire temp_spi_start_reg;

  LUT3 #(
    .INIT(8'h74)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(temp_spi_start_reg),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000030AC)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(temp_spi_start_reg),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\shift_counter_reg_n_0_[1] ),
        .I1(\shift_counter_reg_n_0_[3] ),
        .I2(\shift_counter_reg_n_0_[0] ),
        .I3(\shift_counter_reg_n_0_[2] ),
        .I4(\shift_counter[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_5__0_n_0 ),
        .I1(\shift_counter_reg_n_0_[2] ),
        .I2(\shift_counter_reg_n_0_[3] ),
        .I3(state[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2E000000)) 
    \FSM_sequential_state[2]_i_5__0 
       (.I0(state[1]),
        .I1(temp_spi_start_reg),
        .I2(state[0]),
        .I3(\shift_counter_reg_n_0_[1] ),
        .I4(\shift_counter_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_5__0_n_0 ));
  (* FSM_ENCODED_STATES = "Send:001,HoldCS:010,Hold:011,Idle:000,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Send:001,HoldCS:010,Hold:011,Idle:000,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Send:001,HoldCS:010,Hold:011,Idle:000,iSTATE:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF04CC)) 
    SCLK_INST_0
       (.I0(counter[0]),
        .I1(SCLK_INST_0_i_1_n_0),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(SCLK_INST_0_i_2_n_0),
        .I5(state[2]),
        .O(SCLK));
  LUT2 #(
    .INIT(4'h1)) 
    SCLK_INST_0_i_1
       (.I0(counter[3]),
        .I1(counter[4]),
        .O(SCLK_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SCLK_INST_0_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .O(SCLK_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    SDIN_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(temp_sdo_reg_n_0),
        .O(SDIN));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \counter[1]_i_1 
       (.I0(counter[2]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[0]),
        .I4(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7688FF00)) 
    \counter[3]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .I4(counter[0]),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \counter[4]_i_1 
       (.I0(\shift_counter[3]_i_4_n_0 ),
        .I1(\shift_counter_reg_n_0_[2] ),
        .I2(\shift_counter_reg_n_0_[0] ),
        .I3(\shift_counter_reg_n_0_[3] ),
        .I4(\shift_counter_reg_n_0_[1] ),
        .I5(\shift_counter[3]_i_5_n_0 ),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[4]),
        .O(\counter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[4]_i_2_n_0 ),
        .Q(counter[4]),
        .R(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00FF00FB)) 
    \shift_counter[0]_i_1 
       (.I0(\shift_counter[3]_i_5_n_0 ),
        .I1(\shift_counter_reg_n_0_[3] ),
        .I2(\shift_counter_reg_n_0_[1] ),
        .I3(\shift_counter_reg_n_0_[0] ),
        .I4(\shift_counter_reg_n_0_[2] ),
        .O(shift_counter[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \shift_counter[1]_i_1 
       (.I0(\shift_counter_reg_n_0_[0] ),
        .I1(\shift_counter_reg_n_0_[1] ),
        .O(shift_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \shift_counter[2]_i_1 
       (.I0(\shift_counter_reg_n_0_[1] ),
        .I1(\shift_counter_reg_n_0_[0] ),
        .I2(\shift_counter_reg_n_0_[2] ),
        .O(shift_counter[2]));
  LUT3 #(
    .INIT(8'h01)) 
    \shift_counter[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\shift_counter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1404)) 
    \shift_counter[3]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\shift_counter[3]_i_4_n_0 ),
        .O(\shift_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h3CF0F0E0)) 
    \shift_counter[3]_i_3 
       (.I0(\shift_counter[3]_i_5_n_0 ),
        .I1(\shift_counter_reg_n_0_[1] ),
        .I2(\shift_counter_reg_n_0_[3] ),
        .I3(\shift_counter_reg_n_0_[0] ),
        .I4(\shift_counter_reg_n_0_[2] ),
        .O(shift_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \shift_counter[3]_i_4 
       (.I0(counter[0]),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(\shift_counter[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \shift_counter[3]_i_5 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\shift_counter[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[0] 
       (.C(clk),
        .CE(\shift_counter[3]_i_2_n_0 ),
        .D(shift_counter[0]),
        .Q(\shift_counter_reg_n_0_[0] ),
        .R(\shift_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[1] 
       (.C(clk),
        .CE(\shift_counter[3]_i_2_n_0 ),
        .D(shift_counter[1]),
        .Q(\shift_counter_reg_n_0_[1] ),
        .R(\shift_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[2] 
       (.C(clk),
        .CE(\shift_counter[3]_i_2_n_0 ),
        .D(shift_counter[2]),
        .Q(\shift_counter_reg_n_0_[2] ),
        .R(\shift_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_counter_reg[3] 
       (.C(clk),
        .CE(\shift_counter[3]_i_2_n_0 ),
        .D(shift_counter[3]),
        .Q(\shift_counter_reg_n_0_[3] ),
        .R(\shift_counter[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_register[0]_i_1 
       (.I0(Q[0]),
        .I1(state[0]),
        .O(shift_register[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[1]_i_1 
       (.I0(\shift_register_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(Q[1]),
        .O(shift_register[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[2]_i_1 
       (.I0(\shift_register_reg_n_0_[1] ),
        .I1(state[0]),
        .I2(Q[2]),
        .O(shift_register[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[3]_i_1 
       (.I0(\shift_register_reg_n_0_[2] ),
        .I1(state[0]),
        .I2(Q[3]),
        .O(shift_register[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[4]_i_1 
       (.I0(\shift_register_reg_n_0_[3] ),
        .I1(state[0]),
        .I2(Q[4]),
        .O(shift_register[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[5]_i_1 
       (.I0(\shift_register_reg_n_0_[4] ),
        .I1(state[0]),
        .I2(Q[5]),
        .O(shift_register[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[6]_i_1 
       (.I0(\shift_register_reg_n_0_[5] ),
        .I1(state[0]),
        .I2(Q[6]),
        .O(shift_register[6]));
  LUT4 #(
    .INIT(16'h000B)) 
    \shift_register[7]_i_1 
       (.I0(\shift_counter[3]_i_4_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\shift_register[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_register[7]_i_2 
       (.I0(\shift_register_reg_n_0_[6] ),
        .I1(state[0]),
        .I2(Q[7]),
        .O(shift_register[7]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[0] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[0]),
        .Q(\shift_register_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[1] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[1]),
        .Q(\shift_register_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[2] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[2]),
        .Q(\shift_register_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[3] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[3]),
        .Q(\shift_register_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[4] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[4]),
        .Q(\shift_register_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[5] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[5]),
        .Q(\shift_register_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[6] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[6]),
        .Q(\shift_register_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_register_reg[7] 
       (.C(clk),
        .CE(\shift_register[7]_i_1_n_0 ),
        .D(shift_register[7]),
        .Q(\shift_register_reg_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \state[7]_i_9 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAAAE2AAAAAAFF)) 
    temp_sdo_i_1
       (.I0(temp_sdo_reg_n_0),
        .I1(\shift_counter[3]_i_4_n_0 ),
        .I2(\shift_register_reg_n_0_[7] ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(temp_sdo_i_1_n_0));
  FDRE temp_sdo_reg
       (.C(clk),
        .CE(1'b1),
        .D(temp_sdo_i_1_n_0),
        .Q(temp_sdo_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "charLib" *) 
module top_oled_0_charLib
   (douta,
    clk,
    addra);
  output [7:0]douta;
  input clk;
  input [9:0]addra;

  wire [9:0]addra;
  wire clk;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "charLib.mem" *) 
  (* C_INIT_FILE_NAME = "charLib.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  top_oled_0_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clk),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "delay_ms" *) 
module top_oled_0_delay_ms
   (E,
    clk,
    \state_reg[4] ,
    Q,
    \state_reg[1] ,
    disp_on_start,
    temp_delay_start_reg,
    \FSM_sequential_state_reg[2] ,
    temp_spi_start_reg,
    D);
  output [0:0]E;
  input clk;
  input \state_reg[4] ;
  input [5:0]Q;
  input \state_reg[1] ;
  input disp_on_start;
  input temp_delay_start_reg;
  input \FSM_sequential_state_reg[2] ;
  input temp_spi_start_reg;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_6_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_sequential_state_reg[2] ;
  wire [5:0]Q;
  wire clk;
  wire clk_counter;
  wire clk_counter0_carry__0_n_0;
  wire clk_counter0_carry__0_n_1;
  wire clk_counter0_carry__0_n_2;
  wire clk_counter0_carry__0_n_3;
  wire clk_counter0_carry__0_n_4;
  wire clk_counter0_carry__0_n_5;
  wire clk_counter0_carry__0_n_6;
  wire clk_counter0_carry__0_n_7;
  wire clk_counter0_carry__1_n_0;
  wire clk_counter0_carry__1_n_1;
  wire clk_counter0_carry__1_n_2;
  wire clk_counter0_carry__1_n_3;
  wire clk_counter0_carry__1_n_4;
  wire clk_counter0_carry__1_n_5;
  wire clk_counter0_carry__1_n_6;
  wire clk_counter0_carry__1_n_7;
  wire clk_counter0_carry__2_n_1;
  wire clk_counter0_carry__2_n_2;
  wire clk_counter0_carry__2_n_3;
  wire clk_counter0_carry__2_n_4;
  wire clk_counter0_carry__2_n_5;
  wire clk_counter0_carry__2_n_6;
  wire clk_counter0_carry__2_n_7;
  wire clk_counter0_carry_n_0;
  wire clk_counter0_carry_n_1;
  wire clk_counter0_carry_n_2;
  wire clk_counter0_carry_n_3;
  wire clk_counter0_carry_n_4;
  wire clk_counter0_carry_n_5;
  wire clk_counter0_carry_n_6;
  wire clk_counter0_carry_n_7;
  wire \clk_counter[0]_i_1_n_0 ;
  wire [16:1]clk_counter__0;
  wire \clk_counter_reg_n_0_[0] ;
  wire \clk_counter_reg_n_0_[10] ;
  wire \clk_counter_reg_n_0_[11] ;
  wire \clk_counter_reg_n_0_[12] ;
  wire \clk_counter_reg_n_0_[13] ;
  wire \clk_counter_reg_n_0_[14] ;
  wire \clk_counter_reg_n_0_[15] ;
  wire \clk_counter_reg_n_0_[16] ;
  wire \clk_counter_reg_n_0_[1] ;
  wire \clk_counter_reg_n_0_[2] ;
  wire \clk_counter_reg_n_0_[3] ;
  wire \clk_counter_reg_n_0_[4] ;
  wire \clk_counter_reg_n_0_[5] ;
  wire \clk_counter_reg_n_0_[6] ;
  wire \clk_counter_reg_n_0_[7] ;
  wire \clk_counter_reg_n_0_[8] ;
  wire \clk_counter_reg_n_0_[9] ;
  wire disp_on_start;
  wire ms_counter;
  wire \ms_counter[0]_i_4_n_0 ;
  wire ms_counter__0;
  wire [11:0]ms_counter_reg;
  wire \ms_counter_reg[0]_i_3_n_0 ;
  wire \ms_counter_reg[0]_i_3_n_1 ;
  wire \ms_counter_reg[0]_i_3_n_2 ;
  wire \ms_counter_reg[0]_i_3_n_3 ;
  wire \ms_counter_reg[0]_i_3_n_4 ;
  wire \ms_counter_reg[0]_i_3_n_5 ;
  wire \ms_counter_reg[0]_i_3_n_6 ;
  wire \ms_counter_reg[0]_i_3_n_7 ;
  wire \ms_counter_reg[4]_i_1_n_0 ;
  wire \ms_counter_reg[4]_i_1_n_1 ;
  wire \ms_counter_reg[4]_i_1_n_2 ;
  wire \ms_counter_reg[4]_i_1_n_3 ;
  wire \ms_counter_reg[4]_i_1_n_4 ;
  wire \ms_counter_reg[4]_i_1_n_5 ;
  wire \ms_counter_reg[4]_i_1_n_6 ;
  wire \ms_counter_reg[4]_i_1_n_7 ;
  wire \ms_counter_reg[8]_i_1_n_1 ;
  wire \ms_counter_reg[8]_i_1_n_2 ;
  wire \ms_counter_reg[8]_i_1_n_3 ;
  wire \ms_counter_reg[8]_i_1_n_4 ;
  wire \ms_counter_reg[8]_i_1_n_5 ;
  wire \ms_counter_reg[8]_i_1_n_6 ;
  wire \ms_counter_reg[8]_i_1_n_7 ;
  wire state10_in;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire \state[7]_i_4_n_0 ;
  wire \state[7]_i_7_n_0 ;
  wire \state_reg[1] ;
  wire \state_reg[4] ;
  wire [7:0]stop_time;
  (* RTL_KEEP = "yes" *) wire stop_time_0;
  wire temp_delay_start_reg;
  wire temp_spi_start_reg;
  wire [3:3]NLW_clk_counter0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_ms_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h3237)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(temp_delay_start_reg),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(stop_time_0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_delay_start_reg),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8B8BDBDBDBD)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(stop_time_0),
        .I1(temp_delay_start_reg),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(state10_in),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(temp_delay_start_reg),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\clk_counter_reg_n_0_[4] ),
        .I1(\clk_counter_reg_n_0_[3] ),
        .I2(\clk_counter_reg_n_0_[6] ),
        .I3(\clk_counter_reg_n_0_[5] ),
        .I4(\FSM_onehot_state[3]_i_4_n_0 ),
        .I5(\FSM_onehot_state[3]_i_5_n_0 ),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(\clk_counter_reg_n_0_[0] ),
        .I1(\clk_counter_reg_n_0_[15] ),
        .I2(\clk_counter_reg_n_0_[16] ),
        .I3(\clk_counter_reg_n_0_[2] ),
        .I4(\clk_counter_reg_n_0_[1] ),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(\clk_counter_reg_n_0_[9] ),
        .I1(\clk_counter_reg_n_0_[10] ),
        .I2(\clk_counter_reg_n_0_[8] ),
        .I3(\clk_counter_reg_n_0_[7] ),
        .I4(\FSM_onehot_state[3]_i_6_n_0 ),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(\clk_counter_reg_n_0_[12] ),
        .I1(\clk_counter_reg_n_0_[11] ),
        .I2(\clk_counter_reg_n_0_[14] ),
        .I3(\clk_counter_reg_n_0_[13] ),
        .O(\FSM_onehot_state[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "Hold:0010,Done:0100,Idle:0001,iSTATE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(stop_time_0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Hold:0010,Done:0100,Idle:0001,iSTATE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(stop_time_0),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Hold:0010,Done:0100,Idle:0001,iSTATE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Hold:0010,Done:0100,Idle:0001,iSTATE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 clk_counter0_carry
       (.CI(1'b0),
        .CO({clk_counter0_carry_n_0,clk_counter0_carry_n_1,clk_counter0_carry_n_2,clk_counter0_carry_n_3}),
        .CYINIT(\clk_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter0_carry_n_4,clk_counter0_carry_n_5,clk_counter0_carry_n_6,clk_counter0_carry_n_7}),
        .S({\clk_counter_reg_n_0_[4] ,\clk_counter_reg_n_0_[3] ,\clk_counter_reg_n_0_[2] ,\clk_counter_reg_n_0_[1] }));
  CARRY4 clk_counter0_carry__0
       (.CI(clk_counter0_carry_n_0),
        .CO({clk_counter0_carry__0_n_0,clk_counter0_carry__0_n_1,clk_counter0_carry__0_n_2,clk_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter0_carry__0_n_4,clk_counter0_carry__0_n_5,clk_counter0_carry__0_n_6,clk_counter0_carry__0_n_7}),
        .S({\clk_counter_reg_n_0_[8] ,\clk_counter_reg_n_0_[7] ,\clk_counter_reg_n_0_[6] ,\clk_counter_reg_n_0_[5] }));
  CARRY4 clk_counter0_carry__1
       (.CI(clk_counter0_carry__0_n_0),
        .CO({clk_counter0_carry__1_n_0,clk_counter0_carry__1_n_1,clk_counter0_carry__1_n_2,clk_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter0_carry__1_n_4,clk_counter0_carry__1_n_5,clk_counter0_carry__1_n_6,clk_counter0_carry__1_n_7}),
        .S({\clk_counter_reg_n_0_[12] ,\clk_counter_reg_n_0_[11] ,\clk_counter_reg_n_0_[10] ,\clk_counter_reg_n_0_[9] }));
  CARRY4 clk_counter0_carry__2
       (.CI(clk_counter0_carry__1_n_0),
        .CO({NLW_clk_counter0_carry__2_CO_UNCONNECTED[3],clk_counter0_carry__2_n_1,clk_counter0_carry__2_n_2,clk_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_counter0_carry__2_n_4,clk_counter0_carry__2_n_5,clk_counter0_carry__2_n_6,clk_counter0_carry__2_n_7}),
        .S({\clk_counter_reg_n_0_[16] ,\clk_counter_reg_n_0_[15] ,\clk_counter_reg_n_0_[14] ,\clk_counter_reg_n_0_[13] }));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_counter[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(\clk_counter_reg_n_0_[0] ),
        .O(\clk_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[10]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__1_n_6),
        .O(clk_counter__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[11]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__1_n_5),
        .O(clk_counter__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[12]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__1_n_4),
        .O(clk_counter__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[13]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__2_n_7),
        .O(clk_counter__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[14]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__2_n_6),
        .O(clk_counter__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[15]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__2_n_5),
        .O(clk_counter__0[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .O(clk_counter));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[16]_i_2 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__2_n_4),
        .O(clk_counter__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[1]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry_n_7),
        .O(clk_counter__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[2]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry_n_6),
        .O(clk_counter__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry_n_5),
        .O(clk_counter__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[4]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry_n_4),
        .O(clk_counter__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[5]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__0_n_7),
        .O(clk_counter__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[6]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__0_n_6),
        .O(clk_counter__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[7]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__0_n_5),
        .O(clk_counter__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[8]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__0_n_4),
        .O(clk_counter__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \clk_counter[9]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(clk_counter0_carry__1_n_7),
        .O(clk_counter__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter[0]_i_1_n_0 ),
        .Q(\clk_counter_reg_n_0_[0] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[10]),
        .Q(\clk_counter_reg_n_0_[10] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[11]),
        .Q(\clk_counter_reg_n_0_[11] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[12]),
        .Q(\clk_counter_reg_n_0_[12] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[13]),
        .Q(\clk_counter_reg_n_0_[13] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[14]),
        .Q(\clk_counter_reg_n_0_[14] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[15]),
        .Q(\clk_counter_reg_n_0_[15] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[16]),
        .Q(\clk_counter_reg_n_0_[16] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[1]),
        .Q(\clk_counter_reg_n_0_[1] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[2]),
        .Q(\clk_counter_reg_n_0_[2] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[3]),
        .Q(\clk_counter_reg_n_0_[3] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[4]),
        .Q(\clk_counter_reg_n_0_[4] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[5]),
        .Q(\clk_counter_reg_n_0_[5] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[6]),
        .Q(\clk_counter_reg_n_0_[6] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[7]),
        .Q(\clk_counter_reg_n_0_[7] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[8]),
        .Q(\clk_counter_reg_n_0_[8] ),
        .R(clk_counter));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_counter__0[9]),
        .Q(\clk_counter_reg_n_0_[9] ),
        .R(clk_counter));
  LUT3 #(
    .INIT(8'h4F)) 
    \ms_counter[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(state10_in),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(ms_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \ms_counter[0]_i_2 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .O(ms_counter__0));
  LUT1 #(
    .INIT(2'h1)) 
    \ms_counter[0]_i_4 
       (.I0(ms_counter_reg[0]),
        .O(\ms_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[0] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[0]_i_3_n_7 ),
        .Q(ms_counter_reg[0]),
        .R(ms_counter));
  CARRY4 \ms_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\ms_counter_reg[0]_i_3_n_0 ,\ms_counter_reg[0]_i_3_n_1 ,\ms_counter_reg[0]_i_3_n_2 ,\ms_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ms_counter_reg[0]_i_3_n_4 ,\ms_counter_reg[0]_i_3_n_5 ,\ms_counter_reg[0]_i_3_n_6 ,\ms_counter_reg[0]_i_3_n_7 }),
        .S({ms_counter_reg[3:1],\ms_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[10] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[8]_i_1_n_5 ),
        .Q(ms_counter_reg[10]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[11] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[8]_i_1_n_4 ),
        .Q(ms_counter_reg[11]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[1] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[0]_i_3_n_6 ),
        .Q(ms_counter_reg[1]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[2] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[0]_i_3_n_5 ),
        .Q(ms_counter_reg[2]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[3] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[0]_i_3_n_4 ),
        .Q(ms_counter_reg[3]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[4] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[4]_i_1_n_7 ),
        .Q(ms_counter_reg[4]),
        .R(ms_counter));
  CARRY4 \ms_counter_reg[4]_i_1 
       (.CI(\ms_counter_reg[0]_i_3_n_0 ),
        .CO({\ms_counter_reg[4]_i_1_n_0 ,\ms_counter_reg[4]_i_1_n_1 ,\ms_counter_reg[4]_i_1_n_2 ,\ms_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ms_counter_reg[4]_i_1_n_4 ,\ms_counter_reg[4]_i_1_n_5 ,\ms_counter_reg[4]_i_1_n_6 ,\ms_counter_reg[4]_i_1_n_7 }),
        .S(ms_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[5] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[4]_i_1_n_6 ),
        .Q(ms_counter_reg[5]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[6] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[4]_i_1_n_5 ),
        .Q(ms_counter_reg[6]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[7] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[4]_i_1_n_4 ),
        .Q(ms_counter_reg[7]),
        .R(ms_counter));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[8] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[8]_i_1_n_7 ),
        .Q(ms_counter_reg[8]),
        .R(ms_counter));
  CARRY4 \ms_counter_reg[8]_i_1 
       (.CI(\ms_counter_reg[4]_i_1_n_0 ),
        .CO({\NLW_ms_counter_reg[8]_i_1_CO_UNCONNECTED [3],\ms_counter_reg[8]_i_1_n_1 ,\ms_counter_reg[8]_i_1_n_2 ,\ms_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ms_counter_reg[8]_i_1_n_4 ,\ms_counter_reg[8]_i_1_n_5 ,\ms_counter_reg[8]_i_1_n_6 ,\ms_counter_reg[8]_i_1_n_7 }),
        .S(ms_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ms_counter_reg[9] 
       (.C(clk),
        .CE(ms_counter__0),
        .D(\ms_counter_reg[8]_i_1_n_6 ),
        .Q(ms_counter_reg[9]),
        .R(ms_counter));
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state10_in,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    state1_carry_i_1
       (.I0(ms_counter_reg[11]),
        .I1(ms_counter_reg[10]),
        .I2(ms_counter_reg[9]),
        .O(state1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    state1_carry_i_2
       (.I0(ms_counter_reg[8]),
        .I1(stop_time[7]),
        .I2(ms_counter_reg[7]),
        .I3(ms_counter_reg[6]),
        .I4(stop_time[6]),
        .O(state1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_3
       (.I0(stop_time[5]),
        .I1(ms_counter_reg[5]),
        .I2(stop_time[4]),
        .I3(ms_counter_reg[4]),
        .I4(ms_counter_reg[3]),
        .I5(stop_time[3]),
        .O(state1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_4
       (.I0(stop_time[2]),
        .I1(ms_counter_reg[2]),
        .I2(stop_time[1]),
        .I3(ms_counter_reg[1]),
        .I4(ms_counter_reg[0]),
        .I5(stop_time[0]),
        .O(state1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAB)) 
    \state[7]_i_1 
       (.I0(\state_reg[4] ),
        .I1(Q[0]),
        .I2(\state_reg[1] ),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(\state[7]_i_4_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF08888888)) 
    \state[7]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(disp_on_start),
        .I5(\state[7]_i_7_n_0 ),
        .O(\state[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F22220000)) 
    \state[7]_i_7 
       (.I0(stop_time_0),
        .I1(temp_delay_start_reg),
        .I2(\FSM_sequential_state_reg[2] ),
        .I3(temp_spi_start_reg),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\state[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[0] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[0]),
        .Q(stop_time[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[1] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[1]),
        .Q(stop_time[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[2] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[2]),
        .Q(stop_time[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[3] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[3]),
        .Q(stop_time[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[4] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[4]),
        .Q(stop_time[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[5] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[5]),
        .Q(stop_time[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[6] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[6]),
        .Q(stop_time[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stop_time_reg[7] 
       (.C(clk),
        .CE(stop_time_0),
        .D(D[7]),
        .Q(stop_time[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "init_sequence_rom" *) 
module top_oled_0_init_sequence_rom
   (douta,
    clk,
    Q);
  output [14:0]douta;
  input clk;
  input [3:0]Q;

  wire [3:0]Q;
  wire clk;
  wire [14:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:15]NLW_U0_douta_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "init_sequence_rom.mem" *) 
  (* C_INIT_FILE_NAME = "init_sequence_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  top_oled_0_blk_mem_gen_v8_4_1__parameterized3 U0
       (.addra(Q),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clk),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta({NLW_U0_douta_UNCONNECTED[15],douta}),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "pixel_buffer" *) 
module top_oled_0_pixel_buffer
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    D,
    clk,
    addra,
    douta,
    pbuf_read_addr,
    Q,
    \state_reg[5] ,
    \state_reg[5]_0 ,
    \iop_data_reg[7] ,
    \state_reg[0] ,
    clear_screen,
    \update_page_count_reg[0] ,
    \update_page_count_reg[0]_0 ,
    disp_is_full,
    \state_reg[4] ,
    \update_page_count_reg[0]_1 );
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  output [7:0]D;
  input clk;
  input [8:0]addra;
  input [7:0]douta;
  input [8:0]pbuf_read_addr;
  input [7:0]Q;
  input \state_reg[5] ;
  input \state_reg[5]_0 ;
  input [7:0]\iop_data_reg[7] ;
  input \state_reg[0] ;
  input clear_screen;
  input \update_page_count_reg[0] ;
  input \update_page_count_reg[0]_0 ;
  input disp_is_full;
  input \state_reg[4] ;
  input \update_page_count_reg[0]_1 ;

  wire [7:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [7:0]Q;
  wire [8:0]addra;
  wire clear_screen;
  wire clk;
  wire disp_is_full;
  wire [7:0]douta;
  wire [7:0]\iop_data_reg[7] ;
  wire [8:0]pbuf_read_addr;
  wire [7:0]pbuf_read_data;
  wire pbuf_write_en;
  wire \state_reg[0] ;
  wire \state_reg[4] ;
  wire \state_reg[5] ;
  wire \state_reg[5]_0 ;
  wire \temp_spi_data[0]_i_3_n_0 ;
  wire \temp_spi_data[4]_i_2_n_0 ;
  wire \update_page_count_reg[0] ;
  wire \update_page_count_reg[0]_0 ;
  wire \update_page_count_reg[0]_1 ;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "pixel_buffer.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  top_oled_0_blk_mem_gen_v8_4_1__parameterized1 U0
       (.addra(addra),
        .addrb(pbuf_read_addr),
        .clka(clk),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(douta),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(pbuf_read_data),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(pbuf_write_en),
        .web(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    U0_i_1
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(Q[3]),
        .I5(Q[7]),
        .O(pbuf_write_en));
  LUT3 #(
    .INIT(8'h08)) 
    oled_dc_i_2
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[4]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F0F2000)) 
    \temp_spi_data[0]_i_1 
       (.I0(\update_page_count_reg[0]_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(\iop_data_reg[7] [0]),
        .I5(\temp_spi_data[0]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h000F000001010101)) 
    \temp_spi_data[0]_i_3 
       (.I0(Q[0]),
        .I1(disp_is_full),
        .I2(\state_reg[4] ),
        .I3(clear_screen),
        .I4(pbuf_read_data[0]),
        .I5(Q[1]),
        .O(\temp_spi_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFFFFC0)) 
    \temp_spi_data[1]_i_1 
       (.I0(Q[4]),
        .I1(\state_reg[5] ),
        .I2(pbuf_read_data[1]),
        .I3(\state_reg[5]_0 ),
        .I4(\iop_data_reg[7] [1]),
        .I5(Q[5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAEEAAEEFAEEAAEE)) 
    \temp_spi_data[2]_i_1 
       (.I0(\state_reg[0] ),
        .I1(\iop_data_reg[7] [2]),
        .I2(pbuf_read_data[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(clear_screen),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAACCAACCFACCAACC)) 
    \temp_spi_data[3]_i_1 
       (.I0(Q[4]),
        .I1(\iop_data_reg[7] [3]),
        .I2(pbuf_read_data[3]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(clear_screen),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hF4F4F4FFF4F4F4F4)) 
    \temp_spi_data[4]_i_1 
       (.I0(Q[5]),
        .I1(\iop_data_reg[7] [4]),
        .I2(\temp_spi_data[4]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\update_page_count_reg[0]_1 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \temp_spi_data[4]_i_2 
       (.I0(Q[1]),
        .I1(pbuf_read_data[4]),
        .I2(clear_screen),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\temp_spi_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0808FF00)) 
    \temp_spi_data[5]_i_1 
       (.I0(pbuf_read_data[5]),
        .I1(Q[1]),
        .I2(clear_screen),
        .I3(\iop_data_reg[7] [5]),
        .I4(Q[5]),
        .I5(\update_page_count_reg[0] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \temp_spi_data[6]_i_1 
       (.I0(Q[4]),
        .I1(clear_screen),
        .I2(Q[1]),
        .I3(pbuf_read_data[6]),
        .I4(Q[5]),
        .I5(\iop_data_reg[7] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAEEAAEEFAEEAAEE)) 
    \temp_spi_data[7]_i_2 
       (.I0(\state_reg[0] ),
        .I1(\iop_data_reg[7] [7]),
        .I2(pbuf_read_data[7]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(clear_screen),
        .O(D[7]));
endmodule

(* ORIG_REF_NAME = "top_oled" *) 
module top_oled_0_top_oled
   (clk,
    reset_i,
    ascii_data_i,
    data_valid_i,
    data_consumed_o,
    SDIN,
    SCLK,
    DC,
    RES,
    VBAT,
    VDD,
    dBtnU,
    dBTnD);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clk;
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

  wire DC;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_4__0_n_0 ;
  wire RES;
  wire SCLK;
  wire SDIN;
  wire VBAT;
  wire VDD;
  wire [7:0]ascii_data_i;
  wire clk;
  wire dBTnD;
  wire dBtnU;
  wire data_consumed_o;
  wire data_consumed_o_i_1_n_0;
  wire data_valid_i;
  wire disp_on_start;
  wire oled_ctr_i_n_10;
  wire oled_ctr_i_n_11;
  wire oled_ctr_i_n_12;
  wire oled_ctr_i_n_13;
  wire oled_ctr_i_n_14;
  wire oled_ctr_i_n_15;
  wire oled_ctr_i_n_16;
  wire oled_ctr_i_n_18;
  wire oled_ctr_i_n_19;
  wire oled_ctr_i_n_20;
  wire oled_ctr_i_n_21;
  wire oled_ctr_i_n_4;
  wire oled_ctr_i_n_5;
  wire oled_ctr_i_n_6;
  wire once_reg_n_0;
  wire reset_i;
  wire s_disp_on_start_i_1_n_0;
  wire s_update_clear_i_2_n_0;
  wire s_update_clear_i_4_n_0;
  wire s_write_ascii_data;
  wire \s_write_ascii_data[2]_i_3_n_0 ;
  wire \s_write_ascii_data[3]_i_2_n_0 ;
  wire \s_write_ascii_data[4]_i_2_n_0 ;
  wire \s_write_ascii_data[5]_i_2_n_0 ;
  wire \s_write_ascii_data[6]_i_4_n_0 ;
  wire s_write_base_addr;
  wire \s_write_base_addr[3]_i_1_n_0 ;
  wire \s_write_base_addr[4]_i_1_n_0 ;
  wire \s_write_base_addr[5]_i_1_n_0 ;
  wire \s_write_base_addr[6]_i_1_n_0 ;
  wire \s_write_base_addr[7]_i_1_n_0 ;
  wire \s_write_base_addr[7]_i_2_n_0 ;
  wire \s_write_base_addr[8]_i_2_n_0 ;
  wire \s_write_base_addr[8]_i_4_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire update_clear;
  wire update_start;
  wire [6:0]write_ascii_data;
  wire [8:3]write_base_addr;
  wire write_start;

  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(data_valid_i),
        .I1(once_reg_n_0),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FE00CC00000000)) 
    \FSM_sequential_state[2]_i_4__0 
       (.I0(data_valid_i),
        .I1(state[1]),
        .I2(s_update_clear_i_4_n_0),
        .I3(state[2]),
        .I4(once_reg_n_0),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_4__0_n_0 ));
  (* FSM_ENCODED_STATES = "t_init:000,t_active:001,t_write_char_wait_1:0111,t_write_char_wait:101,t_write_wait:010,t_write_char:100,t_write:011,t_update_wait:110" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(oled_ctr_i_n_6),
        .Q(state[0]),
        .R(reset_i));
  (* FSM_ENCODED_STATES = "t_init:000,t_active:001,t_write_char_wait_1:0111,t_write_char_wait:101,t_write_wait:010,t_write_char:100,t_write:011,t_update_wait:110" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(oled_ctr_i_n_5),
        .Q(state[1]),
        .R(reset_i));
  (* FSM_ENCODED_STATES = "t_init:000,t_active:001,t_write_char_wait_1:0111,t_write_char_wait:101,t_write_wait:010,t_write_char:100,t_write:011,t_update_wait:110" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(oled_ctr_i_n_4),
        .Q(state[2]),
        .R(reset_i));
  LUT5 #(
    .INIT(32'h02000000)) 
    data_consumed_o_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(once_reg_n_0),
        .I4(data_valid_i),
        .O(data_consumed_o_i_1_n_0));
  FDRE data_consumed_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_consumed_o_i_1_n_0),
        .Q(data_consumed_o),
        .R(reset_i));
  top_oled_0_OLEDCtrl oled_ctr_i
       (.D({oled_ctr_i_n_10,oled_ctr_i_n_11,oled_ctr_i_n_12,oled_ctr_i_n_13,oled_ctr_i_n_14,oled_ctr_i_n_15,oled_ctr_i_n_16}),
        .DC(DC),
        .E(s_write_base_addr),
        .\FSM_sequential_state_reg[0] (oled_ctr_i_n_6),
        .\FSM_sequential_state_reg[1] (oled_ctr_i_n_5),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state[2]_i_4__0_n_0 ),
        .\FSM_sequential_state_reg[2] (oled_ctr_i_n_4),
        .\FSM_sequential_state_reg[2]_0 (\s_write_ascii_data[2]_i_3_n_0 ),
        .Q(write_ascii_data),
        .RES(RES),
        .SCLK(SCLK),
        .SDIN(SDIN),
        .VBAT(VBAT),
        .VDD(VDD),
        .ascii_data_i(ascii_data_i[6:0]),
        .clk(clk),
        .dBTnD(dBTnD),
        .dBtnU(dBtnU),
        .dBtnU_0(s_update_clear_i_4_n_0),
        .data_valid_i(data_valid_i),
        .disp_on_start(disp_on_start),
        .in0(state),
        .once_reg(oled_ctr_i_n_21),
        .once_reg_0(\FSM_sequential_state[1]_i_2_n_0 ),
        .once_reg_1(once_reg_n_0),
        .once_reg_2(s_update_clear_i_2_n_0),
        .out(state),
        .s_update_clear_reg(oled_ctr_i_n_19),
        .s_update_start_reg(oled_ctr_i_n_20),
        .\s_write_ascii_data_reg[0] (s_write_ascii_data),
        .\s_write_ascii_data_reg[1] (\s_write_ascii_data[3]_i_2_n_0 ),
        .\s_write_ascii_data_reg[2] (\s_write_ascii_data[4]_i_2_n_0 ),
        .\s_write_ascii_data_reg[3] (\s_write_ascii_data[5]_i_2_n_0 ),
        .\s_write_ascii_data_reg[4] (\s_write_ascii_data[6]_i_4_n_0 ),
        .\s_write_base_addr_reg[6] (\s_write_base_addr[8]_i_4_n_0 ),
        .\s_write_base_addr_reg[8] (write_base_addr),
        .s_write_start_reg(oled_ctr_i_n_18),
        .update_clear(update_clear),
        .update_start(update_start),
        .write_start(write_start));
  FDRE once_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_ctr_i_n_21),
        .Q(once_reg_n_0),
        .R(reset_i));
  LUT4 #(
    .INIT(16'hAAA8)) 
    s_disp_on_start_i_1
       (.I0(disp_on_start),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(s_disp_on_start_i_1_n_0));
  FDSE s_disp_on_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_disp_on_start_i_1_n_0),
        .Q(disp_on_start),
        .S(reset_i));
  LUT5 #(
    .INIT(32'h00000008)) 
    s_update_clear_i_2
       (.I0(dBTnD),
        .I1(once_reg_n_0),
        .I2(dBtnU),
        .I3(state[2]),
        .I4(state[1]),
        .O(s_update_clear_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    s_update_clear_i_4
       (.I0(dBTnD),
        .I1(dBtnU),
        .O(s_update_clear_i_4_n_0));
  FDRE s_update_clear_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_ctr_i_n_19),
        .Q(update_clear),
        .R(reset_i));
  FDRE s_update_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_ctr_i_n_20),
        .Q(update_start),
        .R(reset_i));
  LUT2 #(
    .INIT(4'hB)) 
    \s_write_ascii_data[2]_i_3 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\s_write_ascii_data[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s_write_ascii_data[3]_i_2 
       (.I0(write_ascii_data[1]),
        .I1(write_ascii_data[0]),
        .I2(write_ascii_data[2]),
        .O(\s_write_ascii_data[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_write_ascii_data[4]_i_2 
       (.I0(write_ascii_data[2]),
        .I1(write_ascii_data[0]),
        .I2(write_ascii_data[1]),
        .I3(write_ascii_data[3]),
        .O(\s_write_ascii_data[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_write_ascii_data[5]_i_2 
       (.I0(write_ascii_data[3]),
        .I1(write_ascii_data[1]),
        .I2(write_ascii_data[0]),
        .I3(write_ascii_data[2]),
        .I4(write_ascii_data[4]),
        .O(\s_write_ascii_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \s_write_ascii_data[6]_i_4 
       (.I0(write_ascii_data[4]),
        .I1(write_ascii_data[2]),
        .I2(write_ascii_data[0]),
        .I3(write_ascii_data[1]),
        .I4(write_ascii_data[3]),
        .I5(write_ascii_data[5]),
        .O(\s_write_ascii_data[6]_i_4_n_0 ));
  FDRE \s_write_ascii_data_reg[0] 
       (.C(clk),
        .CE(s_write_ascii_data),
        .D(oled_ctr_i_n_16),
        .Q(write_ascii_data[0]),
        .R(reset_i));
  FDRE \s_write_ascii_data_reg[1] 
       (.C(clk),
        .CE(s_write_ascii_data),
        .D(oled_ctr_i_n_15),
        .Q(write_ascii_data[1]),
        .R(reset_i));
  FDRE \s_write_ascii_data_reg[2] 
       (.C(clk),
        .CE(s_write_ascii_data),
        .D(oled_ctr_i_n_14),
        .Q(write_ascii_data[2]),
        .R(reset_i));
  FDRE \s_write_ascii_data_reg[3] 
       (.C(clk),
        .CE(s_write_ascii_data),
        .D(oled_ctr_i_n_13),
        .Q(write_ascii_data[3]),
        .R(reset_i));
  FDRE \s_write_ascii_data_reg[4] 
       (.C(clk),
        .CE(s_write_ascii_data),
        .D(oled_ctr_i_n_12),
        .Q(write_ascii_data[4]),
        .R(reset_i));
  FDRE \s_write_ascii_data_reg[5] 
       (.C(clk),
        .CE(s_write_ascii_data),
        .D(oled_ctr_i_n_11),
        .Q(write_ascii_data[5]),
        .R(reset_i));
  FDRE \s_write_ascii_data_reg[6] 
       (.C(clk),
        .CE(s_write_ascii_data),
        .D(oled_ctr_i_n_10),
        .Q(write_ascii_data[6]),
        .R(reset_i));
  LUT4 #(
    .INIT(16'h0028)) 
    \s_write_base_addr[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(write_base_addr[3]),
        .O(\s_write_base_addr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00606000)) 
    \s_write_base_addr[4]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(write_base_addr[3]),
        .I4(write_base_addr[4]),
        .O(\s_write_base_addr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0060606060000000)) 
    \s_write_base_addr[5]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(write_base_addr[4]),
        .I4(write_base_addr[3]),
        .I5(write_base_addr[5]),
        .O(\s_write_base_addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \s_write_base_addr[6]_i_1 
       (.I0(\s_write_base_addr[7]_i_2_n_0 ),
        .I1(write_base_addr[5]),
        .I2(write_base_addr[3]),
        .I3(write_base_addr[4]),
        .I4(write_base_addr[6]),
        .O(\s_write_base_addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \s_write_base_addr[7]_i_1 
       (.I0(write_base_addr[5]),
        .I1(write_base_addr[3]),
        .I2(write_base_addr[4]),
        .I3(write_base_addr[6]),
        .I4(\s_write_base_addr[7]_i_2_n_0 ),
        .I5(write_base_addr[7]),
        .O(\s_write_base_addr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \s_write_base_addr[7]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\s_write_base_addr[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08800440)) 
    \s_write_base_addr[8]_i_2 
       (.I0(\s_write_base_addr[8]_i_4_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(write_base_addr[8]),
        .O(\s_write_base_addr[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_write_base_addr[8]_i_4 
       (.I0(write_base_addr[6]),
        .I1(write_base_addr[4]),
        .I2(write_base_addr[3]),
        .I3(write_base_addr[5]),
        .I4(write_base_addr[7]),
        .O(\s_write_base_addr[8]_i_4_n_0 ));
  FDRE \s_write_base_addr_reg[3] 
       (.C(clk),
        .CE(s_write_base_addr),
        .D(\s_write_base_addr[3]_i_1_n_0 ),
        .Q(write_base_addr[3]),
        .R(reset_i));
  FDRE \s_write_base_addr_reg[4] 
       (.C(clk),
        .CE(s_write_base_addr),
        .D(\s_write_base_addr[4]_i_1_n_0 ),
        .Q(write_base_addr[4]),
        .R(reset_i));
  FDRE \s_write_base_addr_reg[5] 
       (.C(clk),
        .CE(s_write_base_addr),
        .D(\s_write_base_addr[5]_i_1_n_0 ),
        .Q(write_base_addr[5]),
        .R(reset_i));
  FDRE \s_write_base_addr_reg[6] 
       (.C(clk),
        .CE(s_write_base_addr),
        .D(\s_write_base_addr[6]_i_1_n_0 ),
        .Q(write_base_addr[6]),
        .R(reset_i));
  FDRE \s_write_base_addr_reg[7] 
       (.C(clk),
        .CE(s_write_base_addr),
        .D(\s_write_base_addr[7]_i_1_n_0 ),
        .Q(write_base_addr[7]),
        .R(reset_i));
  FDRE \s_write_base_addr_reg[8] 
       (.C(clk),
        .CE(s_write_base_addr),
        .D(\s_write_base_addr[8]_i_2_n_0 ),
        .Q(write_base_addr[8]),
        .R(reset_i));
  FDRE s_write_start_reg
       (.C(clk),
        .CE(1'b1),
        .D(oled_ctr_i_n_18),
        .Q(write_start),
        .R(reset_i));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module top_oled_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;

  top_oled_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module top_oled_0_blk_mem_gen_generic_cstr__parameterized0
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clka;
  input [0:0]wea;
  input [8:0]addrb;
  input [8:0]addra;
  input [7:0]dina;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  top_oled_0_blk_mem_gen_prim_width__parameterized0 \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module top_oled_0_blk_mem_gen_generic_cstr__parameterized1
   (douta,
    clka,
    addra);
  output [14:0]douta;
  input clka;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [14:0]douta;

  top_oled_0_blk_mem_gen_prim_width__parameterized1 \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module top_oled_0_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;

  top_oled_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module top_oled_0_blk_mem_gen_prim_width__parameterized0
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clka;
  input [0:0]wea;
  input [8:0]addrb;
  input [8:0]addra;
  input [7:0]dina;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  top_oled_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module top_oled_0_blk_mem_gen_prim_width__parameterized1
   (douta,
    clka,
    addra);
  output [14:0]douta;
  input clka;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [14:0]douta;

  top_oled_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module top_oled_0_blk_mem_gen_prim_wrapper
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clka;
  input [0:0]wea;
  input [8:0]addrb;
  input [8:0]addra;
  input [7:0]dina;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[3:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[5:4]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ,doutb[3:2],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ,doutb[1:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ,doutb[7:6],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ,doutb[5:4]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(1'b1),
        .ENBWREN(wea),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module top_oled_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [9:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9 ;
  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000050F00000000000000000000000000000000000000000000),
    .INIT_11(256'h000002040206030C06040206030C060400000000000000030000000300000000),
    .INIT_12(256'h000002010502020400080102020504020000030204090409070F040904090206),
    .INIT_13(256'h0000000000000000000300000000000000000208050802020505040E05000200),
    .INIT_14(256'h00000000010C0202040100000000000000000000000004010202010C00000000),
    .INIT_15(256'h0000000000080008030E000800080000000001050105000E000E010501050000),
    .INIT_16(256'h0000000000080008000800080008000000000000000003000500000000000000),
    .INIT_17(256'h0000000100020004000801000200040000000000000000000400000000000000),
    .INIT_18(256'h0000000000000400070F04010000000000000000030E040104010401030E0000),
    .INIT_19(256'h0000000003060409040904010202000000000000060E04090501060104020000),
    .INIT_1A(256'h00000000070104090409040902070000000000000100070F0102010401080000),
    .INIT_1B(256'h000000000003000D010102010403000000000000070004080409040A030C0000),
    .INIT_1C(256'h00000000010E0209040900090006000000000000030604090409040903060000),
    .INIT_1D(256'h0000000000000300050200000000000000000000000000000102000000000000),
    .INIT_1E(256'h0000010401040104010401040104000000000000020201040104000800000000),
    .INIT_1F(256'h0000000000020005050900010002000000000000000801040104020200000000),
    .INIT_20(256'h00000400070C040A0009040A070C04000000020E0501040D0505050D0401030E),
    .INIT_21(256'h0000020204010401040104010202010C000003060409040904090409070F0401),
    .INIT_22(256'h000006030401050D04090409070F04010000010C0202040104010401070F0401),
    .INIT_23(256'h00000008030A0409040904010202010C000000030001010D00090409070F0401),
    .INIT_24(256'h0000000004010401070F04010401000000000401070F000800080008070F0401),
    .INIT_25(256'h0000040106010102000C0008070F0401000000010001030F0401040104000300),
    .INIT_26(256'h00000401070F0402000C0402070F0401000006000400040004000401070F0401),
    .INIT_27(256'h0000010C02020401040104010202010C00000001070F0101000C0402070F0401),
    .INIT_28(256'h0000040C05020601020102010102000C000000060009000900090409070F0401),
    .INIT_29(256'h00000303040904090409040904090606000004060609010900090009070F0401),
    .INIT_2A(256'h00000001030F040104000401030F00010000000300010401070F040100010003),
    .INIT_2B(256'h00000001010F060101040601010F000100000001000F030104000301000F0001),
    .INIT_2C(256'h0000000100030404070804040003000100000401040103060008030604010401),
    .INIT_2D(256'h00000000000004010401070F0000000000000601040304050409050106010403),
    .INIT_2E(256'h000000000000070F040104010000000000000400020001000008000400020001),
    .INIT_2F(256'h0000040004000400040004000400000000000004000200010001000200040000),
    .INIT_30(256'h00000400030C040A040A040A0304000000000000000000000000000200010000),
    .INIT_31(256'h000000000204040204020402030C000000000300040804080408030F04010000),
    .INIT_32(256'h00000000020C040A040A040A030C000000000400030F04090408040803000000),
    .INIT_33(256'h00000001030F040904090409020600000000000000090409070E040800000000),
    .INIT_34(256'h0000000000000400070D040400000000000004000708040400040408070F0401),
    .INIT_35(256'h000004020402020401080100070F0401000000000000030D0404040000000000),
    .INIT_36(256'h00000400070E0002070C0002070E04020000000004000400070F040104000000),
    .INIT_37(256'h00000000030C040204020402030C000000000400070C040200020404070E0402),
    .INIT_38(256'h00000401070F0409000900090006000000000006000900090409070F04010000),
    .INIT_39(256'h000000000306040A040A040A0604000000000004000200020404070E04020000),
    .INIT_3A(256'h0400070E020204000400030E0002000000000000020004040404030F00040000),
    .INIT_3B(256'h00000002010E060201080602010E000200000002000E030204000302000E0002),
    .INIT_3C(256'h0000000100030005030804050403000100000402060201040008010406020402),
    .INIT_3D(256'h00000000000004010306000800000000000006020406040A0502060204060000),
    .INIT_3E(256'h000000000008030604010000000000000000000000000000070F000000000000),
    .INIT_3F(256'h05050A0A05050A0A05050A0A05050A0A00000108010001000008000801080000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_3 ,douta[7:4],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_11 ,douta[3:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module top_oled_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    addra);
  output [14:0]douta;
  input clka;
  input [3:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ;
  wire [3:0]addra;
  wire clka;
  wire [14:0]douta;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h05010F0105010D09050101040501080D030100010201000105010A0E01090001),
    .INIT_01(256'h05000A0F0500000005000D0A05000C0005000A000500000F0500080101020604),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3 ,douta[7:4],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11 ,douta[3:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_20 ,douta[14:12],\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27 ,douta[11:8]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module top_oled_0_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;

  top_oled_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module top_oled_0_blk_mem_gen_top__parameterized0
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clka;
  input [0:0]wea;
  input [8:0]addrb;
  input [8:0]addra;
  input [7:0]dina;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  top_oled_0_blk_mem_gen_generic_cstr__parameterized0 \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module top_oled_0_blk_mem_gen_top__parameterized1
   (douta,
    clka,
    addra);
  output [14:0]douta;
  input clka;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [14:0]douta;

  top_oled_0_blk_mem_gen_generic_cstr__parameterized1 \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "charLib.mem" *) 
(* C_INIT_FILE_NAME = "charLib.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "1024" *) (* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module top_oled_0_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  top_oled_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "9" *) (* C_ADDRB_WIDTH = "9" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "pixel_buffer.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "512" *) (* C_READ_DEPTH_B = "512" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "512" *) (* C_WRITE_DEPTH_B = "512" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) 
(* C_WRITE_MODE_B = "READ_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module top_oled_0_blk_mem_gen_v8_4_1__parameterized1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [8:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [8:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [8:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized0 inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "4" *) (* C_ADDRB_WIDTH = "4" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "init_sequence_rom.mem" *) 
(* C_INIT_FILE_NAME = "init_sequence_rom.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16" *) (* C_READ_DEPTH_B = "16" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "16" *) (* C_WRITE_DEPTH_B = "16" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module top_oled_0_blk_mem_gen_v8_4_1__parameterized3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [3:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [3:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [3:0]addra;
  wire clka;
  wire [14:0]\^douta ;

  assign dbiterr = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14:0] = \^douta [14:0];
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized1 inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(\^douta ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module top_oled_0_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;

  top_oled_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized0
   (doutb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clka;
  input [0:0]wea;
  input [8:0]addrb;
  input [8:0]addra;
  input [7:0]dina;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  top_oled_0_blk_mem_gen_top__parameterized0 \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module top_oled_0_blk_mem_gen_v8_4_1_synth__parameterized1
   (douta,
    clka,
    addra);
  output [14:0]douta;
  input clka;
  input [3:0]addra;

  wire [3:0]addra;
  wire clka;
  wire [14:0]douta;

  top_oled_0_blk_mem_gen_top__parameterized1 \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
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
