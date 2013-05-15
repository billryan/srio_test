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
// File name:    initiator_user.v
// Rev:          5.4
// Description:  The Initiator User Design is an example design that interfaces
//               to the Initiator Request and Initiator Response ports of the
//               Logical Layer core. It is designed to behave as a Master and
//               generate Initiator Request (IREQ) packets and verify
//               corresponding Initiator Response (IRESP) packets. The Initiator
//               User Design is broken down into the following six blocks:
//               - Tickler
//               - Initiator Request Generator
//               - Initiator Response Handler
//               - Initiator BRAM
//               - Transaction ID BRAM
//               - History BRAM
// 
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module initiator_user # (
  parameter TCQ      = 100,
  parameter SRIO_VIO = 0
)(

  // System
  input                 lnk_clk,          // Link clock
  input                 lnk_reset_n,      // Active low reset

  // Packet Generation
  output       [0:7]    h_error,
  input        [35:0]   control0,
  output                force_reinit,

  // Logical Layer - IREQ Interface
  output                ireq_sof_n,       // Start of frame
  output                ireq_eof_n,       // End of frame
  output                ireq_vld_n,       // Data valid
  output                ireq_dsc_n,       // Discontinue indication
  input                 ireq_rdy_n,       // Ready
  output      [0:63]    ireq_data,        // Data
  output      [0:1]     ireq_prio,        // Priority
  output                ireq_crf,         // Critical Request Flow
  output      [0:3]     ireq_ftype,       // Format Type
  output      [0:3]     ireq_ttype,       // Transaction Type
  output      [0:7]     ireq_tid,         // Transaction ID
  output      [0:7]     ireq_dest_id,     // Destination ID
  output      [0:33]    ireq_addr,        // Address
  output      [0:7]     ireq_hopcount,    // Hopcount
  output      [0:8]     ireq_byte_count,  // Packet byte count
  output      [0:7]     ireq_byte_en_n,   // Packet byte enable
  output                ireq_local,       // Local configuration
  output      [0:15]    ireq_db_info,     // Doorbell Info
  output      [0:3]     ireq_msg_len,     // Message length
  output      [0:3]     ireq_msg_seg,     // Message segment
  output      [0:5]     ireq_mbox,        // Mailbox
  output      [0:1]     ireq_letter,      // Letter

  // Logical Layer - IRESP Interface
  input                 iresp_sof_n,
  input                 iresp_eof_n,
  input                 iresp_vld_n,
  output                iresp_rdy_n,
  input       [0:63]    iresp_data,
  input       [0:3]     iresp_ftype,
  input       [0:3]     iresp_ttype,
  input       [0:7]     iresp_dest_id,
  input       [0:7]     iresp_src_id,
  input       [0:3]     iresp_status,
  input       [0:7]     iresp_tid,
  input       [0:3]     iresp_msg_seg,
  input       [0:1]     iresp_mbox,
  input       [0:1]     iresp_letter,
  output      [0:1]     tresp_stalls 

 
  );

  // Internal Declarations
  wire          igen_vld;
  wire          igen_rdy;
  wire  [0:63]  igen_bypass_data;
  wire          igen_bypass_en;
  wire          igen_bypass_vld;
  wire          igen_bypass_rdy;
  wire  [0:8]   igen_size;
  wire  [0:33]  igen_addr;
  wire  [0:3]   igen_ftype;
  wire  [0:3]   igen_ttype;
  wire  [0:1]   igen_prio;
  wire          igen_crf;
  wire  [0:7]   igen_dest_id;
  wire  [0:7]   igen_hopcount;
  wire          igen_local;
  wire  [0:15]  igen_db_info;
  wire  [0:3]   igen_msglen;
  wire  [0:1]   igen_letter;
  wire  [0:1]   igen_mbox;
  wire  [0:3]   igen_msgseg;
  wire  [0:3]   g_error;
  wire  [0:7]   error_enable;
  wire  [0:3]   igen_error;
  wire          rram_rdy;
  wire  [0:8]   g_rram_addra;
  wire  [0:20]  rram_doa;
  wire  [0:20]  g_rram_dia;
  wire          g_rram_wea;
  wire  [0:8]   h_rram_addrb;
  wire          h_rram_web;
  wire  [0:20]  rram_dob;
  wire  [0:63]  iram_doa;
  wire  [0:9]   g_iram_addra;
  wire  [0:9]   h_iram_addrb;
  wire  [0:63]  iram_dob;
  wire  [0:8]   g_hist_addra;
  wire          g_hist_wea;
  wire  [0:35]  g_hist_dia;
  wire  [0:8]   h_hist_addrb;
  wire  [0:35]  h_hist_dib;
  wire          h_hist_web;


  wire  [0:127] vio_display;
  wire  [0:95]  vio_iresp_display;
  wire  [0:1]   iresp_stalls;
  wire  [0:1]   igen_stalls;

  // Tickler
  tickler #(
    .TCQ      (TCQ),
    .SRIO_VIO (SRIO_VIO)
  ) tickler (
    .lnk_clk            (lnk_clk),
    .lnk_reset_n        (lnk_reset_n),
    .tickler_error      (tickler_error),
    .control0           (control0),
    .vio_display        (vio_display),
    .force_reinit       (force_reinit),
    .igen_vld           (igen_vld),
    .igen_rdy           (igen_rdy),
    .igen_stalls        (igen_stalls),
    .iresp_stalls       (iresp_stalls),
    .tresp_stalls       (tresp_stalls),
    .igen_bypass_data   (igen_bypass_data),
    .igen_bypass_en     (igen_bypass_en),
    .igen_bypass_vld    (igen_bypass_vld),
    .igen_bypass_rdy    (igen_bypass_rdy),
    .igen_size          (igen_size),
    .igen_addr          (igen_addr),
    .igen_ftype         (igen_ftype),
    .igen_ttype         (igen_ttype),
    .igen_prio          (igen_prio),
    .igen_crf           (igen_crf),
    .igen_dest_id       (igen_dest_id),
    .igen_hopcount      (igen_hopcount),
    .igen_local         (igen_local),
    .igen_db_info       (igen_db_info),
    .igen_msglen        (igen_msglen),
    .igen_letter        (igen_letter),
    .igen_mbox          (igen_mbox),
    .igen_msgseg        (igen_msgseg),
    .g_error            (g_error),
    .error_enable       (error_enable),
    .igen_error         (igen_error)
    );

  iresp_handler #(
    .TCQ      (TCQ)
  ) iresp_handler (
    .lnk_clk            (lnk_clk),
    .lnk_reset_n        (lnk_reset_n),
    .g_error            (g_error[0]),
    .error_enable       (error_enable),
    .h_error            (h_error),
    .vio_iresp_display  (vio_iresp_display),
    .iresp_sof_n        (iresp_sof_n),
    .iresp_eof_n        (iresp_eof_n),
    .iresp_vld_n        (iresp_vld_n),
    .iresp_rdy_n        (iresp_rdy_n),
    .iresp_data         (iresp_data),
    .iresp_ftype        (iresp_ftype),
    .iresp_ttype        (iresp_ttype),
    .iresp_dest_id      (iresp_dest_id),
    .iresp_src_id       (iresp_src_id),
    .iresp_status       (iresp_status),
    .iresp_tid          (iresp_tid),
    .iresp_msg_seg      (iresp_msg_seg),
    .iresp_mbox         (iresp_mbox),
    .iresp_letter       (iresp_letter),
    .iresp_stalls       (iresp_stalls),
    .rram_rdy           (rram_rdy),
    .rram_dob           (rram_dob),
    .h_rram_addrb       (h_rram_addrb),
    .h_rram_web         (h_rram_web),
    .iram_dob           (iram_dob),
    .h_iram_addrb       (h_iram_addrb),
    .h_hist_addrb       (h_hist_addrb),
    .h_hist_web         (h_hist_web),
    .h_hist_dib         (h_hist_dib)
    );

  // Initiator Block RAM
  initiator_bram #(
    .TCQ (TCQ)
  ) initiator_bram (
    .lnk_clk            (lnk_clk),
    .lnk_reset_n        (lnk_reset_n),
    .g_iram_addra       (g_iram_addra),
    .iram_doa           (iram_doa),
    .h_iram_addrb       (h_iram_addrb),
    .iram_dob           (iram_dob)
    );

  // TID Block RAM
  tid_bram #(
    .TCQ (TCQ)
  ) tid_bram (
    .lnk_clk            (lnk_clk),
    .lnk_reset_n        (lnk_reset_n),
    .rram_rdy           (rram_rdy),
    .rram_pkt_cnt       (),
    .g_rram_addra       (g_rram_addra),
    .g_rram_dia         (g_rram_dia),
    .g_rram_wea         (g_rram_wea),
    .rram_doa           (rram_doa),
    .h_rram_addrb       (h_rram_addrb),
    .h_rram_web         (h_rram_web),
    .rram_dob           (rram_dob)
    );

  // History Block RAM
  history_bram #(
    .TCQ (TCQ)
  ) history_bram (
    .lnk_clk            (lnk_clk),
    .lnk_reset_n        (lnk_reset_n),
    .g_hist_addra       (g_hist_addra),
    .g_hist_dia         (g_hist_dia),
    .g_hist_wea         (g_hist_wea),
    .h_hist_addrb       (h_hist_addrb),
    .h_hist_dib         (h_hist_dib),
    .h_hist_web         (h_hist_web),
    .hist_rd_en         (1'b0),
    .hist_rd_addr       (9'b0),
    .hist_dout          ( )
    );

  assign vio_display[0:95]    = vio_iresp_display;
  assign vio_display[96]      = ireq_sof_n;
  assign vio_display[97]      = ireq_eof_n;
  assign vio_display[98]      = ireq_vld_n;
  assign vio_display[99]      = ireq_rdy_n;
  assign vio_display[100:107] = ireq_tid;
  assign vio_display[108:111] = ireq_ftype;
  assign vio_display[112:115] = ireq_ttype;
  assign vio_display[116:123] = ireq_dest_id[0:7];
  assign vio_display[124:125] = ireq_hopcount[6:7];
  assign vio_display[126]     = ireq_local;
  assign vio_display[127]     = tickler_error;


  // Initiator Request Generator
  ireq_generator #(
    .TCQ (TCQ)
  ) ireq_generator (
    .lnk_clk            (lnk_clk),
    .lnk_reset_n        (lnk_reset_n),
    .ireq_sof_n         (ireq_sof_n),
    .ireq_eof_n         (ireq_eof_n),
    .ireq_vld_n         (ireq_vld_n),
    .ireq_dsc_n         (ireq_dsc_n),
    .ireq_rdy_n         (ireq_rdy_n),
    .ireq_data          (ireq_data),
    .ireq_prio          (ireq_prio),
    .ireq_crf           (ireq_crf),
    .ireq_ftype         (ireq_ftype),
    .ireq_ttype         (ireq_ttype),
    .ireq_tid           (ireq_tid),
    .ireq_dest_id       (ireq_dest_id),
    .ireq_addr          (ireq_addr),
    .ireq_hopcount      (ireq_hopcount),
    .ireq_byte_count    (ireq_byte_count),
    .ireq_byte_en_n     (ireq_byte_en_n),
    .ireq_local         (ireq_local),
    .ireq_db_info       (ireq_db_info),
    .ireq_msg_len       (ireq_msg_len),
    .ireq_msg_seg       (ireq_msg_seg),
    .ireq_mbox          (ireq_mbox),
    .ireq_letter        (ireq_letter),
    .rram_rdy           (rram_rdy),
    .g_rram_addra       (g_rram_addra),
    .rram_doa           (rram_doa),
    .g_rram_dia         (g_rram_dia),
    .g_rram_wea         (g_rram_wea),
    .iram_doa           (iram_doa),
    .g_iram_addra       (g_iram_addra),
    .g_hist_addra       (g_hist_addra),
    .g_hist_wea         (g_hist_wea),
    .g_hist_dia         (g_hist_dia),
    .igen_vld           (igen_vld),
    .igen_rdy           (igen_rdy),
    .igen_stalls        (igen_stalls),
    .igen_bypass_data   (igen_bypass_data),
    .igen_bypass_en     (igen_bypass_en),
    .igen_bypass_vld    (igen_bypass_vld),
    .igen_bypass_rdy    (igen_bypass_rdy),
    .igen_size          (igen_size),
    .igen_addr          (igen_addr),
    .igen_ftype         (igen_ftype),
    .igen_ttype         (igen_ttype),
    .igen_prio          (igen_prio),
    .igen_crf           (igen_crf),
    .igen_dest_id       (igen_dest_id),
    .igen_hopcount      (igen_hopcount),
    .igen_local         (igen_local),
    .igen_db_info       (igen_db_info),
    .igen_msglen        (igen_msglen),
    .igen_letter        (igen_letter),
    .igen_mbox          (igen_mbox),
    .igen_msgseg        (igen_msgseg),
    .g_error            (g_error),
    .h_error            (h_error[0]),
    .error_enable       (error_enable),
    .igen_error         (igen_error)
    );

endmodule
