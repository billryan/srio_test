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
// File name:    tickler.v
// Rev:          5.4
// Description:  The Tickler is used to determine the packet types
//               and sequences to generate. It interfaces to the
//               Initiator Request Generator module. This module can
//               be modified or replaced by other logic to send the
//               desired IREQ packets.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module tickler #( parameter TCQ     = 100,
                  parameter SRIO_VIO = 0 )
  (
  // System
  input                 lnk_clk,      // Link clock
  input                 lnk_reset_n,  // Active low reset

  // User Interface
  input        [35:0]   control0,
  input        [0:127]  vio_display,
  input        [0:3]    g_error,          // Error indicators from IREQ Generator

  output reg            force_reinit,
  output                tickler_error,
  output       [0:3]    igen_error,       // User error conditions to IREQ Generator
  output reg   [0:7]    error_enable,     // Enable for Core killing errors

  // IREQ Generator
  output reg            igen_vld,         // New packet valid indication from Tickler
  input                 igen_rdy,         // Ready indication from IREQ Generator
  output reg   [0:1]    igen_stalls,      // Number of cycles to stall b2b packets at IREQ
  output reg   [0:1]    iresp_stalls,     // Number of cycles to stall b2b packets at IRESP
  output reg   [0:1]    tresp_stalls,     // Number of cycles to stall b2b packets at TRESP
  output reg   [0:63]   igen_bypass_data, // Data from Bypass Port
  output reg            igen_bypass_en,   // Enable to use Bypass Port for data
  output reg            igen_bypass_vld,  // Indicates valid data on Bypass Data Port
  input                 igen_bypass_rdy,  // Ready signal from IREQ Generator to Bypass Port
  output reg   [0:8]    igen_size,        // Number of bytes to transmit
  output reg   [0:33]   igen_addr,        // Address
  output reg   [0:3]    igen_ftype,       // Format Type
  output reg   [0:3]    igen_ttype,       // Transaction Type
  output reg   [0:1]    igen_prio,        // Priority
  output reg            igen_crf,         // Critical Request Flow
  output reg   [0:7]    igen_dest_id,     // Destination ID
  output reg   [0:7]    igen_hopcount,    // Hopcount
  output reg            igen_local,       // Local
  output reg   [0:15]   igen_db_info,     // Doorbell Info
  output reg   [0:3]    igen_msglen,      // Message Length
  output reg   [0:1]    igen_letter,      // Letter
  output reg   [0:1]    igen_mbox,        // Mailbox
  output reg   [0:3]    igen_msgseg       // Message Segment / xmbox
  );

  reg           q_go;
  reg           q_nread, q_nwrite, q_nwrite_r, q_swrite;
  reg           q_msg, q_db, q_maint_rd, q_maint_wrt;
  reg   [0:33]  q_start_addr, q_end_addr;
  reg   [0:8]   q_size;
  reg   [0:3]   num_trans, q_num_trans;
  reg   [0:3]   num_seq, q_num_seq;
  reg   [0:5]   burst_size, q_burst_cnt;

  reg   [0:8]   xmit_state, xmit_next_state;
  reg   [0:33]  seq_addr, q_next_seq_addr;
  reg   [0:1]   q_prio;
  reg           rand_prio;
  reg           rand_size;
  reg   [0:9]   rand_size_val;

  wire          burst_done, seq_done, all_done;
  wire  [0:33]  next_seq_addr;

  wire          vio_reinit;
  wire  [0:1]   vio_stalls, vio_tresp_stalls, vio_iresp_stalls;
  wire          vio_rand_size, vio_rand_prio;
  wire  [0:5]   vio_burst_size;
  wire  [0:7]   vio_error_enable;
  wire  [0:15]  vio_dest_id;
  wire  [0:3]   vio_msgseg;
  wire  [0:1]   vio_mbox;
  wire  [0:1]   vio_letter;
  wire  [0:3]   vio_msglen;
  wire  [0:15]  vio_db_info;
  wire          vio_local;
  wire  [0:7]   vio_hopcount;
  wire          vio_crf;
  wire  [0:1]   vio_prio;
  wire          vio_bypass_en;
  wire  [0:31]  vio_bypass_data;
  wire  [0:16]  vio_blk_size;
  wire  [0:33]  vio_start_addr;
  wire  [0:3]   vio_num_seq;
  wire  [0:8]   vio_size;
  wire          vio_maint_rd, vio_maint_wrt, vio_db, vio_msg;
  wire          vio_nread, vio_swrite, vio_nwrite_r, vio_nwrite;
  wire          vio_go;

  wire  [215:0] vio_control;
  wire  [215:0] vio_unconnected;

  // XMIT State Machine
  localparam  NEW_SEQ         = 9'b000000001;
  localparam  MAINT_RD        = 9'b000000010;
  localparam  MAINT_WRT       = 9'b000000100;
  localparam  NWRITE          = 9'b000001000;
  localparam  NWRITE_R        = 9'b000010000;
  localparam  SWRITE          = 9'b000100000;
  localparam  NREAD           = 9'b001000000;
  localparam  MSG             = 9'b010000000;
  localparam  DOORBELL        = 9'b100000000;

  // Target Parameters
  localparam DEST_ID    = 8'h25;

  // FPGA - Address for Target User Design
  localparam START_ADDR = 31'h0002_0000;
  localparam END_ADDR   = 31'h0002_01FF;

  // TI DSP - Address for TI Demo
  // localparam START_ADDR = 31'h0091_0000 >> 3;
  // localparam END_ADDR   = 31'h0092_0000 >> 3;

  // VIO interface
  generate if (SRIO_VIO) begin : srio_vio_gen
    srio_vio i_srio_vio (
         .control(control0),
         .clk(lnk_clk),
         .sync_in(vio_display),
         .sync_out(vio_control)
    );
  end else               begin : srio_no_vio_gen
    assign vio_control = 0;
  end
  endgenerate // srio_vio_gen

  // VIO control bus breaks down as follows:
  assign vio_unconnected[215:185] = vio_control[215:185];
  assign vio_reinit               = vio_control[184];   
  assign vio_tresp_stalls[0:1]    = vio_control[183:182];
  assign vio_iresp_stalls[0:1]    = vio_control[181:180];
  assign vio_rand_size            = vio_control[179];
  assign vio_rand_prio            = vio_control[178];
  assign vio_burst_size[0:5]      = vio_control[177:172];
  assign vio_error_enable[0:7]    = vio_control[171:164];
  assign vio_dest_id[0:15]        = vio_control[163:148];
  assign vio_msgseg[0:3]          = vio_control[147:144]; 
  assign vio_mbox[0:1]            = vio_control[143:142];
  assign vio_letter[0:1]          = vio_control[141:140];
  assign vio_msglen[0:3]          = vio_control[139:136];
  assign vio_db_info[0:15]        = vio_control[135:120];
  assign vio_local                = vio_control[119];
  assign vio_hopcount[0:7]        = vio_control[118:111];
  assign vio_crf                  = vio_control[110];
  assign vio_prio[0:1]            = vio_control[109:108];   
  assign vio_bypass_en            = vio_control[107];
  assign vio_bypass_data[0:31]    = vio_control[106:75];
  assign vio_blk_size[0:16]       = vio_control[74:58];  
  assign vio_start_addr[0:33]     = vio_control[57:24];
  assign vio_stalls[0:1]          = vio_control[23:22]; 
  assign vio_num_seq[0:3]         = vio_control[21:18];
  assign vio_size[0:8]            = vio_control[17:9];
  assign vio_maint_rd             = vio_control[8];
  assign vio_maint_wrt            = vio_control[7];
  assign vio_db                   = vio_control[6];
  assign vio_msg                  = vio_control[5];
  assign vio_nread                = vio_control[4];
  assign vio_swrite               = vio_control[3];
  assign vio_nwrite_r             = vio_control[2];
  assign vio_nwrite               = vio_control[1];
  assign vio_go                   = vio_control[0];

  // "Go" is a VIO switch. When "off" all values load.
  // When "on" vio changes are ignored and the loaded sequence runs.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_go   <= #TCQ 1'b0;
    else
      q_go   <= #TCQ vio_go; // VIO Output should be synchronous

  // Loadable values used to generate igen control
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) begin
      q_maint_wrt <= #TCQ 1'b0;
      q_maint_rd  <= #TCQ 1'b0;
      q_nwrite    <= #TCQ 1'b0;
      q_nwrite_r  <= #TCQ 1'b0;
      q_swrite    <= #TCQ 1'b0;
      q_nread     <= #TCQ 1'b0;
      q_msg       <= #TCQ 1'b0;
      q_db        <= #TCQ 1'b0;
      q_size      <= #TCQ 9'h000;
      q_prio      <= #TCQ 2'b00;
      num_seq     <= #TCQ 4'b0000;
      rand_prio   <= #TCQ 1'b0;
      rand_size   <= #TCQ 1'b0;
      error_enable<= #TCQ 8'h00;
      burst_size  <= #TCQ 6'b0;
    end
    else if (!vio_go) begin
      q_nread     <= #TCQ vio_nread;
      q_nwrite    <= #TCQ vio_nwrite;
      q_nwrite_r  <= #TCQ vio_nwrite_r;
      q_swrite    <= #TCQ vio_swrite;
      q_msg       <= #TCQ vio_msg;
      q_db        <= #TCQ vio_db;
      q_maint_rd  <= #TCQ vio_maint_rd;
      q_maint_wrt <= #TCQ vio_maint_wrt;
      q_size      <= #TCQ vio_size;
      q_prio      <= #TCQ vio_prio;
      num_seq     <= #TCQ vio_num_seq;
      rand_prio   <= #TCQ vio_rand_prio;
      rand_size   <= #TCQ vio_rand_size;
      error_enable<= #TCQ vio_error_enable;

      if (vio_burst_size != 0)
        burst_size  <= #TCQ vio_burst_size-1;
      else 
        burst_size  <= #TCQ 6'b0;
    end

  // Core outputs generated directly from vio inputs
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) begin
      igen_stalls      <= #TCQ 2'b00;
      iresp_stalls     <= #TCQ 2'b00;
      tresp_stalls     <= #TCQ 2'b00;
      igen_bypass_data <= #TCQ 64'b0;
      igen_bypass_en   <= #TCQ 1'b0;
      igen_bypass_vld  <= #TCQ 1'b0;
      igen_crf         <= #TCQ 1'b0;
      igen_hopcount    <= #TCQ 8'h00;
      igen_local       <= #TCQ 1'b0;
      igen_db_info     <= #TCQ 16'h0000;
      igen_msglen      <= #TCQ 4'b0000;
      igen_letter      <= #TCQ 2'b00;
      igen_mbox        <= #TCQ 2'b00;
      igen_msgseg      <= #TCQ 2'b00;
      igen_dest_id     <= #TCQ DEST_ID;
    end
    else if (!vio_go) begin
      igen_stalls      <= #TCQ vio_stalls;
      iresp_stalls     <= #TCQ vio_iresp_stalls;
      tresp_stalls     <= #TCQ vio_tresp_stalls;
      igen_bypass_data <= #TCQ vio_bypass_data;
      igen_bypass_en   <= #TCQ vio_bypass_en;
      igen_bypass_vld  <= #TCQ 1'b1; // Always have valid bypass
      igen_crf         <= #TCQ vio_crf;
      igen_hopcount    <= #TCQ vio_hopcount;
      igen_local       <= #TCQ vio_local;
      igen_db_info     <= #TCQ vio_db_info;  // From data?
      igen_msglen      <= #TCQ vio_msglen;
      igen_letter      <= #TCQ vio_letter;
      igen_mbox        <= #TCQ vio_mbox;
      igen_msgseg      <= #TCQ vio_msgseg;
      igen_dest_id     <= #TCQ vio_dest_id[8:15];
    end

  // A burst refers to the number of times each transaction is run prior 
  // to switching to a new transaction. Addresses are incremented within
  // the burst run.
  assign burst_done = (q_burst_cnt == 0) & igen_rdy;

  always @(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_burst_cnt <= 4'h0;
    else if (burst_done || !q_go)
      q_burst_cnt <= burst_size;
    else if (igen_rdy)
      q_burst_cnt <= q_burst_cnt - 1;

  // Need to track the number of transactions requested and
  // the number of transactions sent in this sequence in order
  // to properly track the sequence and increment the address
  always @(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      num_trans <= 4'h0;
    else
      num_trans <= q_maint_rd + q_maint_wrt + q_nwrite + q_nwrite_r +
                   q_swrite + q_nread + q_msg + q_db;

  assign seq_done = (q_num_trans == 0) & igen_rdy;

  always @(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_num_trans <= 4'h0;
    else if (seq_done || !q_go)
      q_num_trans <= num_trans;
    else if (burst_done)
      q_num_trans <= q_num_trans - 1;

  // Sequences are made up of a series of transactions. Once the
  // transaction cycle is complete, the sequence count is decremented
  // until all sequences have been run. A num_seq value indicates
  // an infinite run.
  assign all_done = (q_num_seq == 0) & igen_rdy;

  always @(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_num_seq <= 4'h0;
    else if (!q_go || (num_seq == 4'hf))
      q_num_seq <= num_seq;
    else if (all_done)
      q_num_seq <= 0;
    else if (seq_done)
      q_num_seq <= q_num_seq - 1;

  // Addressing will increment within each transaction burst. Once the
  // burst completes, the address will revert to the sequence start address.
  // When the sequence is complete, the sequence address will increment
  // based on the burst size and transaction size. If the sequence start
  // address is past the end address (defined as the start address plus the
  // block size) then the sequence address will wrap back to the original 
  // start address.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) begin
      q_start_addr <= #TCQ START_ADDR;
      q_end_addr   <= #TCQ END_ADDR;
    end
    else if (!vio_go) begin
      q_start_addr <= #TCQ vio_start_addr; // Start address from VIO
      q_end_addr   <= #TCQ vio_start_addr + {15'h0000, vio_blk_size};
    end

  assign next_seq_addr = seq_addr + (burst_size << q_size[0:7]);

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) 
      q_next_seq_addr <= #TCQ START_ADDR;
    else
      q_next_seq_addr <= #TCQ next_seq_addr;

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) begin
      seq_addr <= #TCQ START_ADDR;
    end
    else if (!q_go) begin
      seq_addr <= #TCQ q_start_addr;
    end
    else if (seq_done) begin
      if (q_next_seq_addr > q_end_addr)
        seq_addr <= #TCQ q_start_addr;
      else
        seq_addr <= #TCQ q_next_seq_addr; 
    end

  always@(posedge lnk_clk or negedge lnk_reset_n) begin
    if (~lnk_reset_n)
      igen_addr <= #TCQ START_ADDR;
    else if (!q_go)
      igen_addr <= #TCQ q_start_addr;
    else if (seq_done)
      igen_addr <= #TCQ q_next_seq_addr;
    else if (burst_done)
      igen_addr <= #TCQ seq_addr;
    else if (igen_rdy & igen_vld)
      igen_addr <= #TCQ igen_addr + igen_size;
  end

  // Size is either random, or based on vio_input.
  // We need to constantly change the size value in order to come up 
  // with a pseudo-random value.
  always@(posedge lnk_clk or negedge lnk_reset_n) begin
    if (~lnk_reset_n)
      rand_size_val <= #TCQ 10'h008;
    else
      rand_size_val <= #TCQ (rand_size_val == 256) ? 10'h008 : 
                              (rand_size_val + rand_size_val);
  end

  always @(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) begin
      igen_size <= 9'h000;
    end
    else begin
      igen_size <= rand_size ? rand_size_val : q_size;
    end

  // If random, then increment priority. Need to cap request priority at 2
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      igen_prio <= #TCQ 2'b0; 
    else if (rand_prio)
      igen_prio <= #TCQ (igen_prio == 2'b10) ? 2'b00 : (igen_prio + 1);
    else
      igen_prio <= #TCQ q_prio;

  // Re-initialization is triggered outside of the state machine.
  // When triggered it is possible to see link errors from one or both
  // sides of the link.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      force_reinit <= #TCQ 1'b0;
    else
      force_reinit <= #TCQ vio_reinit;

  // State machine tracks the packet to packet transition and is needed to
  // allow back-to-back packets and maintain packet order throughout
  // the sequence.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      xmit_state <= #TCQ NEW_SEQ;
    else if (igen_rdy)
      xmit_state <= #TCQ xmit_next_state;

  always @*
    casex (xmit_state)
      // NEW_SEQ is the reset state. It stalls igen interface
      // allowing user entered data to be set. Once the "GO"
      // switch is flipped the state machine branches to the
      // transaction states. When all sequences are complete
      // NEW_SEQ is used to hold until new user requests are
      // entered.
      NEW_SEQ: begin
        // Current State Outputs
        igen_ftype    = 4'h0;
        igen_ttype    = 4'h0;
        igen_vld      = 1'b0;

        // Next state transition
        casex ({q_go, all_done, q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
          10'b0?_????_????,
          10'b11_????_????: xmit_next_state = NEW_SEQ;
          10'b10_1???_????: xmit_next_state = MAINT_WRT;
          10'b10_01??_????: xmit_next_state = MAINT_RD;
          10'b10_001?_????: xmit_next_state = NWRITE;
          10'b10_0001_????: xmit_next_state = NWRITE_R;
          10'b10_0000_1???: xmit_next_state = SWRITE;
          10'b10_0000_01??: xmit_next_state = NREAD;
          10'b10_0000_001?: xmit_next_state = MSG;
          10'b10_0000_0001: xmit_next_state = DOORBELL;
          default:          xmit_next_state = NEW_SEQ;
        endcase
      end

      // MAINT_WRT sends a Maintenance write transation until the burst is
      // complete. At that point it transitions to the next transaction in 
      // the sequence.
      MAINT_WRT: begin
        // Current State Outputs
        igen_ftype    = 4'h8;
        igen_ttype    = 4'h1;
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = MAINT_WRT;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = MAINT_WRT;
            // The following indicate transaction progression
            12'b1101_1000_0000: xmit_next_state = MAINT_WRT;
            12'b1101_?1??_????: xmit_next_state = MAINT_RD;
            12'b1101_?01?_????: xmit_next_state = NWRITE;
            12'b1101_?001_????: xmit_next_state = NWRITE_R;
            12'b1101_?000_1???: xmit_next_state = SWRITE;
            12'b1101_?000_01??: xmit_next_state = NREAD;
            12'b1101_?000_001?: xmit_next_state = MSG;
            12'b1101_?000_0001: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      // MAINT_Read sends a Maintenance read transation until the burst is
      // complete. At that point it transitions to the next transaction in 
      // the sequence.
      MAINT_RD: begin
        // Current State Outputs
        igen_ftype    = 4'h8;
        igen_ttype    = 4'h0;
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = MAINT_RD;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = MAINT_RD;
            // The following indicate transaction progression
            12'b1101_1?00_0000: xmit_next_state = MAINT_WRT;
            12'b1101_0100_0000: xmit_next_state = MAINT_RD;
            12'b1101_??1?_????: xmit_next_state = NWRITE;
            12'b1101_??01_????: xmit_next_state = NWRITE_R;
            12'b1101_??00_1???: xmit_next_state = SWRITE;
            12'b1101_??00_01??: xmit_next_state = NREAD;
            12'b1101_??00_001?: xmit_next_state = MSG;
            12'b1101_??00_0001: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      NWRITE: begin
        // Current State Outputs
        igen_ftype    = 4'h5;
        igen_ttype    = 4'h4;
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = NWRITE;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = NWRITE;
            // The following indicate transaction progression
            12'b1101_1??0_0000: xmit_next_state = MAINT_WRT;
            12'b1101_01?0_0000: xmit_next_state = MAINT_RD;
            12'b1101_0010_0000: xmit_next_state = NWRITE;
            12'b1101_???1_????: xmit_next_state = NWRITE_R;
            12'b1101_???0_1???: xmit_next_state = SWRITE;
            12'b1101_???0_01??: xmit_next_state = NREAD;
            12'b1101_???0_001?: xmit_next_state = MSG;
            12'b1101_???0_0001: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      NWRITE_R: begin
        // Current State Outputs
        igen_ftype    = 4'h5;
        igen_ttype    = 4'h5;
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = NWRITE_R;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = NWRITE_R;
            // The following indicate transaction progression
            12'b1101_1???_0000: xmit_next_state = MAINT_WRT;
            12'b1101_01??_0000: xmit_next_state = MAINT_RD;
            12'b1101_001?_0000: xmit_next_state = NWRITE;
            12'b1101_0001_0000: xmit_next_state = NWRITE_R;
            12'b1101_????_1???: xmit_next_state = SWRITE;
            12'b1101_????_01??: xmit_next_state = NREAD;
            12'b1101_????_001?: xmit_next_state = MSG;
            12'b1101_????_0001: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      SWRITE: begin
        // Current State Outputs
        igen_ftype    = 4'h6;
        igen_ttype    = 4'h0;
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = SWRITE;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = SWRITE;
            // The following indicate transaction progression
            12'b1101_1???_?000: xmit_next_state = MAINT_WRT;
            12'b1101_01??_?000: xmit_next_state = MAINT_RD;
            12'b1101_001?_?000: xmit_next_state = NWRITE;
            12'b1101_0001_?000: xmit_next_state = NWRITE_R;
            12'b1101_0000_1000: xmit_next_state = SWRITE;
            12'b1101_????_?1??: xmit_next_state = NREAD;
            12'b1101_????_?01?: xmit_next_state = MSG;
            12'b1101_????_?001: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      NREAD: begin
        // Current State Outputs
        igen_ftype    = 4'h2;
        igen_ttype    = 4'h4;
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = NREAD;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = NREAD;
            // The following indicate transaction progression
            12'b1101_1???_??00: xmit_next_state = MAINT_WRT;
            12'b1101_01??_??00: xmit_next_state = MAINT_RD;
            12'b1101_001?_??00: xmit_next_state = NWRITE;
            12'b1101_0001_??00: xmit_next_state = NWRITE_R;
            12'b1101_0000_1?00: xmit_next_state = SWRITE;
            12'b1101_0000_0100: xmit_next_state = NREAD;
            12'b1101_????_??1?: xmit_next_state = MSG;
            12'b1101_????_??01: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      MSG: begin
        // Current State Outputs
        igen_ftype    = 4'hB;
        igen_ttype    = 4'hX; // Don't Care
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = MSG;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = MSG;
            // The following indicate transaction progression
            12'b1101_1???_???0: xmit_next_state = MAINT_WRT;
            12'b1101_01??_???0: xmit_next_state = MAINT_RD;
            12'b1101_001?_???0: xmit_next_state = NWRITE;
            12'b1101_0001_???0: xmit_next_state = NWRITE_R;
            12'b1101_0000_1??0: xmit_next_state = SWRITE;
            12'b1101_0000_01?0: xmit_next_state = NREAD;
            12'b1101_0000_0010: xmit_next_state = MSG;
            12'b1101_????_???1: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      DOORBELL: begin
        // Current State Outputs
        igen_ftype    = 4'hA;
        igen_ttype    = 4'h0; // Don't Care
        igen_vld      = 1'b1;

        // Next State Transitions
        casex ({q_go, igen_rdy, all_done, burst_done, 
                q_maint_wrt, q_maint_rd, q_nwrite, q_nwrite_r, 
                q_swrite, q_nread, q_msg, q_db})
            // These 4 are "special cases in which we either 
            // branch to NEW_SEQ because we are done with all
            // sequences, or continue to send this transaction
            // because we are mid-burst, or igen isn't ready.
            12'b0???_????_????: xmit_next_state = NEW_SEQ;
            12'b10??_????_????: xmit_next_state = DOORBELL;
            12'b111?_????_????: xmit_next_state = NEW_SEQ;
            12'b1100_????_????: xmit_next_state = DOORBELL;
            // The following indicate transaction progression
            12'b1101_1???_????: xmit_next_state = MAINT_WRT;
            12'b1101_01??_????: xmit_next_state = MAINT_RD;
            12'b1101_001?_????: xmit_next_state = NWRITE;
            12'b1101_0001_????: xmit_next_state = NWRITE_R;
            12'b1101_0000_1???: xmit_next_state = SWRITE;
            12'b1101_0000_01??: xmit_next_state = NREAD;
            12'b1101_0000_001?: xmit_next_state = MSG;
            12'b1101_0000_0001: xmit_next_state = DOORBELL;
            default:            xmit_next_state = NEW_SEQ;
        endcase
      end

      default: begin
        // Current State Outputs
        igen_ftype    = 4'h0;
        igen_ttype    = 4'h0;
        igen_vld      = 1'b0;

        // Next State Transitions
        xmit_next_state = NEW_SEQ;
      end

    endcase

  // Additional error indicators for user defined error generation
  assign tickler_error = g_error[0];

  assign igen_error = 4'b0000;

endmodule
