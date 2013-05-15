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
// Copyright 2005 - 2009 Xilinx, Inc.
// All rights reserved.
//
// This disclaimer and copyright notice must be retained as part
// of this file at all times.
//
///////////////////////////////////////////////////////////////////////////////
// 
// File name:    iresp_handler.v
// Rev:          5.4
// Description:  This module is responsible for verifying Initiator Responses.
// 
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps


module iresp_handler #( parameter TCQ = 100 )

                (// Global
                 input             lnk_clk,
                 input             lnk_reset_n,
                 input             g_error,
                 input      [0:7]  error_enable,
                 output reg [0:7]  h_error,
                 output     [0:95] vio_iresp_display,

                 // IResp I/F
                 input             iresp_sof_n,
                 input             iresp_eof_n,
                 input             iresp_vld_n,
                 output            iresp_rdy_n,
                 input      [0:1]  iresp_stalls,

                 input      [0:63] iresp_data,
                 input      [0:3]  iresp_ftype,
                 input      [0:3]  iresp_ttype,
                 input      [0:7]  iresp_dest_id,
                 input      [0:7]  iresp_src_id,
                 input      [0:3]  iresp_status,
                 input      [0:7]  iresp_tid,
                 input      [0:3]  iresp_msg_seg,
                 input      [0:1]  iresp_mbox,
                 input      [0:1]  iresp_letter,

                 // TID BRAM
                 input             rram_rdy,
                 input      [0:20] rram_dob,
                 output     [0:8]  h_rram_addrb,
                 output            h_rram_web,

                 // Initiator BRAM
                 input      [0:63] iram_dob,
                 output reg [0:9]  h_iram_addrb,

                 // History BRAM
                 output reg [0:8]  h_hist_addrb,
                 output reg        h_hist_web,
                 output reg [0:35] h_hist_dib
                );


  // Internal Declarations

  reg           q_sof, qq_sof;
  reg           q_eof, qq_eof, qqq_eof;

  reg           q_vld, q_beat_vld, q_bram_in_vld, q_bram_out_vld, q_test_vld;
  reg    [0:63] q_data, qq_data, q_bram_in_data, q_bram_out_data, q_test_data;

  reg    [0:3]  q_ftype;
  reg    [0:3]  q_ttype;
  reg    [0:7]  q_dest_id;
  reg    [0:7]  q_src_id;
  reg    [0:3]  q_status;
  reg    [0:7]  q_tid;
  reg    [0:3]  q_msg_seg;
  reg    [0:1]  q_mbox;
  reg    [0:1]  q_letter;

  reg    [0:63] q_iram_dob;

  reg           q_bram_in_ignore, q_bram_out_ignore, q_test_ignore;

  reg    [0:5]  q_remaining_words;

  reg    [0:63] first_data;
  reg    [0:7]  current_tid, last_tid_plus1, last_tid_plus2;
  reg           tid_order_error, tid_skip_error;

  wire    [0:7] d_h_error;

  wire          new_packet;
  wire    [0:5] remaining_words;
  wire          predictive_eof;

  reg   [0:1]   stall_cnt;
  wire          stall;

  /*********************************************************************
  ** IRESP Interface
  *********************************************************************/
  always@(posedge lnk_clk or negedge lnk_reset_n) begin
    if (~lnk_reset_n)
      stall_cnt <= #TCQ 2'b0;
    else if (stall_cnt == 0 )
      stall_cnt <= #TCQ iresp_stalls;
    else if (~iresp_vld_n)
      stall_cnt <= #TCQ stall_cnt - 1'b1;
  end

  assign stall           = |stall_cnt;
  assign iresp_rdy_n     = (h_error[0] & ~rram_rdy) || stall;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        q_sof <= #TCQ 1'b0;
        q_eof <= #TCQ 1'b0;
     end
     else begin
        q_sof <= #TCQ ~iresp_sof_n & ~iresp_vld_n & ~iresp_rdy_n;
        q_eof <= #TCQ ~iresp_eof_n & ~iresp_vld_n & ~iresp_rdy_n;
     end

  assign new_packet = ~iresp_sof_n & ~iresp_vld_n & ~iresp_rdy_n;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        q_ftype   <= #TCQ 4'h0;
        q_ttype   <= #TCQ 4'h0;
        q_src_id  <= #TCQ 8'h00;
        q_status  <= #TCQ 4'h0;
        q_tid     <= #TCQ 8'h00;
        q_msg_seg <= #TCQ 4'h0;
        q_mbox    <= #TCQ 2'b00;
        q_letter  <= #TCQ 2'b00;
     end
     else if (new_packet) begin
        q_ftype   <= #TCQ iresp_ftype;
        q_ttype   <= #TCQ iresp_ttype;
        q_src_id  <= #TCQ iresp_src_id;
        q_status  <= #TCQ iresp_status;
        q_tid     <= #TCQ iresp_tid;
        q_msg_seg <= #TCQ iresp_msg_seg;
        q_mbox    <= #TCQ iresp_mbox;
        q_letter  <= #TCQ iresp_letter;
     end

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        q_vld  <= #TCQ 1'b0;
     end
     else if (!iresp_rdy_n) begin
        q_vld  <= #TCQ ~iresp_vld_n;
        q_data <= #TCQ iresp_data;
     end

  /*********************************************************************
  ** VIO
  *********************************************************************/

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        first_data   <= #TCQ 64'h0;
     end
     else if (new_packet) begin
        first_data   <= #TCQ iresp_data;
     end

  assign vio_iresp_display = { q_sof,
                               q_eof,
                               q_vld,
                               iresp_rdy_n,
                               first_data,
                               q_ftype,
                               q_ttype,
                               q_status,
                               q_tid,
                               q_msg_seg,
                               q_mbox,
                               q_letter
                             };

  /*********************************************************************
  ** TID BRAM I/F
  *********************************************************************/

   assign h_rram_web = q_sof;
   assign h_rram_addrb = ((q_ftype == 4'hd) & (q_ttype == 4'h1)) ?
                         {1'b1, q_letter, q_mbox, q_msg_seg} : {1'b0, q_tid};

  /*********************************************************************
  ** Initiator BRAM I/F
  *********************************************************************/

  always @(posedge lnk_clk)
     if (!iresp_rdy_n) begin
        h_iram_addrb <= #TCQ qq_sof ? rram_dob[2:11]   // offset
                                    : h_iram_addrb + 1'b1;
        q_iram_dob   <= #TCQ iram_dob;
     end

  /*********************************************************************
  ** PIPE
  *********************************************************************/

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        qq_sof         <= #TCQ 1'b0;
        qqq_eof        <= #TCQ 1'b0;
        qq_eof         <= #TCQ 1'b0;
        q_test_vld     <= #TCQ 1'b0;
        q_bram_out_vld <= #TCQ 1'b0;
        q_bram_in_vld  <= #TCQ 1'b0;
        q_beat_vld     <= #TCQ 1'b0;
     end
     else if (!iresp_rdy_n) begin
        qq_sof         <= #TCQ q_sof;
        qqq_eof        <= #TCQ qq_eof;
        qq_eof         <= #TCQ q_eof;
        q_test_vld     <= #TCQ q_bram_out_vld;
        q_bram_out_vld <= #TCQ q_bram_in_vld;
        q_bram_in_vld  <= #TCQ q_beat_vld;
        q_beat_vld     <= #TCQ (q_ftype == 4'hd) & (q_ttype == 4'h8) & q_vld;
     end

  always @(posedge lnk_clk)
     if (!iresp_rdy_n) begin
        q_test_data     <= #TCQ q_bram_out_data;
        q_bram_out_data <= #TCQ q_bram_in_data;
        q_bram_in_data  <= #TCQ qq_data;
        qq_data         <= #TCQ q_data;
     end

  always @(posedge lnk_clk)
     if (!iresp_rdy_n) begin
        q_test_ignore     <= #TCQ q_bram_out_ignore;
        q_bram_out_ignore <= #TCQ q_bram_in_ignore;
        q_bram_in_ignore  <= #TCQ rram_dob[1];
     end

  /*********************************************************************
  ** GLUE
  *********************************************************************/

  // Potential Timing issue
  assign predictive_eof = (q_remaining_words == 6'h01);

  assign remaining_words = qq_sof ? {rram_dob[12:16], |rram_dob[17:20]} // byte_cnt
                                  : q_remaining_words - {5'b0000, q_beat_vld};

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        q_remaining_words <= #TCQ 0;
     else if (!iresp_rdy_n)
        q_remaining_words <= #TCQ remaining_words;

  /*********************************************************************
  ** ERROR Generation
  *********************************************************************/

  assign d_h_error[0] = error_enable[0] & ( |(d_h_error[1:7] & error_enable[1:7]));
  assign d_h_error[1] = (q_iram_dob != q_test_data) & q_test_vld & ~q_test_ignore;
  assign d_h_error[2] = qq_sof & ~rram_dob[0];
  assign d_h_error[3] = predictive_eof & q_bram_in_vld & ~qqq_eof;
  assign d_h_error[4] = ~predictive_eof & q_bram_in_vld & qqq_eof;
  assign d_h_error[5] = q_sof & (q_status != 4'h0);
  assign d_h_error[6] = 1'b0;
  assign d_h_error[7] = g_error;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        h_error <= #TCQ 8'h00;
     else if (!iresp_rdy_n)
        h_error <= #TCQ d_h_error;

  /*********************************************************************
  ** TID Counters
  *********************************************************************/

   always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        current_tid     <= #TCQ 8'h00;
     else if (~iresp_sof_n & ~iresp_rdy_n & ~iresp_vld_n)
        current_tid     <= #TCQ iresp_tid;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        last_tid_plus1  <= #TCQ 8'h00;
        last_tid_plus2  <= #TCQ 8'h01;
     end
     else if (q_eof) begin
        last_tid_plus1  <= #TCQ current_tid + 1'b1;
        last_tid_plus2  <= #TCQ current_tid + 2'b10;
     end

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        tid_order_error <= #TCQ 1'b0;
        tid_skip_error <= #TCQ 1'b0;
     end
     else if (q_sof) begin
        tid_order_error <= #TCQ current_tid != last_tid_plus1;
        tid_skip_error <= #TCQ current_tid != last_tid_plus2;
     end

  /*********************************************************************
  ** PIPE
  *********************************************************************/

  always @(posedge lnk_clk or negedge lnk_reset_n)
    if (!lnk_reset_n) begin
        h_hist_web    <= #TCQ 1'b0;
        h_hist_dib    <= #TCQ 36'b0;
        h_hist_addrb  <= #TCQ 9'b0;
    end else begin
        h_hist_web    <= #TCQ q_sof;
        h_hist_addrb  <= #TCQ {1'b1,q_tid};
        h_hist_dib    <= #TCQ {1'b1, q_ftype, q_ttype, rram_dob[12:20], q_src_id};
    end

endmodule
