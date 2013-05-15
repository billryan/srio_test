///////////////////////////////////////////////////////////////////////////////
//
// DISCLAIMER OF LIABILITY
//
// This file contains proprietary and confidential information of
// Xilinx, Inc. ("Xilinx"), that is distributed under a license
// from Xilinx, and may be used, copied and/or disclosed only
// pursuant to the terms of a valid license agreement with Xilinx.
//
// XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
// ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
// EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT
// LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,
// MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx
// does not warrant that functions included in the Materials will
// meet the requirements of Licensee, or that the operation of the
// Materials will be uninterrupted or error-free, or that defects
// in the Materials will be corrected. Furthermore, Xilinx does
// not warrant or make any representations regarding use, or the
// results of the use, of the Materials in terms of correctness,
// accuracy, reliability or otherwise.
//
// Xilinx products are not designed or intended to be fail-safe,
// or for use in any application requiring fail-safe performance,
// such as life-support or safety devices or systems, Class III
// medical devices, nuclear facilities, applications related to
// the deployment of airbags, or any other applications that could
// lead to death, personal injury or severe property or
// environmental damage (individually and collectively, "critical
// applications"). Customer assumes the sole risk and liability
// of any use of Xilinx products in critical applications,
// subject only to applicable laws and regulations governing
// limitations on product liability.
//
// Copyright 1995 - 2009 Xilinx, Inc.
// All rights reserved.
//
// This disclaimer and copyright notice must be retained as part
// of this file at all times.
//
///////////////////////////////////////////////////////////////////////////////
//
// File name:     phy_wrapper.v
// Rev:           5.4
// Description:   This is an example wrapper that instantiates
//                the the Serial RapidIO Physical Layer, and
//                RocketIO Transceivers.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module phy_wrapper #(parameter SRIO_VIO = 0)
  (
   /**********  Clock and Reset Signals  **************************************/
   input         refclk,
   input         uclk,
   input         uclk2,
   input         lnk_clk,
   input         dcm_lock,
   output        refclkout,
   output        pll_locked,

   input         sys_reset_n,
   output        lnk_reset_n,

   input [0:7]   h_error,  // Currently unsupported
   input [0:7]   tc_error, // Currently unsupported
   input         fifo_error,
   input [35:0]  control2,

   /**********  Serial Link Interface  ****************************************/
   input          srio_rxn0, srio_rxp0,
   output         srio_txn0, srio_txp0,

  /*********** Management Interface ***************************************/
   input          mgt_clk,
   input          mgt_reset_n,
   input          mgt_rd_n,
   input  [0:3]   mgt_wr_n,
   input  [0:23]  mgt_a,
   input  [0:31]  mgt_do,
   input          mgt_phy_sel_n,

   output [0:31]  mgt_d_phy,
   output         mgt_phy_rdy_n,

   output         master_enable,

  /*********** Log Transmit Interface ***************************************/
   input          lnk_tsof_n,
   input          lnk_teof_n,
   input          lnk_tsrc_rdy_n,
   input          lnk_tsrc_dsc_n,
   output         lnk_tdst_rdy_n,
   output         lnk_tdst_dsc_n,
   input  [0:63]  lnk_td,
   input  [0:2]   lnk_trem,
   input          lnk_tcrf,

  // Receive data path from the RapidIO link
   output         lnk_rsof_n,
   output         lnk_reof_n,
   input          lnk_rdst_rdy_n,
   input          lnk_rdst_dsc_n,
   output         lnk_rsrc_rdy_n,
   output         lnk_rsrc_dsc_n,
   output [0:63]  lnk_rd,
   output [0:2]   lnk_rrem,
   output         lnk_rcrf,

   output [0:4]   lnk_rx_buf_stat,   // How many packets far-end can accept
   input  [0:4]   lnk_buf_stat,      // How many packets can be accepted
   output [0:4]   lnk_tlast_ack,     // AckID of last packet to accept
   output [0:4]   lnk_tnext_fm,      // AckID of next packet to transmit

   /**********  SRIO Interface Signals  ***************************************/
   input          lnk_mcast_req_n,
   input          force_reinit,
   input          lnk_linkreset_n,
   input          fast_train,
   output         lnk_mcast_ack_n,
   output         lnk_porterr_n,
   output         lnk_pna_n,
   output [0:23]  resp_time_out,
   output         lnk_mce_dec_n,

   /**********  Configuration and Status Signals  *****************************/
   output [0:511] srio_cfg,
   output         port_initialized,
   output         lnk_rrdy_n,
   output         lnk_trdy_n
  );

  // RocketIO Interface
  wire         rst_uclk_n;

  wire        rx_buf_rst;
  wire        rxbuferr;
  wire [0:15] rxdata;
  wire [0:15] rxdata0;
  wire [0:1]  rxcharisk;
  wire [0:1]  rxcharisk0;
  wire [0:1]  rxdisperr;
  wire [0:1]  rxdisperr0;
  wire [0:1]  rxnotintable;
  wire [0:1]  rxnotintable0;
  wire        txinhibit;
  wire [0:15] txdata;
  wire [0:15] txdata0;
  wire [0:1]  txcharisk;
  wire [0:1]  txcharisk0;

