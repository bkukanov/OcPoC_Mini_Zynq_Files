//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Fri Dec 04 16:48:58 2015
//Host        : ji-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target armps_wrapper.bd
//Design      : armps_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ocpoc_top
(   input CAN_PS_0_rx,
    output CAN_PS_0_tx,
    //input pulse_train_in,
    input Vaux15_v_n,
    input Vaux15_v_p,
    inout [14:0]DDR_addr,
    inout [2:0]DDR_ba,
    inout DDR_cas_n,
    inout DDR_ck_n,
    inout DDR_ck_p,
    inout DDR_cke,
    inout DDR_cs_n,
    inout [3:0]DDR_dm,
    inout [31:0]DDR_dq,
    inout [3:0]DDR_dqs_n,
    inout [3:0]DDR_dqs_p,
    inout DDR_odt,
    inout DDR_ras_n,
    inout DDR_reset_n,
    inout DDR_we_n,
    inout FIXED_IO_ddr_vrn,
    inout FIXED_IO_ddr_vrp,
    inout [53:0]FIXED_IO_mio,
    inout FIXED_IO_ps_clk,
    inout FIXED_IO_ps_porb,
    inout FIXED_IO_ps_srstb,
    inout IIC_PS_0_scl_io,
    inout IIC_PS_0_sda_io,
    inout IIC_PS_1_scl_io,
    inout IIC_PS_1_sda_io,
    
    inout IIC_PL_0_scl_io,
    inout IIC_PL_0_sda_io,     
    inout IIC_PL_1_scl_io,
    inout IIC_PL_1_sda_io,
    inout IIC_PL_2_scl_io,
    inout IIC_PL_2_sda_io,
    inout IIC_PL_3_scl_io,
    inout IIC_PL_3_sda_io,
    
    input UART_PS_0_rxd,
    output UART_PS_0_txd,
    
    input UART_PL_1_rxd,
    output UART_PL_1_txd,
    input UART_PL_2_rxd,
    output UART_PL_2_txd,
    input UART_PL_3_rxd,
    output UART_PL_3_txd,
//    input UART_PL_4_rxd,
//    output UART_PL_4_txd,
    input UART_PL_5_rxd,
    output UART_PL_5_txd,
    input UART_PL_6_rxd,
    output UART_PL_6_txd,
    input UART_PL_7_rxd,
    output UART_PL_7_txd,
    
    output pwm_0,
    output pwm_1,
    output pwm_2,
    output pwm_3,
    output pwm_4,
    output pwm_5,
    output pwm_6,
    output pwm_7,
    output pwm_8,
    output pwm_9,
    output pwm_10,
    output pwm_11,
    
    inout SPI_PS_0_io0_io,
    inout SPI_PS_0_io1_io,
    inout SPI_PS_0_sck_io,
    output SPI_PS_0_ss1_o,
    output SPI_PS_0_ss2_o,
    inout SPI_PS_0_ss_io,
    
    inout SPI_PS_1_io0_io,
    inout SPI_PS_1_io1_io,
    inout SPI_PS_1_sck_io,
    inout SPI_PS_1_ss_io,
    
    input sbus_in

);


wire sbus_rx;
wire sbus_tx;
 
assign sbus_rx = ~sbus_in;

 

