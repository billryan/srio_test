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
// File name:    target_checker.v
// Rev:          5.4
// Description:  This module is responsible for verifying Target Requests
// 
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module target_checker #( parameter Tcq = 100 )

                (// Global
                 input             lnk_clk,
                 input             lnk_reset_n,
                 input     [35:0]  control_tc,
                 output reg [0:7]  tc_error,

                 // IReq I/F
                 input             treq_sof_n,
                 input             treq_eof_n,
                 input             treq_vld_n,
                 input             treq_rdy_n,

                 input      [0:3]  treq_ftype,
                 input      [0:1]  treq_prio,
                 input      [0:7]  treq_tid,
                 input      [0:8]  treq_byte_count,

                 // IResp I/F
                 input             tresp_sof_n,
                 input             tresp_eof_n,
                 input             tresp_vld_n,
                 input             tresp_rdy_n,

                 input      [0:3]  tresp_status,
                 input      [0:1]  tresp_prio

                );


  // Internal Declarations

  reg             q_treq_sof, q_tresp_sof;
  reg             q_treq_eof, q_tresp_eof;

  reg             q_treq_beat_vld, q_tresp_beat_vld;

  reg    [0:3]    q_treq_ftype;
  reg    [0:8]    q_treq_byte_count;

  reg     [0:5]   q_treq_remaining_words, q_tresp_remaining_words;

  reg     [0:7]   current_tid;
  reg     [0:7]   last_tid_plus1;
  reg             tid_order_error;

  wire            new_packet;

  wire    [0:7]   d_tc_error;

  wire            treq_small_packet, tresp_big_packet;
  wire    [0:5]   treq_remaining_words, tresp_remaining_words;
  wire            treq_predictive_eof, tresp_predictive_eof;

  wire    [255:0] tc_data;
  wire    [31:0]  tc_trig;
  /*********************************************************************
  ** TRESP Interface
  *********************************************************************/

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        q_treq_sof  <= #Tcq 1'b0;
        q_treq_eof  <= #Tcq 1'b0;
        q_tresp_sof <= #Tcq 1'b0;
        q_tresp_eof <= #Tcq 1'b0;
     end
     else begin
        q_treq_sof  <= #Tcq ~treq_sof_n & ~treq_vld_n & ~treq_rdy_n;
        q_treq_eof  <= #Tcq ~treq_eof_n & ~treq_vld_n & ~treq_rdy_n;
        q_tresp_sof <= #Tcq ~tresp_sof_n & ~tresp_vld_n & ~tresp_rdy_n;
        q_tresp_eof <= #Tcq ~tresp_eof_n & ~tresp_vld_n & ~tresp_rdy_n;
     end

  assign new_packet = ~treq_sof_n & ~treq_vld_n & ~treq_rdy_n;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        q_treq_ftype       <= #Tcq 4'h0;
        q_treq_byte_count  <= #Tcq 9'b000;
     end
     else if (new_packet) begin
        q_treq_ftype       <= #Tcq treq_ftype;
        q_treq_byte_count  <= #Tcq treq_byte_count;
     end

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        q_treq_beat_vld    <= #Tcq 1'b0;
     end
     else begin
        q_treq_beat_vld    <= #Tcq ~treq_rdy_n & ~treq_vld_n;
     end

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n) begin
        q_tresp_beat_vld   <= #Tcq 1'b0;
     end
     else begin
        q_tresp_beat_vld   <= #Tcq ~tresp_rdy_n & ~tresp_vld_n;
     end

  /*********************************************************************
  **  TREQ counter
  *********************************************************************/

  assign treq_small_packet    = (q_treq_ftype == 4'h2) | (q_treq_ftype == 4'ha);
  assign treq_predictive_eof  = treq_small_packet | (q_treq_remaining_words == 6'h01);

  assign treq_remaining_words = ~treq_sof_n ? {treq_byte_count[0:4], |treq_byte_count[5:8]}
                                      : q_treq_remaining_words - {5'b0000, q_treq_beat_vld};

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        q_treq_remaining_words <= #Tcq 0;
     else //if (!treq_rdy_n & !treq_vld_n)
        q_treq_remaining_words <= #Tcq treq_remaining_words;

  assign d_tc_error[1] = (q_treq_ftype != 4'h6) & treq_predictive_eof &
                         q_treq_beat_vld & ~q_treq_eof;
  assign d_tc_error[2] = (q_treq_ftype != 4'h6) & ~treq_predictive_eof &
                         q_treq_beat_vld & q_treq_eof;

  /*********************************************************************
  **  TRESP counter
  *********************************************************************/

  assign tresp_big_packet     = (q_treq_ftype == 4'h2);
  assign tresp_predictive_eof = ~tresp_big_packet | (q_tresp_remaining_words == 6'h01);

  assign tresp_remaining_words = ~tresp_sof_n ? {q_treq_byte_count[0:4], |q_treq_byte_count[5:8]}
                                      : q_tresp_remaining_words - {5'b0000, q_tresp_beat_vld};

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        q_tresp_remaining_words <= #Tcq 0;
     else //if (!tresp_rdy_n & !tresp_vld_n)
        q_tresp_remaining_words <= #Tcq tresp_remaining_words;

  assign d_tc_error[3] = tresp_predictive_eof & q_tresp_beat_vld & ~q_tresp_eof;
  assign d_tc_error[4] = ~tresp_predictive_eof & q_tresp_beat_vld & q_tresp_eof;

  /*********************************************************************
  ** TID Tracker for potential missing response issue
  *********************************************************************/

  // SWRITE transactions do not carry a TID (nor do messages)
  assign no_ackid = (q_treq_ftype == 4'h6) | (q_treq_ftype == 4'hb);

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        current_tid     <= #Tcq 8'h00;
     else if (~treq_sof_n & ~treq_rdy_n & ~treq_vld_n)
        current_tid     <= #Tcq treq_tid;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        last_tid_plus1  <= #Tcq 8'h00;
     else if (q_treq_eof)
        last_tid_plus1  <= #Tcq no_ackid ? last_tid_plus1 + 1'b1 :
                                           current_tid + 1'b1;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        tid_order_error <= #Tcq 1'b0;
     else if (q_treq_sof)
        tid_order_error <= #Tcq (current_tid != last_tid_plus1) & ~no_ackid;

  assign d_tc_error[5] = tid_order_error;


  /*********************************************************************
  ** General Error
  *********************************************************************/

  assign d_tc_error[0] = |tc_error[1:7];
  assign d_tc_error[6] = 1'b0;
  assign d_tc_error[7] = 1'b0;

  always @(posedge lnk_clk or negedge lnk_reset_n)
     if (!lnk_reset_n)
        tc_error <= #Tcq 8'h00;
     else
        tc_error <= #Tcq d_tc_error;

  /*********************************************************************
  ** Chip Scope
  *********************************************************************/
    //phy_ila i_tc_ila
    //(
      //.control(control_tc),
      //.clk(lnk_clk),
      //.data(tc_data),
      //.trig0(tc_trig)
    //);

    assign tc_data[255:0] =  {treq_sof_n,
                               treq_eof_n,
                               treq_vld_n,
                               treq_rdy_n,
                               treq_ftype,
                               treq_tid,
                               treq_byte_count,
                               treq_small_packet,
                               treq_remaining_words,
                               q_treq_remaining_words,
                               treq_predictive_eof,
                               q_treq_beat_vld,
                               tresp_sof_n,
                               tresp_eof_n,
                               tresp_vld_n,
                               tresp_rdy_n,
                               tresp_big_packet,
                               tresp_remaining_words,
                               q_tresp_remaining_words,
                               tresp_predictive_eof,
                               q_tresp_beat_vld,
                               current_tid,
                               last_tid_plus1,
                               tc_error,
                               173'h0};

    assign tc_trig[31:0] =   {treq_sof_n,
                               treq_eof_n,
                               treq_vld_n,
                               treq_rdy_n,
                               tresp_sof_n,
                               tresp_eof_n,
                               tresp_vld_n,
                               tresp_rdy_n,
                               tc_error,
                               16'h0};


endmodule