generate if (SRIO_VIO == 1) begin : srio_ila2_gen
  wire [255:0] phy_data;
  wire [31:0] phy_trig;

    phy_ila i_phy_ila
    (
      .control(control2),
      .clk(uclk),
      .data(phy_data),
      .trig0(phy_trig)
    );

  //PHY ILA Data Signals
  assign phy_data[255:240]  = txdata[0:15];
  assign phy_data[239:192]  = 48'h0;
  assign phy_data[191:190]  = txcharisk[0:1];
  assign phy_data[189:184]  = 6'h0;
  assign phy_data[183:168]  = rxdata[0:15];
  assign phy_data[167:120]  = 48'h0;
  assign phy_data[119:118]  = rxcharisk[0:1];
  assign phy_data[117:112]  = 6'h0;
  assign phy_data[111]      = txinhibit;
  assign phy_data[110]      = 1'b1; 
  assign phy_data[109]      = lnk_tsof_n;
  assign phy_data[108]      = lnk_teof_n;
  assign phy_data[107]      = lnk_tsrc_rdy_n;
  assign phy_data[106]      = lnk_tdst_rdy_n;
  assign phy_data[105]      = lnk_tsrc_dsc_n;
  assign phy_data[104]      = lnk_tdst_dsc_n;
  assign phy_data[103]      = lnk_tcrf;
  assign phy_data[102]      = lnk_rsof_n;
  assign phy_data[101]      = lnk_reof_n;
  assign phy_data[100]      = lnk_rsrc_rdy_n;
  assign phy_data[99]       = lnk_rdst_rdy_n;
  assign phy_data[98]       = lnk_rsrc_dsc_n;
  assign phy_data[97]       = lnk_rdst_dsc_n;
  assign phy_data[96]     = lnk_rcrf;
  assign phy_data[95:91]  = lnk_tnext_fm[0:4];
  assign phy_data[90:86]  = lnk_tlast_ack[0:4];
  assign phy_data[85]     = lnk_porterr_n;
  assign phy_data[84]     = lnk_pna_n;
  assign phy_data[83:76]  = tc_error[0:7];
  assign phy_data[75:68]  = h_error[0:7];
  assign phy_data[67]     = fifo_error;
  assign phy_data[66]     = port_initialized;                                
                        
  assign phy_data[65:58]  = {rxdisperr[0:1], 6'b0};      
  assign phy_data[57:50]  = {rxnotintable[0:1], 6'b0};                           
  assign phy_data[49]     = 1'b0;                           
  assign phy_data[48]     = 1'b0;                                                
  assign phy_data[47]     = force_reinit;                           
  assign phy_data[46]     = lnk_trdy_n;                           
  assign phy_data[45]     = lnk_rrdy_n;
  assign phy_data[44]     = pll_locked;
  assign phy_data[43:0]   = 44'b0;  


  //PHY ILA Trigger Signals
  assign phy_trig[31]   = lnk_tsof_n;
  assign phy_trig[30]   = lnk_teof_n;
  assign phy_trig[29]   = lnk_tsrc_rdy_n;
  assign phy_trig[28]   = lnk_tdst_rdy_n;
  assign phy_trig[27]   = lnk_tsrc_dsc_n;
  assign phy_trig[26]   = lnk_tdst_dsc_n;
  assign phy_trig[25]   = lnk_tcrf;  
  assign phy_trig[24]   = lnk_rsof_n;
  assign phy_trig[23]   = lnk_reof_n;
  assign phy_trig[22]   = lnk_rsrc_rdy_n;
  assign phy_trig[21]   = lnk_rdst_rdy_n;
  assign phy_trig[20]   = lnk_rsrc_dsc_n;
  assign phy_trig[19]   = lnk_rdst_dsc_n;
  assign phy_trig[18]   = lnk_rcrf;  
  assign phy_trig[17]   = lnk_porterr_n;                                
  assign phy_trig[16]   = lnk_pna_n;                                
  assign phy_trig[15]   = lnk_trdy_n;                                
  assign phy_trig[14]   = lnk_rrdy_n;                                
  assign phy_trig[13:8] = h_error[0:5];                                
  assign phy_trig[7]    = fifo_error;                                
  assign phy_trig[6]    = txinhibit;                               
  assign phy_trig[5]    = 1'b1;                               
  assign phy_trig[4]    = 1'b0;                               
  assign phy_trig[3]    = 1'b0;                               
  assign phy_trig[2]    = port_initialized;
  assign phy_trig[1]    = |rxdisperr;
  assign phy_trig[0]    = |rxnotintable;

end // srio_ila2_gen
endgenerate // srio_ila2_gen

  assign rxdata       = rxdata0;
  assign rxcharisk    = rxcharisk0;
  assign rxdisperr    = rxdisperr0;
  assign rxnotintable = rxnotintable0;
  assign txdata0      = txdata;
  assign txcharisk0   = txcharisk;

  /****************************************************************************/
  /*  Physical Layer - SRIO Core and RocketIO Transceivers                    */
  /****************************************************************************/

  srio_phy_v5_4 phy_1x_ser
    (
    .uclk               (uclk),
    .uclk_dv4           (lnk_clk),
    .uclk_lock          (dcm_lock),
    .sys_reset_n        (sys_reset_n),
    .lnk_td             (lnk_td),
    .lnk_trem           (lnk_trem),
    .lnk_tsof_n         (lnk_tsof_n),
    .lnk_teof_n         (lnk_teof_n),
    .lnk_tsrc_rdy_n     (lnk_tsrc_rdy_n),
    .lnk_tsrc_dsc_n     (lnk_tsrc_dsc_n),
    .lnk_mcast_req_n    (lnk_mcast_req_n),
    .lnk_rbuf_stat      (lnk_buf_stat),
    .lnk_rdst_rdy_n     (lnk_rdst_rdy_n),
    .lnk_rdst_dsc_n     (lnk_rdst_dsc_n),
    .lnk_linkreset_n    (lnk_linkreset_n),
    .force_reinit       (force_reinit),
    .mgt_clk            (mgt_clk),
    .mgt_reset_n        (mgt_reset_n),
    .mgt_a              (mgt_a[12:23]),
    .mgt_sel_n          (mgt_phy_sel_n),
    .mgt_wr_n           (mgt_wr_n),
    .mgt_rd_n           (mgt_rd_n),
    .mgt_di             (mgt_do),
    .fast_train         (fast_train),
    .crf_bit_tx         (lnk_tcrf),
    .cfg_out            (srio_cfg),
    .lnk_tlast_ack      (lnk_tlast_ack),
    .lnk_tnext_fm       (lnk_tnext_fm),
    .lnk_tbuf_stat      (lnk_rx_buf_stat),
    .lnk_trdy_n         (lnk_trdy_n),
    .lnk_tdst_rdy_n     (lnk_tdst_rdy_n),
    .lnk_tdst_dsc_n     (lnk_tdst_dsc_n),
    .lnk_mcast_ack_n    (lnk_mcast_ack_n),
    .lnk_rd             (lnk_rd),
    .lnk_rrem           (lnk_rrem),
    .lnk_rrdy_n         (lnk_rrdy_n),
    .lnk_rsof_n         (lnk_rsof_n),
    .lnk_reof_n         (lnk_reof_n),
    .lnk_rsrc_rdy_n     (lnk_rsrc_rdy_n),
    .lnk_rsrc_dsc_n     (lnk_rsrc_dsc_n),
    .lnk_porterr_n      (lnk_porterr_n),
    .lnk_pna_n          (lnk_pna_n),
    .resp_time_out      (resp_time_out),
    .master_enable      (master_enable),
    .rst_uclk_n         (rst_uclk_n),
    .lnk_reset_n        (lnk_reset_n),
    .lnk_mce_dec_n      (lnk_mce_dec_n),
    .mgt_do             (mgt_d_phy),
    .mgt_rdy_n          (mgt_phy_rdy_n),
    .mgt_int_n          (),
    .port_initialized   (port_initialized),
    .mode_sel           (),
    .crf_bit_rx         (lnk_rcrf),
    .rxbuferr           (rxbuferr),
    .rxcharisk          (rxcharisk),
    .rxdisperr          (rxdisperr),
    .rxnotintable       (rxnotintable),
    .rxdata             (rxdata),
    .rx_buf_rst         (rx_buf_rst),
    .txinhibit          (txinhibit),
    .txcharisk          (txcharisk),
    .txdata             (txdata)
  ); //srio_phy


  srio_gt_wrapper_v5_1x srio_gt_wrapper
    (
    .REFCLK             (refclk),
    .REFCLKOUT          (refclkout),
    .GTPRESET           (~rst_uclk_n),
    .RXBUFRST           (rx_buf_rst),
    .RXBUFERR           (rxbuferr),
    .RXUSRCLK           (uclk2),
    .RXUSRCLK2          (uclk),
    .TXUSRCLK           (uclk2),
    .TXUSRCLK2          (uclk),
    .RXN0               (srio_rxn0),
    .RXP0               (srio_rxp0),
    .TXN0               (srio_txn0),
    .TXP0               (srio_txp0),
    .PLLLKDET           (pll_locked),
    .RXDATA0            (rxdata0),
    .RXCHARISK0         (rxcharisk0),
    .RXDISPERR0         (rxdisperr0),
    .RXNOTINTABLE0      (rxnotintable0),
    .TXINHIBIT          (txinhibit),
    .TXDATA0            (txdata0),
    .TXCHARISK0         (txcharisk0)
  ); // RocketIO Transceivers


endmodule
