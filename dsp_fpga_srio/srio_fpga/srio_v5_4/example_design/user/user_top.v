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
// File name:    user_top.v
// Rev:          5.4
// Description:  This is the top-level user reference design. It
//               instantiates a target user design and an initiator
//               user design.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module user_top #(
  parameter TCQ      = 100,
  parameter SRIO_VIO = 0
)(

  // System
  input                 lnk_clk,          // Link clock
  input                 lnk_reset_n,      // Active low reset

  // Initiator User - Packet Generation
  input       [35:0]    control0,         // VIO hookup
  input       [35:0]    control_tc,       // VIO hookup
  output                force_reinit,     //reinit signal from VIO
  output       [0:7]    h_error,          // Initiator User error condition - Currently unsupported
  output       [0:7]    tc_error,         // Target checker error - Currently unsupported

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

  // Logical Layer - TRESP Interface
  output      [0:1]     tresp_prio_o,
  output      [0:3]     tresp_ftype_o,
  output      [0:7]     tresp_dest_id_o,
  // Doorbell/Messaging signals
  output      [0:3]     tresp_msg_seg,
  output      [0:1]     tresp_mbox,
  output      [0:1]     tresp_letter,
  output      [0:3]     tresp_ttype_o,
  output      [0:3]     tresp_status_o,
  output      [0:7]     tresp_tid_o,
  output      [0:63]    tresp_data_o,
  output                tresp_sof_n_o,
  output                tresp_eof_n_o,
  output                tresp_vld_n_o,
  output                tresp_dsc_n_o,
  input                 tresp_rdy_n_i,

  // Logical Layer - TREQ Interface
  input       [0:1]     treq_prio_i,
  input       [0:3]     treq_ftype_i,
  input       [0:7]     treq_dest_id_i,
  input       [0:7]     treq_src_id_i,
  // Doorbell/Messaging signals
  input       [0:15]    treq_db_info,
  input       [0:3]     treq_msg_len,
  input       [0:3]     treq_msg_seg,
  input       [0:5]     treq_mbox,
  input       [0:1]     treq_letter,
  input       [0:7]     treq_tid_i,
  input       [0:3]     treq_ttype_i,
  input       [0:33]    treq_addr_i,
  input       [0:7]     treq_byte_en_n_i,
  input       [0:8]     treq_byte_count_i,
  input       [0:63]    treq_data_i,
  input                 treq_sof_n_i,
  input                 treq_eof_n_i,
  input                 treq_vld_n_i,
  output                treq_rdy_n_o
  );

  wire [0:1] tresp_stalls;
  
  // Initiator User Design
  initiator_user #(
    .TCQ      (TCQ),
    .SRIO_VIO (SRIO_VIO)
  ) initiator_user (
    .lnk_clk          (lnk_clk),
    .lnk_reset_n      (lnk_reset_n),
    .h_error          (h_error),
    .control0         (control0),
    .force_reinit     (force_reinit),
    .ireq_sof_n       (ireq_sof_n),
    .ireq_eof_n       (ireq_eof_n),
    .ireq_vld_n       (ireq_vld_n),
    .ireq_dsc_n       (ireq_dsc_n),
    .ireq_rdy_n       (ireq_rdy_n),
    .ireq_data        (ireq_data),
    .ireq_prio        (ireq_prio),
    .ireq_crf         (ireq_crf),
    .ireq_ftype       (ireq_ftype),
    .ireq_ttype       (ireq_ttype),
    .ireq_tid         (ireq_tid),
    .ireq_dest_id     (ireq_dest_id),
    .ireq_addr        (ireq_addr),
    .ireq_hopcount    (ireq_hopcount),
    .ireq_byte_count  (ireq_byte_count),
    .ireq_byte_en_n   (ireq_byte_en_n),
    .ireq_local       (ireq_local),
    .ireq_db_info     (ireq_db_info),
    .ireq_msg_len     (ireq_msg_len),
    .ireq_msg_seg     (ireq_msg_seg),
    .ireq_mbox        (ireq_mbox),
    .ireq_letter      (ireq_letter),
    .iresp_sof_n      (iresp_sof_n),
    .iresp_eof_n      (iresp_eof_n),
    .iresp_vld_n      (iresp_vld_n),
    .iresp_rdy_n      (iresp_rdy_n),
    .iresp_data       (iresp_data),
    .iresp_ftype      (iresp_ftype),
    .iresp_ttype      (iresp_ttype),
    .iresp_dest_id    (iresp_dest_id),
    .iresp_src_id     (iresp_src_id),
    .iresp_status     (iresp_status),
    .iresp_tid        (iresp_tid),
    .tresp_stalls     (tresp_stalls),
    .iresp_msg_seg    (iresp_msg_seg),
    .iresp_mbox       (iresp_mbox),
    .iresp_letter     (iresp_letter)
    );


  // Target User Design
  target_user #(
    .TCQ (TCQ)
  ) target_user (
    .sys_clk            (lnk_clk),
    .lnk_reset_n        (lnk_reset_n),
    .tresp_prio_o       (tresp_prio_o),
    .tresp_ftype_o      (tresp_ftype_o),
    .tresp_dest_id_o    (tresp_dest_id_o),
    .tresp_ttype_o      (tresp_ttype_o),
    .tresp_status_o     (tresp_status_o),
    .tresp_tid_o        (tresp_tid_o),
    .tresp_data_o       (tresp_data_o),
    .tresp_sof_n_o      (tresp_sof_n_o),
    .tresp_eof_n_o      (tresp_eof_n_o),
    .tresp_vld_n_o      (tresp_vld_n_o),
    .tresp_dsc_n_o      (tresp_dsc_n_o),
    .tresp_rdy_n_i      (tresp_rdy_n_i),
    .tresp_stalls       (tresp_stalls),
    // Doorbell/Messaging signals
    .tresp_msg_seg      (tresp_msg_seg),
    .tresp_mbox         (tresp_mbox),
    .tresp_letter       (tresp_letter),
    .treq_db_info       (treq_db_info),
    .treq_msg_len       (treq_msg_len),
    .treq_msg_seg       (treq_msg_seg),
    .treq_mbox          (treq_mbox),
    .treq_letter        (treq_letter),
    .treq_prio_i        (treq_prio_i),
    .treq_ftype_i       (treq_ftype_i),
    .treq_dest_id_i     (treq_dest_id_i),
    .treq_src_id_i      (treq_src_id_i),
    .treq_tid_i         (treq_tid_i),
    .treq_ttype_i       (treq_ttype_i),
    .treq_addr_i        (treq_addr_i),
    .treq_byte_en_n_i   (treq_byte_en_n_i),
    .treq_byte_count_i  (treq_byte_count_i),
    .treq_data_i        (treq_data_i),
    .treq_sof_n_i       (treq_sof_n_i),
    .treq_eof_n_i       (treq_eof_n_i),
    .treq_vld_n_i       (treq_vld_n_i),
    .treq_rdy_n_o       (treq_rdy_n_o)
    );

  target_checker #(
    .Tcq      (TCQ)
  ) target_checker (
    .lnk_clk          (lnk_clk),
    .lnk_reset_n      (lnk_reset_n),
    .control_tc       (control_tc),
    .tc_error         (tc_error),
    .treq_sof_n       (treq_sof_n_i),
    .treq_eof_n       (treq_eof_n_i),
    .treq_vld_n       (treq_vld_n_i),
    .treq_rdy_n       (treq_rdy_n_o),
    .treq_ftype       (treq_ftype_i),
    .treq_prio        (treq_prio_i),
    .treq_tid         (treq_tid_i),
    .treq_byte_count  (treq_byte_count_i),
    .tresp_status     (tresp_status_o),
    .tresp_sof_n      (tresp_sof_n_o),
    .tresp_eof_n      (tresp_eof_n_o),
    .tresp_vld_n      (tresp_vld_n_o),
    .tresp_rdy_n      (tresp_rdy_n_i),
    .tresp_prio       (tresp_prio_o)
    );

endmodule
