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
// File name:     rio_wrapper.v
// Rev:           5.4
// Description:   This is an example wrapper that instantiates
//                the RapidIO Logical Layer, Serial RapidIO
//                Physical Layer, RocketIO Transceivers, Buffer,
//                and Register Manager. It does not include the
//                user application or clock logic.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module rio_wrapper #(
  parameter TCQ = 100,
  parameter SRIO_VIO = 0
)(
   /**********  Clock and Reset Signals  **************************************/
   input         refclk,
   input         uclk,
   input         uclk2,
   input         log_clk,
   input         phy_clk,
   input         dcm_lock,
   output        refclkout,
   output        pll_locked,
   input         sys_reset_n,
   input         lnk_linkreset_n,
   output        lnk_reset_n,

   /**********  Serial Link Interface  ****************************************/
   input          srio_rxn0, srio_rxp0,
   output         srio_txn0, srio_txp0,

   /**********  Target Request Interface  *************************************/
   //Target Req control signals
   output         treq_sof_n,
   output         treq_eof_n,
   output         treq_vld_n,
   input          treq_rdy_n,
   //Target Req data to the application interface
   output [0:1]   treq_prio,
   output         treq_crf,
   output [0:3]   treq_ftype,
   output [0:7]   treq_dest_id,
   output [0:7]   treq_src_id,
   output [0:7]   treq_tid,
   output [0:3]   treq_ttype,
   output [0:33]  treq_addr,
   output [0:7]   treq_byte_en_n,
   output [0:8]   treq_byte_count,
   output [0:63]  treq_data,
   // Doorbell/Messaging signals
   output [0:15]  treq_db_info,
   output [0:3]   treq_msg_len,
   output [0:3]   treq_msg_seg,
   output [0:5]   treq_mbox,
   output [0:1]   treq_letter,


   /**********  Target Response Interface  ************************************/
   //Target Response control signals
   input          tresp_sof_n,
   input          tresp_eof_n,
   input          tresp_vld_n,
   input          tresp_dsc_n,
   output         tresp_rdy_n,
   //Target Response Signals from application interface
   input [0:1]    tresp_prio,
   input          tresp_crf,
   input [0:3]    tresp_ftype,
   input [0:7]    tresp_dest_id,
   input [0:3]    tresp_ttype,
   input [0:3]    tresp_status,
   input [0:7]    tresp_tid,
   input          tresp_no_data,
   input [0:63]   tresp_data,
   // Doorbell/Messaging signals
   input [0:3]    tresp_msg_seg,
   input [0:1]    tresp_mbox,
   input [0:1]    tresp_letter,

   /**********  Initiator Response Interface  *********************************/
   //Initiator Response control signals
   output         iresp_sof_n,
   output         iresp_eof_n,
   output         iresp_vld_n,
   input          iresp_rdy_n,
   output         iresp_local,
   //Initiator response data signals to application interface
   output [0:1]   iresp_prio,
   output         iresp_crf,
   output [0:7]   iresp_src_id,
   output [0:3]   iresp_ftype,
   output [0:3]   iresp_ttype,
   output [0:3]   iresp_status,
   output [0:7]   iresp_tid,
   output [0:7]   iresp_dest_id,
   output [0:63]  iresp_data,
   // Doorbell/Messaging signals
   output [0:3]   iresp_msg_seg,
   output [0:1]   iresp_mbox,
   output [0:1]   iresp_letter,

   /**********  Initiator Request Interface  **********************************/
   //Initiator Request control signals
   input          ireq_sof_n,
   input          ireq_eof_n,
   input          ireq_vld_n,
   input          ireq_local,
   input          ireq_dsc_n,
   output         ireq_rdy_n,
   //Initiator Request data signals to application interface
   input [0:1]    ireq_prio,
   input          ireq_crf,
   input [0:3]    ireq_ftype,
   input [0:7]    ireq_tid,
   input [0:7]    ireq_dest_id,
   input [0:7]    ireq_hop_count,
   input [0:3]    ireq_ttype,
   input [0:8]    ireq_byte_count,
   input [0:7]    ireq_byte_en_n,
   input [0:33]   ireq_addr,
   input [0:63]   ireq_data,
   // Doorbell/Messaging signals
   input [0:15]   ireq_db_info_i,
   input [0:3]    ireq_msg_len_i,
   input [0:3]    ireq_msg_seg_i,
   input [0:5]    ireq_mbox_i,
   input [0:1]    ireq_letter_i,

   /**********  SRIO Interface Signals  ***************************************/
   input          lnk_mcast_req_n,
   input          force_reinit,
   input          fast_train,
   output         lnk_mcast_ack_n,
   output         lnk_porterr_n,
   output         lnk_pna_n,
   output [0:23]  resp_time_out,
   output         lnk_mce_dec_n,

   input   [0:7]  h_error,  // Currently unsupported
   input   [0:7]  tc_error, // Currently unsupported

   /**********  Chipscope ILA Signals  *****************************/
   input  [35:0]  control1,
   input  [35:0]  control2,

   /**********  Configuration and Status Signals  *****************************/
   output [0:511] srio_cfg,
   output [0:255] log_io_cfg,
   output [0:63]  buffer_cfg,
   output [0:15]  deviceid,
   output         port_initialized,
   output         mode_sel,
   output         lnk_rrdy_n,
   output         lnk_trdy_n
                    );

  /*********** Physical Layer Interface ***************************************/
  // RapidIO CSR (Control/Status Registers) management interface
  wire         mgt_clk;
  wire         mgt_reset_n;
  wire         mgt_rd_n;
  wire [0:3]   mgt_wr_n;
  wire [0:23]  mgt_a;
  wire [0:31]  mgt_do;

  wire [0:31]  mgt_d_phy;
  wire [0:31]  mgt_d_log;
  wire [0:31]  mgt_d_usr;
  wire         mgt_log_rdy_n;
  wire         mgt_phy_rdy_n;
  wire         mgt_usr_rdy_n;
  wire         mgt_log_sel_n;
  wire         mgt_phy_sel_n;
  wire         mgt_usr_sel_n;

  wire         master_enable;

  // Transmit data path to the RapidIO Port
  wire         phy_tlnk_sof_n;
  wire         phy_tlnk_eof_n;
  wire         phy_tlnk_src_rdy_n;
  wire         phy_tlnk_src_dsc_n;
  wire         phy_tlnk_dst_rdy_n;
  wire         phy_tlnk_dst_dsc_n;
  wire [0:63]  phy_tlnk_d;
  wire [0:2]   phy_tlnk_rem;
  wire         phy_tlnk_crf;

  // Receive data path from the RapidIO link
  wire         phy_rlnk_sof_n;
  wire         phy_rlnk_eof_n;
  wire         phy_rlnk_dst_rdy_n;
  wire         phy_rlnk_dst_dsc_n;
  wire         phy_rlnk_src_rdy_n;
  wire         phy_rlnk_src_dsc_n;
  wire [0:63]  phy_rlnk_d;
  wire [0:2]   phy_rlnk_rem;
  wire         phy_rlnk_crf;

  wire [0:4]   lnk_rx_buf_stat;   // How many packets far-end can accept
  wire [0:4]   lnk_buf_stat;      // How many packets can be accepted
  wire [0:4]   lnk_tlast_ack;     // AckID of last packet to accept
  wire [0:4]   lnk_tnext_fm;      // AckID of next packet to transmit


  /*********** Logical IO Interface *******************************************/
  //Wired between the Buffer and the User Application
  // Rx Side
  wire        log_rlnk_sof_n;     // Start of frame
  wire        log_rlnk_eof_n;     // End of frame
  wire        log_rlnk_src_rdy_n; // Ready to send data to the buffer
  wire        log_rlnk_dst_rdy_n; // Ready to accept data from the buffer
  wire [0:63] log_rlnk_d;         // Data
  wire [0:2]  log_rlnk_rem;       // Remainder
  wire        log_rlnk_crf;       // CRF

  // Tx Side
  wire        log_tlnk_sof_n;     // Start of frame
  wire        log_tlnk_eof_n;     // End of frame
  wire        log_tlnk_src_rdy_n; // Source ready to send data
  wire        log_tlnk_src_dsc_n; // Source discontinue sending data
  wire        tx_response;        // To buffer indicating Response packet type
  wire        log_tlnk_dst_rdy_n; // Destination ready to accept data
  wire        tx_resp_only;       // From buffer indicating 1 entry available
  wire [0:63] log_tlnk_d;         // Data
  wire [0:2]  log_tlnk_rem;       // Remainder
  wire        log_tlnk_crf;       // CRF

  /************  Register Manager Interface  **********************************/
  // Response path
  wire        mresp_sof_n;
  wire        mresp_eof_n;
  wire        mresp_vld_n;
  wire        mresp_rdy_n;
  wire        mresp_local;
  wire [0:3]  mresp_ftype;
  wire [0:3]  mresp_ttype;
  wire [0:7]  mresp_dest_id;
  wire [0:7]  mresp_src_id;
  wire [0:15] mresp_dest_id_int;
  wire [0:15] mresp_src_id_int;

  wire [0:7]  mresp_tid;
  wire [0:1]  mresp_prio;
  wire [0:3]  mresp_status;
  wire [0:63] mresp_data;

  // Request path
  wire        mreq_sof_n;
  wire        mreq_eof_n;
  wire        mreq_vld_n;
  wire        mreq_rdy_n;
  wire        mreq_local;
  wire [0:3]  mreq_ftype;
  wire [0:3]  mreq_ttype;
  wire [0:7]  mreq_src_id;
  wire [0:7]  mreq_dest_id;

  wire [0:15] mreq_dest_id_int;
  wire [0:15] mreq_src_id_int;
  wire [0:7]  mreq_tid;
  wire [0:1]  mreq_prio;
  wire [0:8]  mreq_byte_count;
  wire [0:7]  mreq_byte_en_n;
  wire [0:63] mreq_data;
  wire [0:20] mreq_offset;

  reg  [0:6] fifo_count;

  /****************************************************************************/
  /*  RIO Wrapper ILA                                                         */
  /****************************************************************************/

  
  generate if (SRIO_VIO == 1) begin : rio_ila1_gen
    wire [255:0] rio_data;
    wire [31:0]  rio_trig;

    rio_ila i_rio_ila ( 
      .control (control1),
      .clk     (uclk),
      .data    (rio_data),
      .trig0   (rio_trig)
    );

    // RIO ILA Tigger Signals
    assign rio_trig[31]   = ireq_sof_n;
    assign rio_trig[30]   = ireq_vld_n;
    assign rio_trig[29]   = ireq_rdy_n;
    assign rio_trig[28]   = lnk_porterr_n;
    assign rio_trig[27]   = tresp_sof_n;
    assign rio_trig[26]   = log_tlnk_sof_n;
    assign rio_trig[25]   = lnk_pna_n;
    assign rio_trig[24]   = log_tlnk_dst_rdy_n;
    assign rio_trig[23]   = phy_tlnk_sof_n;
    assign rio_trig[22]   = phy_tlnk_eof_n;
    assign rio_trig[21]   = phy_tlnk_src_rdy_n;
    assign rio_trig[20]   = phy_tlnk_src_dsc_n;
    assign rio_trig[19]   = phy_tlnk_dst_rdy_n;
    assign rio_trig[18]   = phy_tlnk_dst_dsc_n;
    assign rio_trig[17]   = phy_rlnk_sof_n;
    assign rio_trig[16]   = phy_rlnk_eof_n;
    assign rio_trig[15]   = phy_rlnk_dst_rdy_n;
    assign rio_trig[14]   = phy_rlnk_dst_dsc_n;
    assign rio_trig[13]   = phy_rlnk_src_rdy_n;
    assign rio_trig[12]   = phy_rlnk_src_dsc_n;
    assign rio_trig[11]   = treq_sof_n;
    assign rio_trig[10]   = iresp_sof_n;
    assign rio_trig[9]    = fifo_count[0];
    assign rio_trig[8:1]  = h_error[0:7];
    assign rio_trig[0]    = tc_error[0];
                               

    //RIO ILA Data Signals
    assign rio_data[255]      = tc_error[0];
    assign rio_data[254]      = ireq_sof_n;
    assign rio_data[253]      = ireq_eof_n;
    assign rio_data[252]      = ireq_vld_n;
    assign rio_data[251]      = ireq_rdy_n;
    assign rio_data[250:247]  = ireq_ftype[0:3];
    assign rio_data[246:243]  = ireq_ttype[0:3];
    assign rio_data[242]      = ireq_local;
    assign rio_data[241:234]  = ireq_tid[0:7];
    assign rio_data[233]      = tresp_sof_n;
    assign rio_data[232]      = tresp_eof_n;
    assign rio_data[231]      = tresp_vld_n;
    assign rio_data[230]      = tresp_rdy_n;
    assign rio_data[229:226]  = tresp_ttype[0:3];
    assign rio_data[225:218]  = tresp_tid[0:7];
    assign rio_data[217]      = lnk_porterr_n;
    assign rio_data[216]      = fifo_count[0];
    assign rio_data[215]      = lnk_pna_n;
    assign rio_data[214]      = log_tlnk_sof_n;
    assign rio_data[213]      = log_tlnk_eof_n;
    assign rio_data[212]      = log_tlnk_src_rdy_n;
    assign rio_data[211]      = log_tlnk_dst_rdy_n;
    assign rio_data[210]      = phy_tlnk_sof_n;
    assign rio_data[209]      = phy_tlnk_eof_n;
    assign rio_data[208]      = phy_tlnk_src_rdy_n;
    assign rio_data[207]      = phy_tlnk_src_dsc_n;
    assign rio_data[206]      = phy_tlnk_dst_rdy_n;
    assign rio_data[205]      = phy_tlnk_dst_dsc_n;
    assign rio_data[204:141]  = phy_tlnk_d[0:63];
    assign rio_data[140:138]  = phy_tlnk_rem[0:2];
    assign rio_data[137:133]  = lnk_tnext_fm[0:4];
    assign rio_data[132:128]  = lnk_tlast_ack[0:4];
    assign rio_data[127]      = phy_rlnk_sof_n;
    assign rio_data[126]      = phy_rlnk_eof_n;
    assign rio_data[125]      = phy_rlnk_dst_rdy_n;
    assign rio_data[124]      = phy_rlnk_dst_dsc_n;
    assign rio_data[123]      = phy_rlnk_src_rdy_n;
    assign rio_data[122]      = phy_rlnk_src_dsc_n;
    assign rio_data[121:58]   = phy_rlnk_d[0:63];
    assign rio_data[57:55]    = phy_rlnk_rem[0:2];
    assign rio_data[54]       = log_rlnk_sof_n;
    assign rio_data[53]       = log_rlnk_eof_n;
    assign rio_data[52]       = log_rlnk_src_rdy_n;
    assign rio_data[51]       = log_rlnk_dst_rdy_n;
    assign rio_data[50]       = iresp_sof_n;
    assign rio_data[49]       = iresp_eof_n;
    assign rio_data[48]       = iresp_vld_n;
    assign rio_data[47]       = iresp_rdy_n;
    assign rio_data[46:43]    = iresp_ftype[0:3];
    assign rio_data[42:39]    = iresp_ttype[0:3];
    assign rio_data[38:31]    = iresp_tid[0:7];
    assign rio_data[30:27]    = iresp_status[0:3];
    assign rio_data[26]       = treq_sof_n;
    assign rio_data[25]       = treq_eof_n;
    assign rio_data[24]       = treq_vld_n;
    assign rio_data[23]       = treq_rdy_n;
    assign rio_data[22:19]    = treq_ftype[0:3];
    assign rio_data[18:15]    = treq_ttype[0:3];
    assign rio_data[14:7]     = treq_tid[0:7];
    assign rio_data[6:0]      = h_error[1:7];

  end // generate rio_ila1_gen
  endgenerate // rio_ila1_gen

  
  /****************************************************************************/
  /*  Physical Layer Wrapper - SRIO Core and RocketIO Transceivers            */
  /****************************************************************************/

  phy_wrapper #( .SRIO_VIO (SRIO_VIO))
  phy_wrapper (
    .refclk             (refclk),
   .uclk                (uclk),
    .uclk2              (uclk2),
    .lnk_clk            (phy_clk),
    .dcm_lock           (dcm_lock),
    .refclkout          (refclkout),
    .pll_locked         (pll_locked),
    .sys_reset_n        (sys_reset_n),
    .lnk_reset_n        (lnk_reset_n),
    .srio_rxn0          (srio_rxn0),
    .srio_rxp0          (srio_rxp0),
    .srio_txn0          (srio_txn0),
    .srio_txp0          (srio_txp0),
    .mgt_clk            (mgt_clk),
    .mgt_reset_n        (mgt_reset_n),
    .mgt_rd_n           (mgt_rd_n),
    .mgt_wr_n           (mgt_wr_n),
    .mgt_a              (mgt_a),
    .mgt_do             (mgt_do),
    .mgt_phy_sel_n      (mgt_phy_sel_n),
    .mgt_d_phy          (mgt_d_phy),
    .mgt_phy_rdy_n      (mgt_phy_rdy_n),
    .master_enable      (master_enable),
    .lnk_tsof_n         (phy_tlnk_sof_n),
    .lnk_teof_n         (phy_tlnk_eof_n),
    .lnk_tsrc_rdy_n     (phy_tlnk_src_rdy_n),
    .lnk_tsrc_dsc_n     (phy_tlnk_src_dsc_n),
    .lnk_tdst_rdy_n     (phy_tlnk_dst_rdy_n),
    .lnk_tdst_dsc_n     (phy_tlnk_dst_dsc_n),
    .lnk_td             (phy_tlnk_d),
    .lnk_trem           (phy_tlnk_rem),
    .lnk_tcrf           (phy_tlnk_crf),
    .lnk_rsof_n         (phy_rlnk_sof_n),
    .lnk_reof_n         (phy_rlnk_eof_n),
    .lnk_rdst_rdy_n     (phy_rlnk_dst_rdy_n),
    .lnk_rdst_dsc_n     (phy_rlnk_dst_dsc_n),
    .lnk_rsrc_rdy_n     (phy_rlnk_src_rdy_n),
    .lnk_rsrc_dsc_n     (phy_rlnk_src_dsc_n),
    .lnk_rd             (phy_rlnk_d),
    .lnk_rrem           (phy_rlnk_rem),
    .lnk_rcrf           (phy_rlnk_crf),
    .lnk_rx_buf_stat    (lnk_rx_buf_stat),
    .lnk_buf_stat       (lnk_buf_stat),
    .lnk_tlast_ack      (lnk_tlast_ack),
    .lnk_tnext_fm       (lnk_tnext_fm),
    .lnk_mcast_req_n    (lnk_mcast_req_n),
    .force_reinit       (force_reinit),
    .lnk_linkreset_n    (lnk_linkreset_n),
    .fast_train         (fast_train),
    .lnk_mcast_ack_n    (lnk_mcast_ack_n),
    .lnk_porterr_n      (lnk_porterr_n),
    .lnk_pna_n          (lnk_pna_n),
    .resp_time_out      (resp_time_out),
    .lnk_mce_dec_n      (lnk_mce_dec_n),
    .srio_cfg           (srio_cfg),
    .port_initialized   (port_initialized),
    .lnk_rrdy_n         (lnk_rrdy_n),
    .lnk_trdy_n         (lnk_trdy_n),
    .h_error            (h_error),
    .tc_error           (tc_error),
    .fifo_error         (fifo_count[0]),
    .control2           (control2)
  ); // PHY Wrapper


  /****************************************************************************/
  /* Logical Layer                                                            */
  /****************************************************************************/


  rio_log_io_v5_4 log_io_top
    (
    .clk              (log_clk),
    .reset_n          (lnk_reset_n),
    .log_io_cfg_o     (log_io_cfg),
    .deviceid_o       (deviceid),
    .master_enable_i  (master_enable),

    .rx_sof_n_i       (log_rlnk_sof_n),
    .rx_eof_n_i       (log_rlnk_eof_n),
    .rx_vld_n_i       (log_rlnk_src_rdy_n),
    .rx_crf_i         (log_rlnk_crf),
    .rx_rem_i         (log_rlnk_rem),
    .rx_data_i        (log_rlnk_d),
    .rx_rdy_n_o       (log_rlnk_dst_rdy_n),

    .tx_sof_n_o       (log_tlnk_sof_n),
    .tx_eof_n_o       (log_tlnk_eof_n),
    .tx_vld_n_o       (log_tlnk_src_rdy_n),
    .tx_response_o    (tx_response),
    .tx_crf_o         (log_tlnk_crf),
    .tx_dsc_n_o       (log_tlnk_src_dsc_n),
    .tx_rem_o         (log_tlnk_rem),
    .tx_data_o        (log_tlnk_d),
    .tx_rdy_n_i       (log_tlnk_dst_rdy_n),
    .tx_resp_only_i   (tx_resp_only),

    .mgt_clk          (mgt_clk),
    .mgt_reset_n      (mgt_reset_n),
    .mgt_a_i          (mgt_a),
    .mgt_di_i         (mgt_do),
    .mgt_wr_n_i       (mgt_wr_n),
    .mgt_rd_n_i       (mgt_rd_n),
    .mgt_sel_n_i      (mgt_log_sel_n),
    .mgt_do_o         (mgt_d_log),
    .mgt_rdy_n_o      (mgt_log_rdy_n),

    .treq_sof_n_o     (treq_sof_n),
    .treq_eof_n_o     (treq_eof_n),
    .treq_vld_n_o     (treq_vld_n),
    .treq_rdy_n_i     (treq_rdy_n),
    .treq_prio_o      (treq_prio),
    .treq_crf_o       (treq_crf),
    .treq_ftype_o     (treq_ftype),
    .treq_ttype_o     (treq_ttype),
    .treq_dest_id_o   (treq_dest_id),
    .treq_src_id_o    (treq_src_id),
    .treq_tid_o       (treq_tid),
    .treq_addr_o      (treq_addr),
    .treq_byte_en_n_o (treq_byte_en_n),
    .treq_byte_count_o(treq_byte_count),
    .treq_data_o      (treq_data),
    .treq_db_info_o   (treq_db_info),
    .treq_msg_len_o   (treq_msg_len),
    .treq_msg_seg_o   (treq_msg_seg),
    .treq_mbox_o      (treq_mbox),
    .treq_letter_o    (treq_letter),

    .iresp_sof_n_o    (iresp_sof_n),
    .iresp_eof_n_o    (iresp_eof_n),
    .iresp_vld_n_o    (iresp_vld_n),
    .iresp_rdy_n_i    (iresp_rdy_n),
    .iresp_prio_o     (iresp_prio),
    .iresp_crf_o      (iresp_crf),
    .iresp_ftype_o    (iresp_ftype),
    .iresp_ttype_o    (iresp_ttype),
    .iresp_dest_id_o  (iresp_dest_id),
    .iresp_src_id_o   (iresp_src_id),
    .iresp_tid_o      (iresp_tid),
    .iresp_status_o   (iresp_status),
    .iresp_local_o    (iresp_local),
    .iresp_data_o     (iresp_data),
    .iresp_msg_seg_o  (iresp_msg_seg),
    .iresp_mbox_o     (iresp_mbox),
    .iresp_letter_o   (iresp_letter),

    .mreq_sof_n_o     (mreq_sof_n),
    .mreq_eof_n_o     (mreq_eof_n),
    .mreq_vld_n_o     (mreq_vld_n),
    .mreq_rdy_n_i     (mreq_rdy_n),
    .mreq_prio_o      (mreq_prio),
    .mreq_crf_o       (),
    .mreq_ftype_o     (mreq_ftype),
    .mreq_ttype_o     (mreq_ttype),
    .mreq_src_id_o    (mreq_src_id),
    .mreq_dest_id_o   (mreq_dest_id),
    .mreq_tid_o       (mreq_tid),
    .mreq_local_o     (mreq_local),
    .mreq_byte_count_o(mreq_byte_count),
    .mreq_byte_en_n_o (mreq_byte_en_n),
    .mreq_data_o      (mreq_data),
    .mreq_offset_o    (mreq_offset),

    .tresp_sof_n_i    (tresp_sof_n),
    .tresp_eof_n_i    (tresp_eof_n),
    .tresp_vld_n_i    (tresp_vld_n),
    .tresp_rdy_n_o    (tresp_rdy_n),
    .tresp_dsc_n_i    (tresp_dsc_n),
    .tresp_prio_i     (tresp_prio),
    .tresp_crf_i      (tresp_crf),
    .tresp_ftype_i    (tresp_ftype),
    .tresp_ttype_i    (tresp_ttype),
    .tresp_dest_id_i  (tresp_dest_id),
    .tresp_status_i   (tresp_status),
    .tresp_tid_i      (tresp_tid),
    .tresp_no_data_i  (tresp_no_data),
    .tresp_data_i     (tresp_data),
    .tresp_src_id_i   (deviceid[8:15]),
    .tresp_msg_seg_i  (tresp_msg_seg),
    .tresp_mbox_i     (tresp_mbox),
    .tresp_letter_i   (tresp_letter),

    .ireq_sof_n_i     (ireq_sof_n),
    .ireq_eof_n_i     (ireq_eof_n),
    .ireq_vld_n_i     (ireq_vld_n),
    .ireq_rdy_n_o     (ireq_rdy_n),
    .ireq_dsc_n_i     (ireq_dsc_n),
    .ireq_prio_i      (ireq_prio),
    .ireq_crf_i       (ireq_crf),
    .ireq_ftype_i     (ireq_ftype),
    .ireq_ttype_i     (ireq_ttype),
    .ireq_src_id_i    (deviceid[8:15]),
    .ireq_dest_id_i   (ireq_dest_id),
    .ireq_local_i     (ireq_local),
    .ireq_tid_i       (ireq_tid),
    .ireq_hop_count_i (ireq_hop_count),
    .ireq_byte_count_i(ireq_byte_count),
    .ireq_byte_en_n_i (ireq_byte_en_n),
    .ireq_addr_i      (ireq_addr),
    .ireq_data_i      (ireq_data),
    .ireq_db_info_i   (ireq_db_info_i),
    .ireq_msg_len_i   (ireq_msg_len_i),
    .ireq_msg_seg_i   (ireq_msg_seg_i),
    .ireq_mbox_i      (ireq_mbox_i),
    .ireq_letter_i    (ireq_letter_i),

    .mresp_sof_n_i    (mresp_sof_n),
    .mresp_eof_n_i    (mresp_eof_n),
    .mresp_vld_n_i    (mresp_vld_n),
    .mresp_rdy_n_o    (mresp_rdy_n),
    .mresp_prio_i     (mresp_prio),
    .mresp_crf_i      (1'b0),
    .mresp_ftype_i    (mresp_ftype),
    .mresp_ttype_i    (mresp_ttype),
    .mresp_dest_id_i  (mresp_dest_id),
    .mresp_src_id_i   (mresp_src_id),
    .mresp_tid_i      (mresp_tid),
    .mresp_local_i    (mresp_local),
    .mresp_status_i   (mresp_status),
    .mresp_data_i     (mresp_data)
   ); //log_io_top

  /****************************************************************************/
  /* Buffer                                                                   */
  /****************************************************************************/
   rio_buffer buffer_sim (
    //Configuration Bus
    .CFG_IN                 (buffer_cfg),

    // Logical Layer End (RX)
    .LOG_CLK                (log_clk),
    .LOG_RST_N              (lnk_reset_n),

    .RX_SOF_N_I             (log_rlnk_sof_n),
    .RX_EOF_N_I             (log_rlnk_eof_n),
    .RX_RDY_N_O             (log_rlnk_dst_rdy_n),
    .RX_VLD_N_I             (log_rlnk_src_rdy_n),
    .RX_DATA_I              (log_rlnk_d),
    .RX_REM_I               (log_rlnk_rem),
    .RX_CRF_I               (log_rlnk_crf),

    // Logical Layer End (TX)
    .TX_SOF_N_O             (log_tlnk_sof_n),
    .TX_EOF_N_O             (log_tlnk_eof_n),
    .TX_RDY_N_I             (log_tlnk_dst_rdy_n),
    .TX_RESP_ONLY_I         (tx_resp_only),
    .TX_VLD_N_O             (log_tlnk_src_rdy_n),
    .TX_DSC_N_O             (log_tlnk_src_dsc_n),
    .TX_RESPONSE_O          (tx_response),
    .TX_DATA_O              (log_tlnk_d),
    .TX_REM_O               (log_tlnk_rem[0:1]),
    .TX_CRF_O               (log_tlnk_crf),

    // PHY Layer End (RX)
    .PHY_CLK                (phy_clk),
    .PHY_RST_N              (lnk_reset_n),
    .LNK_BUF_STAT           (lnk_buf_stat),
    .LNK_RSOF_N             (phy_rlnk_sof_n),
    .LNK_REOF_N             (phy_rlnk_eof_n),
    .LNK_RSRC_RDY_N         (phy_rlnk_src_rdy_n),
    .LNK_RDST_RDY_N         (phy_rlnk_dst_rdy_n),
    .LNK_RSRC_DSC_N         (phy_rlnk_src_dsc_n),
    .LNK_RDST_DSC_N         (phy_rlnk_dst_dsc_n),
    .LNK_RD                 (phy_rlnk_d),
    .LNK_RREM               (phy_rlnk_rem),
    .LNK_RCRF               (phy_rlnk_crf),

    // PHY Layer End (TX)
    .PCFG_MASTER_ENABLE     (master_enable),
    .LNK_TD                 (phy_tlnk_d),
    .LNK_TREM               (phy_tlnk_rem),
    .LNK_TCRF               (phy_tlnk_crf),
    .LNK_TEOF_N             (phy_tlnk_eof_n),
    .LNK_TSOF_N             (phy_tlnk_sof_n),
    .LNK_TSRC_RDY_N         (phy_tlnk_src_rdy_n),
    .LNK_TSRC_DSC_N         (phy_tlnk_src_dsc_n),
    .LNK_TDST_RDY_N         (phy_tlnk_dst_rdy_n),
    .LNK_TDST_DSC_N         (phy_tlnk_dst_dsc_n),
    .LNK_TLAST_ACK          (lnk_tlast_ack),
    .LNK_TNEXT_FM           (lnk_tnext_fm),
    .LNK_RX_BUF_STAT        (lnk_rx_buf_stat),

    // Management Interface
    .MGT_CLK                (mgt_clk),
    .MGT_RST_N              (lnk_reset_n),
    .MGT_RD_N               (mgt_rd_n),
    .MGT_SEL_N              (mgt_usr_sel_n),
    .MGT_WR_N               (mgt_wr_n),
    .MGT_A                  (mgt_a[12:23]),
    .MGT_DI                 (mgt_do),
    .MGT_DO                 (mgt_d_usr),
    .MGT_RDY_N              (mgt_usr_rdy_n)

    ); // Buffer

  /****************************************************************************/
  /* Register Manager                                                         */
  /****************************************************************************/
   assign  mresp_dest_id          = mresp_dest_id_int[8:15];
   assign  mresp_src_id           = mresp_src_id_int[8:15];

   assign  mreq_dest_id_int[0:7]  = 8'b0;
   assign  mreq_dest_id_int[8:15] = mreq_dest_id;
   assign  mreq_src_id_int[0:7]   = 8'b0;
   assign  mreq_src_id_int[8:15]  = mreq_src_id;

  reg_manager #(
    .TCQ (TCQ)
  ) reg_manager(
    .clk              (log_clk),
    .reset_n          (lnk_reset_n),

    .mgt_clk          (mgt_clk),
    .mgt_reset_n      (mgt_reset_n),
    .mgt_a            (mgt_a),
    .mgt_do           (mgt_do),
    .mgt_wr_n         (mgt_wr_n),
    .mgt_rd_n         (mgt_rd_n),
    .mgt_phy_sel_n    (mgt_phy_sel_n),
    .mgt_log_sel_n    (mgt_log_sel_n),
    .mgt_usr_sel_n    (mgt_usr_sel_n),
    .mgt_di_phy       (mgt_d_phy),
    .mgt_di_log       (mgt_d_log),
    .mgt_di_usr       (mgt_d_usr),
    .mgt_phy_rdy_n    (mgt_phy_rdy_n),
    .mgt_log_rdy_n    (mgt_log_rdy_n),
    .mgt_usr_rdy_n    (mgt_usr_rdy_n),

    .mreq_sof_n       (mreq_sof_n),
    .mreq_eof_n       (mreq_eof_n),
    .mreq_vld_n       (mreq_vld_n),
    .mreq_rdy_n       (mreq_rdy_n),
    .mreq_local       (mreq_local),
    .mreq_ftype       (mreq_ftype),
    .mreq_ttype       (mreq_ttype),
    .mreq_src_id      (mreq_src_id_int),
    .mreq_dest_id     (mreq_dest_id_int),
    .mreq_tid         (mreq_tid),
    .mreq_prio        (mreq_prio),
    .mreq_byte_count  (mreq_byte_count),
    .mreq_byte_en_n   (mreq_byte_en_n),
    .mreq_data        (mreq_data),
    .mreq_offset      (mreq_offset),

    .mresp_sof_n      (mresp_sof_n),
    .mresp_eof_n      (mresp_eof_n),
    .mresp_vld_n      (mresp_vld_n),
    .mresp_rdy_n      (mresp_rdy_n),
    .mresp_local      (mresp_local),
    .mresp_ftype      (mresp_ftype),
    .mresp_ttype      (mresp_ttype),
    .mresp_dest_id    (mresp_dest_id_int),
    .mresp_src_id     (mresp_src_id_int),
    .mresp_tid        (mresp_tid),
    .mresp_prio       (mresp_prio),
    .mresp_status     (mresp_status),
    .mresp_data       (mresp_data)
  ); // reg_manager

   // FIFO lock-up conter
   always @(posedge uclk or negedge sys_reset_n)
      if (!sys_reset_n)
         fifo_count <= #1 7'h00;
      else if (!log_tlnk_src_rdy_n && log_tlnk_dst_rdy_n &&
               phy_tlnk_src_rdy_n && !phy_tlnk_dst_rdy_n)
         fifo_count <= #1 fifo_count + 1;
      else
         fifo_count <= #1 7'h00;

endmodule