armps_wrapper  armps_wrapper_i
(   .CAN_PS_0_rx( CAN_PS_0_rx ),
    .CAN_PS_0_tx( CAN_PS_0_tx ),
    .DDR_addr( DDR_addr ),
    .DDR_ba( DDR_ba ),
    .DDR_cas_n(  DDR_cas_n),
    .DDR_ck_n( DDR_ck_n ),
    .DDR_ck_p( DDR_ck_p ),
    .DDR_cke( DDR_cke ),
    .DDR_cs_n( DDR_cs_n ),
    .DDR_dm(  DDR_dm),
    .DDR_dq( DDR_dq),
    .DDR_dqs_n(DDR_dqs_n  ),
    .DDR_dqs_p( DDR_dqs_p ),
    .DDR_odt(DDR_odt  ),
    .DDR_ras_n(DDR_ras_n  ),
    .DDR_reset_n( DDR_reset_n ),
    .DDR_we_n(DDR_we_n  ),
    .FIXED_IO_ddr_vrn(  FIXED_IO_ddr_vrn),
    .FIXED_IO_ddr_vrp( FIXED_IO_ddr_vrp ),
    .FIXED_IO_mio( FIXED_IO_mio ),
    .FIXED_IO_ps_clk( FIXED_IO_ps_clk ),
    .FIXED_IO_ps_porb( FIXED_IO_ps_porb ),
    .FIXED_IO_ps_srstb(  FIXED_IO_ps_srstb),
     
    .iic_pl_0_scl_io(IIC_PL_0_scl_io),
    .iic_pl_0_sda_io(IIC_PL_0_sda_io),
    //.iic_pl_0_scl_io(),
    //.iic_pl_0_sda_io(),
    .iic_pl_1_scl_io(IIC_PL_1_scl_io),
    .iic_pl_1_sda_io(IIC_PL_1_sda_io),
    .iic_pl_2_scl_io(IIC_PL_2_scl_io),
    .iic_pl_2_sda_io(IIC_PL_2_sda_io),
    .iic_pl_3_scl_io(IIC_PL_3_scl_io),
    .iic_pl_3_sda_io(IIC_PL_3_sda_io),
    .iic_ps_0_scl_io(IIC_PS_0_scl_io),
    .iic_ps_0_sda_io(IIC_PS_0_sda_io),
    .iic_ps_1_scl_io(IIC_PS_1_scl_io),
    .iic_ps_1_sda_io(IIC_PS_1_sda_io),
     
     .pwm_0(pwm_0  ),
     .pwm_1( pwm_1 ),
     .pwm_2(pwm_2  ),
     .pwm_3(  pwm_3),
     .pwm_4( pwm_4 ),
     .pwm_5( pwm_5 ),
     .pwm_6(  pwm_6),
     .pwm_7( pwm_7 ),
     .pwm_8(pwm_8),
     .pwm_9(pwm_9),
     .pwm_10(pwm_10),
     .pwm_11(pwm_11),
     .spi_ps_0_io0_io( SPI_PS_0_io0_io ),
     .spi_ps_0_io1_io(  SPI_PS_0_io1_io),
     .spi_ps_0_sck_io( SPI_PS_0_sck_io ),
     .spi_ps_0_ss1_o( SPI_PS_0_ss1_o ),
     .spi_ps_0_ss2_o( SPI_PS_0_ss2_o ),
     .spi_ps_0_ss_io( SPI_PS_0_ss_io ),
     .spi_ps_1_io0_io(SPI_PS_1_io0_io  ),
     .spi_ps_1_io1_io( SPI_PS_1_io1_io ),
     .spi_ps_1_sck_io( SPI_PS_1_sck_io ),
     .spi_ps_1_ss_io( SPI_PS_1_ss_io ),

     .UART_PS_0_rxd(UART_PS_0_rxd),
    .UART_PS_0_txd(UART_PS_0_txd),
     
     .UART_PL_0_baudoutn(),
     .UART_PL_0_ddis(),
     .UART_PL_0_dtrn(),
     .UART_PL_0_out1n(),
     .UART_PL_0_out2n(),
     .UART_PL_0_rtsn(),
     .UART_PL_0_rxd(sbus_rx),
     .UART_PL_0_rxrdyn(),
     .UART_PL_0_txd(sbus_tx),
     .UART_PL_0_txrdyn(),
     .UART_PL_1_baudoutn(),
     .UART_PL_1_ddis(),
     .UART_PL_1_dtrn(),
     .UART_PL_1_out1n(),
     .UART_PL_1_out2n(),
     .UART_PL_1_rtsn(),
     .UART_PL_1_rxd(UART_PL_1_rxd),
     .UART_PL_1_rxrdyn(),
     .UART_PL_1_txd(UART_PL_1_txd),
     .UART_PL_1_txrdyn(),
     .UART_PL_2_baudoutn(),
     .UART_PL_2_ddis(),
     .UART_PL_2_dtrn(),
     .UART_PL_2_out1n(),
     .UART_PL_2_out2n(),
     .UART_PL_2_rtsn(),
     .UART_PL_2_rxd(UART_PL_2_rxd),
     .UART_PL_2_rxrdyn(),
     .UART_PL_2_txd(UART_PL_2_txd),
     .UART_PL_2_txrdyn(),
     .UART_PL_3_baudoutn(),
     .UART_PL_3_ddis(),
     .UART_PL_3_dtrn(),
     .UART_PL_3_out1n(),
     .UART_PL_3_out2n(),
     .UART_PL_3_rtsn(),
     .UART_PL_3_rxd(UART_PL_3_rxd),
     .UART_PL_3_rxrdyn(),
     .UART_PL_3_txd(UART_PL_3_txd),
     .UART_PL_3_txrdyn(),
/*     .UART_PL_4_baudoutn(),
     .UART_PL_4_ddis(),
     .UART_PL_4_dtrn(),
     .UART_PL_4_out1n(),
     .UART_PL_4_out2n(),
     .UART_PL_4_rtsn(),
     .UART_PL_4_rxd(UART_PL_4_rxd),
     .UART_PL_4_rxrdyn(),
     .UART_PL_4_txd(UART_PL_4_txd),
     .UART_PL_4_txrdyn(),*/
     .UART_PL_5_baudoutn(),
     .UART_PL_5_ddis(),
     .UART_PL_5_dtrn(),
     .UART_PL_5_out1n(),
     .UART_PL_5_out2n(),
     .UART_PL_5_rtsn(),
     .UART_PL_5_rxd(UART_PL_5_rxd),
     .UART_PL_5_rxrdyn(),
     .UART_PL_5_txd(UART_PL_5_txd),
     .UART_PL_5_txrdyn(),
     .UART_PL_6_baudoutn(),
     .UART_PL_6_ddis(),
     .UART_PL_6_dtrn(),
     .UART_PL_6_out1n(),
     .UART_PL_6_out2n(),
     .UART_PL_6_rtsn(),
     .UART_PL_6_rxd(UART_PL_6_rxd),
     .UART_PL_6_rxrdyn(),
     .UART_PL_6_txd(UART_PL_6_txd),
     .UART_PL_6_txrdyn(),
     .UART_PL_7_baudoutn(),
     .UART_PL_7_ddis(),
     .UART_PL_7_dtrn(),
     .UART_PL_7_out1n(),
     .UART_PL_7_out2n(),
     .UART_PL_7_rtsn(),
     .UART_PL_7_rxd(UART_PL_7_rxd),
     .UART_PL_7_rxrdyn(),
     .UART_PL_7_txd(UART_PL_7_txd),
     .UART_PL_7_txrdyn(),
    
     .pulse_train_in(sbus_in),
     
     .Vaux15_v_n(Vaux15_v_n),
     .Vaux15_v_p(Vaux15_v_p));
    
endmodule
