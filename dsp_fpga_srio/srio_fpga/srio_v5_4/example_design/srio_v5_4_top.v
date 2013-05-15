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
// File name:     srio_v5_4_top.v
// Rev:           5.4
// Description:   This is the top level RapidIO End-Point.
// 
//                It instantiates the Physical Layer Module,
//                the Logical IO Layer Module, the Register
//                Manager, the Buffer Module and the User
//                Application.
// 
///////////////////////////////////////////////////////////////////////////////



`timescale 1 ps / 1 ps


module srio_v5_4_top # ( 
  parameter FAST_TRAIN_MODE = 1'b0,
  parameter SRIO_VIO        = 0,
  parameter TCQ             = 100
  )( /***************  User Signals  ************************************/
     /***************  User Signals  ************************************/


     // Debug LEDs
     output [0:4] led0,
 

     /***************  System Interface  ********************************/
     input         sys_clkp,
     input         sys_clkn,
     input         local_reset,
     input         link_reset,
input  test,

     /***************  Serial bit RIO Link Interface  *******************/
     output        srio_txp0,
     output        srio_txn0,
     input         srio_rxp0, 
     input         srio_rxn0
  );


  // Resets
  wire       local_reset_n;
  wire       link_reset_n;

  /**********  Target Request Interface  *****************************/
  //Target Req control signals
  wire          treq_sof_n;
  wire          treq_eof_n;
  wire          treq_vld_n;
  wire          treq_rdy_n;
  //Target Req data to the application interface
  wire  [0:1]   treq_prio;
  wire  [0:3]   treq_ftype;
  wire  [0:7]   treq_dest_id;
  wire  [0:7]   treq_src_id;
  wire  [0:7]   treq_tid;
  wire  [0:3]   treq_ttype;
  wire  [0:33]  treq_addr;
  wire  [0:7]   treq_byte_en_n;
  wire  [0:8]   treq_byte_count;
  wire  [0:63]  treq_data;
  // Doorbell/Messaging signals
  wire  [0:15]  treq_db_info;
  wire  [0:3]   treq_msg_len;
  wire  [0:3]   treq_msg_seg;
  wire  [0:5]   treq_mbox;
  wire  [0:1]   treq_letter;

  /**********  Target Response Interface  ****************************/
  //Target Response control signals
  wire          tresp_sof_n;
  wire          tresp_eof_n;
  wire          tresp_vld_n;
  wire          tresp_dsc_n;
  wire          tresp_rdy_n;
  //Target Response Signals from application interface
  wire   [0:1]  tresp_prio;
  wire   [0:3]  tresp_ftype;
  wire   [0:7]  tresp_dest_id;
  wire   [0:3]  tresp_ttype;
  wire   [0:3]  tresp_status;
  wire   [0:7]  tresp_tid;
  wire   [0:63] tresp_data;
  // Doorbell/Messaging signals
  wire   [0:3]   tresp_msg_seg;
  wire   [0:1]   tresp_mbox;
  wire   [0:1]   tresp_letter;

  /**********  Initiator Response Interface  *************************/
  //Initiator Response control signals
  wire          iresp_sof_n;
  wire          iresp_eof_n;
  wire          iresp_vld_n;
  wire          iresp_rdy_n;
  wire          iresp_local;
  //Initiator response data signals to application interface
  wire   [0:1]  iresp_prio;
  wire   [0:3]  iresp_ftype;
  wire   [0:3]  iresp_ttype;
  wire   [0:3]  iresp_status;
  wire   [0:7]  iresp_tid;
  wire   [0:7]  iresp_dest_id;
  wire   [0:7]  iresp_src_id;
  wire   [0:63] iresp_data;
  // Doorbell/Messaging signals
  wire   [0:3]  iresp_msg_seg;
  wire   [0:1]  iresp_mbox;
  wire   [0:1]  iresp_letter;

  /**********  Initiator Request Interface  **************************/
  //Initiator Request control signals
  wire          ireq_sof_n;
  wire          ireq_eof_n;
  wire          ireq_vld_n;
  wire          ireq_local;
  wire          ireq_dsc_n;
  wire          ireq_rdy_n;
  //Initiator Request data signals to application interface
  wire  [0:1]   ireq_prio;
  wire  [0:3]   ireq_ftype;
  wire  [0:7]   ireq_tid;
  wire  [0:7]   ireq_dest_id;
  wire  [0:7]   ireq_hop_count;
  wire  [0:3]   ireq_ttype;
  wire  [0:8]   ireq_byte_count;
  wire  [0:7]   ireq_byte_en_n;
  wire  [0:33]  ireq_addr;
  wire  [0:63]  ireq_data;
  wire          ireq_crf;
  // Doorbell/Messaging signals
  wire  [0:15]  ireq_db_info;
  wire  [0:3]   ireq_msg_len;
  wire  [0:3]   ireq_msg_seg;
  wire  [0:5]   ireq_mbox;
  wire  [0:1]   ireq_letter;

  // Initialization
  wire  [0:15]  deviceid;
  wire          port_initialized;
  wire          mode_sel;
  wire          lnk_porterr_n;

  // Core Configuration Bus
  wire [0:511] srio_cfg;
  wire [0:255] log_io_cfg;
  wire [0:63]  buffer_cfg;
  wire [0:23]  resp_timeout;
  wire         lnk_reset_n;
  wire         lnk_rrdy_n;
  wire         lnk_trdy_n;

  // Clocks
  wire         REFCLK;
  wire         UCLK;
  wire         UCLK2;
  wire         LNK_CLK;
  wire         LOG_CLK;
  wire         PHY_CLK;
  wire         DCM_LOCK;
  wire         REFCLKOUT;
  wire         PLL_LOCKED;

  wire [0:7]    h_error;  // Currently unsupported
  wire [0:7]    tc_error; // Currently unsupported
  wire [35:0]   control0;
  wire [35:0]   control1;
  wire [35:0]   control2;
  wire          force_reinit;
  /*******************************************************************/
  /***************  End Wire Declaration  ****************************/
  /*******************************************************************/



  /*******************************************************************/
  /***************  Begin Design Instance  ***************************/
  /*******************************************************************/

  generate if (SRIO_VIO == 1) begin : srio_icon_gen
    srio_icon i_srio_icon
       (
         .control0(control0),
         .control1(control1),
         .control2(control2)
       );
  
  end // srio_icon_gen
  endgenerate // srio_icon_gen
  /*******************************************************************/
  // User Design Instances
  /*******************************************************************/
  // Place User Design Instance here

  user_top #(
    .TCQ      (TCQ),
    .SRIO_VIO (SRIO_VIO)
  ) user_top(
    .lnk_clk           (LOG_CLK),
    .lnk_reset_n       (lnk_reset_n),
    .h_error           (h_error),
    .tc_error          (tc_error),
    .control0          (control0),
    .control_tc        (36'h0),
    .force_reinit      (force_reinit),
    .ireq_sof_n        (ireq_sof_n),
    .ireq_eof_n        (ireq_eof_n),
    .ireq_vld_n        (ireq_vld_n),
    .ireq_dsc_n        (ireq_dsc_n),
    .ireq_rdy_n        (ireq_rdy_n),
    .ireq_data         (ireq_data),
    .ireq_prio         (ireq_prio),
    .ireq_crf          (ireq_crf),
    .ireq_ftype        (ireq_ftype),
    .ireq_ttype        (ireq_ttype),
    .ireq_tid          (ireq_tid),
    .ireq_dest_id      (ireq_dest_id),
    .ireq_addr         (ireq_addr),
    .ireq_hopcount     (ireq_hop_count),
    .ireq_byte_count   (ireq_byte_count),
    .ireq_byte_en_n    (ireq_byte_en_n),
    .ireq_local        (ireq_local),
    .ireq_db_info      (ireq_db_info),
    .ireq_msg_len      (ireq_msg_len),
    .ireq_msg_seg      (ireq_msg_seg),
    .ireq_mbox         (ireq_mbox),
    .ireq_letter       (ireq_letter),
    .iresp_sof_n       (iresp_sof_n),
    .iresp_eof_n       (iresp_eof_n),
    .iresp_vld_n       (iresp_vld_n),
    .iresp_rdy_n       (iresp_rdy_n),
    .iresp_data        (iresp_data),
    .iresp_ftype       (iresp_ftype),
    .iresp_ttype       (iresp_ttype),
    .iresp_dest_id     (iresp_dest_id),
    .iresp_src_id      (iresp_src_id),
    .iresp_status      (iresp_status),
    .iresp_tid         (iresp_tid),
    .iresp_msg_seg     (iresp_msg_seg),
    .iresp_mbox        (iresp_mbox),
    .iresp_letter      (iresp_letter),
    .tresp_prio_o      (tresp_prio),
    .tresp_ftype_o     (tresp_ftype),
    .tresp_dest_id_o   (tresp_dest_id),
    .tresp_ttype_o     (tresp_ttype),
    .tresp_status_o    (tresp_status),
    .tresp_tid_o       (tresp_tid),
    .tresp_data_o      (tresp_data),
    .tresp_sof_n_o     (tresp_sof_n),
    .tresp_eof_n_o     (tresp_eof_n),
    .tresp_vld_n_o     (tresp_vld_n),
    .tresp_dsc_n_o     (tresp_dsc_n),
    .tresp_rdy_n_i     (tresp_rdy_n),
    // Doorbell/Messaging signals
    .tresp_msg_seg      (tresp_msg_seg),
    .tresp_mbox         (tresp_mbox),
    .tresp_letter       (tresp_letter),
    // Doorbell/Messaging signals
    .treq_db_info      (treq_db_info),
    .treq_msg_len      (treq_msg_len),
    .treq_msg_seg      (treq_msg_seg),
    .treq_mbox         (treq_mbox),
    .treq_letter       (treq_letter),
    .treq_prio_i       (treq_prio),
    .treq_ftype_i      (treq_ftype),
    .treq_dest_id_i    (treq_dest_id),
    .treq_src_id_i     (treq_src_id),
    .treq_tid_i        (treq_tid),
    .treq_ttype_i      (treq_ttype),
    .treq_addr_i       (treq_addr),
    .treq_byte_en_n_i  (treq_byte_en_n),
    .treq_byte_count_i (treq_byte_count),
    .treq_data_i       (treq_data),
    .treq_sof_n_i      (treq_sof_n),
    .treq_eof_n_i      (treq_eof_n),
    .treq_vld_n_i      (treq_vld_n),
    .treq_rdy_n_o      (treq_rdy_n)
  );

  /*******************************************************************/
  // RIO PHY
  /*******************************************************************/
    assign led0[0] = PLL_LOCKED;
    assign led0[1] = lnk_porterr_n;
    assign led0[2] = port_initialized;
    assign led0[3] = ~lnk_rrdy_n;
    assign led0[4] = ~lnk_trdy_n;



    // Incoming resets are already active-low
    assign local_reset_n = local_reset;
    assign link_reset_n  = link_reset;


   // Clocking for RIO SERIAL Phy
   srio_v5_4_clk #(
      .TCQ (TCQ)
     ) phy_1x_ser_clk (
      .SYS_CLKP          (sys_clkp),
      .SYS_CLKN          (sys_clkn),
      .REFCLKIN          (REFCLKOUT),
      .RST_IN            (~local_reset_n),
      .REFCLK            (REFCLK),
      .UCLK              (UCLK),
      .UCLK2             (UCLK2),
      .UCLK_DV4          (LNK_CLK),
		.test					 (test),
      .LOCKED_OUT        (DCM_LOCK)
      );

  // Assign both LOG_CLK and PHY_CLK domains to operate at the slower
  // LNK_CLK rate.  Since the LOG_CLK and PHY_CLK domains are independent,
  // the LOG_CLK domain can be changed to operate at the faster UCLK
  // rate or any other rate.
  assign LOG_CLK = LNK_CLK;
  assign PHY_CLK = LNK_CLK;

  // Reset Circuit to synchronize resets
  rio_reset #(
    .TCQ (TCQ)
  ) rio_reset (
    .lnk_clk          (PHY_CLK),
    .link_reset_n     (link_reset_n),
    .port_initialized (port_initialized),
    .sys_reset_n      (sys_reset_n),
    .lnk_linkreset_n  (lnk_linkreset_n)
    );


  /*******************************************************************/
  // RapidIO Design Environment Wrapper
  /*******************************************************************/

  rio_wrapper #(
    .TCQ (TCQ),
    .SRIO_VIO (SRIO_VIO)
  )rio_de_wrapper (
   /**********  Clock and Reset Signals  **************************************/
   .refclk            (REFCLK),
   .uclk              (UCLK),
   .uclk2             (UCLK2),
   .log_clk           (LOG_CLK),
   .phy_clk           (PHY_CLK),
   .dcm_lock          (DCM_LOCK),
   .refclkout         (REFCLKOUT),
   .pll_locked        (PLL_LOCKED),
   .sys_reset_n       (sys_reset_n),
   .lnk_linkreset_n   (lnk_linkreset_n),
   .lnk_reset_n       (lnk_reset_n),

   /**********  Serial Link Interface  ****************************************/
   .srio_rxn0         (srio_rxn0),
   .srio_rxp0         (srio_rxp0),
   .srio_txn0         (srio_txn0),
   .srio_txp0         (srio_txp0),

   /**********  Target Request Interface  *************************************/
   //Target Req control signals
   .treq_sof_n        (treq_sof_n),
   .treq_eof_n        (treq_eof_n),
   .treq_vld_n        (treq_vld_n),
   .treq_rdy_n        (treq_rdy_n),
   //Target Req data to the application interface
   .treq_prio         (treq_prio),
   .treq_crf          (),
   .treq_ftype        (treq_ftype),
   .treq_dest_id      (treq_dest_id),
   .treq_src_id       (treq_src_id),
   .treq_tid          (treq_tid),
   .treq_ttype        (treq_ttype),
   .treq_addr         (treq_addr),
   .treq_byte_en_n    (treq_byte_en_n),
   .treq_byte_count   (treq_byte_count),
   .treq_data         (treq_data),
   // Doorbell/Messaging signals
   .treq_db_info      (treq_db_info),
   .treq_msg_len      (treq_msg_len),
   .treq_msg_seg      (treq_msg_seg),
   .treq_mbox         (treq_mbox),
   .treq_letter       (treq_letter),

   /**********  Target Response Interface  ************************************/
   //Target Response control signals
   .tresp_sof_n       (tresp_sof_n),
   .tresp_eof_n       (tresp_eof_n),
   .tresp_vld_n       (tresp_vld_n),
   .tresp_dsc_n       (tresp_dsc_n),
   .tresp_rdy_n       (tresp_rdy_n),
   //Target Response Signals from application interface
   .tresp_prio        (tresp_prio),
   .tresp_crf         (1'b0),
   .tresp_ftype       (tresp_ftype),
   .tresp_dest_id     (tresp_dest_id),
   .tresp_ttype       (tresp_ttype),
   .tresp_status      (tresp_status),
   .tresp_tid         (tresp_tid),
    // Set to one to force all undefined Responses to be dataless
   .tresp_no_data     (1'b1),
   .tresp_data        (tresp_data),
   // Doorbell/Messaging signals
   .tresp_msg_seg     (tresp_msg_seg),
   .tresp_mbox        (tresp_mbox),
   .tresp_letter      (tresp_letter),

   /**********  Initiator Response Interface  *********************************/
   //Initiator Response control signals
   .iresp_sof_n       (iresp_sof_n),
   .iresp_eof_n       (iresp_eof_n),
   .iresp_vld_n       (iresp_vld_n),
   .iresp_rdy_n       (iresp_rdy_n),
   .iresp_local       (iresp_local),
   //Initiator response data signals to application interface
   .iresp_prio        (iresp_prio),
   .iresp_crf         (),
   .iresp_src_id      (iresp_src_id),
   .iresp_ftype       (iresp_ftype),
   .iresp_ttype       (iresp_ttype),
   .iresp_status      (iresp_status),
   .iresp_tid         (iresp_tid),
   .iresp_dest_id     (iresp_dest_id),
   .iresp_data        (iresp_data),
   // Doorbell/Messaging signals
   .iresp_msg_seg     (iresp_msg_seg),
   .iresp_mbox        (iresp_mbox),
   .iresp_letter      (iresp_letter),

   /**********  Initiator Request Interface  **********************************/
   //Initiator Request control signals
   .ireq_sof_n        (ireq_sof_n),
   .ireq_eof_n        (ireq_eof_n),
   .ireq_vld_n        (ireq_vld_n),
   .ireq_local        (ireq_local),
   .ireq_dsc_n        (ireq_dsc_n),
   .ireq_rdy_n        (ireq_rdy_n),
   //Initiator Request data signals to application interface
   .ireq_prio         (ireq_prio),
   .ireq_crf          (ireq_crf),
   .ireq_ftype        (ireq_ftype),
   .ireq_tid          (ireq_tid),
   .ireq_dest_id      (ireq_dest_id),
   .ireq_hop_count    (ireq_hop_count),
   .ireq_ttype        (ireq_ttype),
   .ireq_byte_count   (ireq_byte_count),
   .ireq_byte_en_n    (ireq_byte_en_n),
   .ireq_addr         (ireq_addr),
   .ireq_data         (ireq_data),
   // Doorbell/Messaging signals
   .ireq_db_info_i    (ireq_db_info),
   .ireq_msg_len_i    (ireq_msg_len),
   .ireq_msg_seg_i    (ireq_msg_seg),
   .ireq_mbox_i       (ireq_mbox),
   .ireq_letter_i     (ireq_letter),

   /**********  SRIO Interface Signals  ***************************************/
   .lnk_mcast_req_n   (1'b1),
   .force_reinit      (force_reinit),
   .fast_train        (FAST_TRAIN_MODE),
   .lnk_mcast_ack_n   (),
   .lnk_porterr_n     (lnk_porterr_n),
   .lnk_pna_n         (),
   .resp_time_out     (resp_timeout),
   .lnk_mce_dec_n     (),

   .h_error         (h_error),
   .tc_error        (tc_error),
   /*********  ChipScope signals  *********************************************/
   .control1        (control1),
   .control2        (control2),
   /**********  Configuration and Status Signals  *****************************/
   .srio_cfg          (srio_cfg),
   .log_io_cfg        (log_io_cfg),
   .buffer_cfg        (buffer_cfg),
   .deviceid          (deviceid),
   .port_initialized  (port_initialized),
   .mode_sel          (mode_sel),
   .lnk_rrdy_n        (lnk_rrdy_n),
   .lnk_trdy_n        (lnk_trdy_n)
   );

endmodule
