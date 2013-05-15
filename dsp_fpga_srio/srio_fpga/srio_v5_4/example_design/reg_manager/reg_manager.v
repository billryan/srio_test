/******************************************************************************
  Copyright (c) 1995-2008 by Xilinx, Inc. All rights reserved.
  This text/file contains proprietary, confidential
  information of Xilinx, Inc., is distributed under license
  from Xilinx, Inc., and may be used, copied and/or
  disclosed only pursuant to the terms of a valid license
  agreement with Xilinx, Inc. Xilinx hereby grants you a
  license to use this text/file solely for design, simulation,
  implementation and creation of design files limited
  to Xilinx devices or technologies. Use with non-Xilinx
  devices or technologies is expressly prohibited and
  immediately terminates your license unless covered by
  a separate agreement.

  Xilinx is providing this design, code, or information
  "as-is" solely for use in developing programs and
  solutions for Xilinx devices, with no obligation on the
  part of Xilinx to provide support. By providing this design,
  code, or information as one possible implementation of
  this feature, application or standard, Xilinx is making no
  representation that this implementation is free from any
  claims of infringement. You are responsible for
  obtaining any rights you may require for your implementation.
  Xilinx expressly disclaims any warranty whatsoever with
  respect to the adequacy of the implementation, including
  but not limited to any warranties or representations that this
  implementation is free from claims of infringement, implied
  warranties of merchantability or fitness for a particular
  purpose.

  Xilinx products are not intended for use in life support
  appliances, devices, or systems. Use in such applications is
  expressly prohibited.

  Any modifications that are made to the Source Code are
  done at the user sole risk and will be unsupported.

  This copyright and support notice must be retained as part
  of this text at all times. (c) Copyright 1995-2008 Xilinx, Inc.
  All rights reserved.

       File:  reg_manager.v
        Rev:  $REV$
Description:  The Register Manager provides read and write access to the
              entire RapidIO configuration space through a single interface.
              It acts as a master on a maintenance bus connecting the
              configuration ports of all RapidIO layers as well as one user
              agent potentially mapped into the configuration space.

******************************************************************************/
`timescale 1 ps / 1 ps

module reg_manager #(
  parameter TCQ = 100
)(
  /*AUTOARG*/
  // Inputs
  clk, reset_n,
  mreq_sof_n, mreq_eof_n, mreq_vld_n, mreq_local, mreq_ftype, mreq_ttype,
  mreq_src_id, mreq_dest_id, mreq_tid, mreq_prio, mreq_byte_count, 
  mreq_byte_en_n,mreq_data, mreq_offset, mresp_rdy_n,
  mgt_phy_rdy_n, mgt_log_rdy_n, mgt_usr_rdy_n, mgt_di_phy, mgt_di_log,
  mgt_di_usr,

  // Ouputs
  mresp_sof_n, mresp_eof_n, mresp_vld_n, mresp_local, mresp_ftype,
  mresp_ttype, mresp_dest_id, mresp_src_id, mresp_tid, mresp_prio, 
  mresp_status, mresp_data, mreq_rdy_n,
  mgt_clk, mgt_reset_n, mgt_a, mgt_do, mgt_wr_n, mgt_rd_n, mgt_phy_sel_n,
  mgt_log_sel_n, mgt_usr_sel_n
);

  // Physical layer offset
  localparam PHY_OFFSET = 12'h100;

  // User Space
  localparam RM_USER_SPACE_MAPPED = 1;
  localparam USR_OFFSET           = 20'h1_0000;

  // Receive state machine state
  localparam REG_RX_IDLE     = 12'h800;
  localparam RX_DECODE       = 12'h400;
  localparam RX_W0           = 12'h200;
  localparam RX_W1           = 12'h100;
  localparam RX_GDATA        = 12'h080;
  localparam RX_R0           = 12'h040;
  localparam RX_R1           = 12'h020;
  localparam RX_TX           = 12'h010;
  localparam RX_WAIT         = 12'h008;
  localparam RX_R0_WAIT      = 12'h004;
  localparam RX_W0_WAIT      = 12'h002;
  localparam RX_W1_WAIT      = 12'h001;

  // Transmit state machine states
  localparam TX_IDLE         = 6'b100000;
  localparam TX_GET_D0       = 6'b010000;
  localparam TX_GET_D1       = 6'b001000;
  localparam TX_SEND_PACKET  = 6'b000100;
  localparam TX_STATUS_RESP  = 6'b000010;
  localparam TX_DONE         = 6'b000001;

  //------------------------------------------------------------------------------
  // Port declaration

  // Response path
  output          mresp_sof_n;
  output          mresp_eof_n;
  output          mresp_vld_n;
  output          mresp_local;
  output  [0:3]   mresp_ftype;
  output  [0:3]   mresp_ttype;
  output  [0:15]  mresp_dest_id;
  output  [0:15]  mresp_src_id;
  output  [0:7]   mresp_tid;
  output  [0:1]   mresp_prio;
  output  [0:3]   mresp_status;
  output  [0:63]  mresp_data;
  // Request path
  output          mreq_rdy_n;
  // Management path
  output          mgt_clk;
  output          mgt_reset_n;
  output  [0:23]  mgt_a;
  output  [0:31]  mgt_do;
  output  [0:3]   mgt_wr_n;
  output          mgt_rd_n;
  output          mgt_phy_sel_n;
  output          mgt_log_sel_n;
  output          mgt_usr_sel_n;

  // System
  input           clk;
  input           reset_n;
  // Request path
  input           mreq_sof_n;
  input           mreq_eof_n;
  input           mreq_vld_n;
  input           mreq_local;
  input   [0:3]   mreq_ftype;
  input   [0:3]   mreq_ttype;
  input   [0:15]  mreq_src_id;
  input   [0:15]  mreq_dest_id;
  input   [0:7]   mreq_tid;
  input   [0:1]   mreq_prio;
  input   [0:8]   mreq_byte_count;
  input   [0:7]   mreq_byte_en_n;
  input   [0:63]  mreq_data;
  input   [0:20]  mreq_offset;
  // Response path
  input           mresp_rdy_n;
  // Management path
  input   [0:31]  mgt_di_phy;
  input   [0:31]  mgt_di_log;
  input   [0:31]  mgt_di_usr;
  input           mgt_phy_rdy_n;
  input           mgt_log_rdy_n;
  input           mgt_usr_rdy_n;


  //------------------------------------------------------------------------------
  // Register and Wire Definition
  reg             mreq_eof_q_n;
  reg             mreq_local_q;
  reg     [0:3]   mreq_ftype_q;
  reg     [0:3]   mreq_ttype_q;
  reg     [0:15]  mreq_src_id_q;
  reg     [0:15]  mreq_dest_id_q;
  reg     [0:7]   mreq_tid_q;
  reg     [0:1]   mreq_prio_q;
  reg     [0:5]   mreq_byte_count_q;
  reg     [0:7]   mreq_byte_en_q_n;
  reg     [0:63]  mreq_data_q;
  reg     [0:20]  mreq_offset_q;
  reg     [0:23]  mgt_a;
  reg     [0:31]  mgt_do;

  reg     [0:21]  word_addr_counter, q_word_addr_counter;
  reg             first_time, q_first_time;

  reg     [5:0]   time_out_cntr;
  wire            req_timeout;
  reg             mgt_rd_n;

  reg     [0:5]   tx_cs;
  reg     [0:5]   tx_ns;

  reg     [0:11]   rx_cs;
  reg     [0:11]   rx_ns;

  reg             read_req;
  reg             command_error;

  reg     [0:3]   mgt_wr_n;
  reg     [0:2]   hit_n;
  reg     [0:2]   q_hit_n;

  reg     [0:5]   req_dword_rem;
  reg             mgt_phy_sel_n;
  reg             mgt_log_sel_n;
  reg             mgt_usr_sel_n;
  wire            mgt_phy_sel_n_wire;
  wire            mgt_log_sel_n_wire;
  wire            mgt_usr_sel_n_wire;

  wire            mgt_phy_sel_fall;
  wire            mgt_log_sel_fall;
  wire            mgt_usr_sel_fall;
  wire            sel_fell;
  reg             sel_fell_q;
  reg     [0:2]   sel_bus, sel_bus_q;

  reg             rdy_n;

  reg     [0:3]   mresp_ftype;
  reg     [0:3]   mresp_ttype;
  reg     [0:3]   mresp_status;

  reg             mresp_sof_n;
  reg             mresp_eof_n;
  reg             mresp_vld_n;

  reg             resp_w_data ;
  reg             resp_wo_data;

  reg     [0:63]  mresp_data;
  reg     [0:31]  mgt_rx_data;
  reg             rdy_q_n;
  reg             first_packet;
  reg  [0:1]      next_resp_prio;


  //------------------------------------------------------------------------------
  // Output assignments

  assign  mgt_clk         = clk;
  assign  mgt_reset_n     = reset_n;
  assign  mresp_dest_id   = mreq_src_id_q;
  assign  mresp_src_id    = mreq_dest_id_q;
  assign  mresp_tid       = mreq_tid_q;
  assign  mresp_prio      = mreq_prio_q;
  assign  mresp_local     = mreq_local_q;
  assign  mreq_rdy_n      = !(rx_cs == REG_RX_IDLE | rx_cs == RX_GDATA);



  //------------------------------------------------------------------------------
  // RECEIVE STATE MACHINE
  //
  // The receive state machine is used to receive packets from the MREQ port
  // and then perform the correct operations on the mgt port for reads and
  // writes.
  //
  // This state machine operates in conjunction with the TRANSMIT STATE
  // MACHINE when a received packet requires a response.  The types of
  // responses may or may not contain data.

  // Register for state machine
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        rx_cs                <= #TCQ REG_RX_IDLE;
      else
        rx_cs                <= #TCQ rx_ns;
    end

  // Next state logic
  always @*
    begin
      case (rx_cs)
        REG_RX_IDLE: begin
          // When we receive a packet, go to the decode state
          if (!mreq_sof_n & !mreq_vld_n)
            rx_ns = RX_DECODE;
          else
            rx_ns = REG_RX_IDLE;
          end

        // Decode the type of packet (read or write)
        RX_DECODE: begin
          // If the ftype or ttype is not recognized,
          // Do not do anything.  Wait for an error
          // to be signaled
          if (command_error)
            rx_ns = RX_WAIT;
          // If it is not a read, go the write state
          else if (!read_req)
            rx_ns = RX_W0;
          // If it is a read, go to the read state
          else
            rx_ns = RX_R0;
          end

        // Delay by 1 cycle because of pipelining in other signals
        RX_W0: begin
           rx_ns = RX_W0_WAIT;
        end


        // Write dword 0 to the mgt port
        RX_W0_WAIT: begin
          // In the write dword 0 state, stay hear until the write is confirmed
          if (!rdy_n)
            rx_ns = RX_W1;
          // We need this because there might be no DWORD0 to write, but a DWORD1 only...
          // so we need to progress right away..
          else if (&mgt_wr_n)
            rx_ns = RX_W1;
          // If the write is not confirmed before the timeout, send back an
          // error
          else if (req_timeout)
            rx_ns = RX_WAIT;
          else
            //rx_ns = RX_W0;
            rx_ns = RX_W0_WAIT;
          end

        // Delay by 1 cycle because of pipelining in other signals
        RX_W1: begin
           rx_ns = RX_W1_WAIT;
        end


        // Write dword 1 to the mgt port
        RX_W1_WAIT: begin
          // Write dword 1 has happened and it was not the last dword
          // so go to the get more data state
          if (!rdy_n & mreq_eof_q_n)
            rx_ns = RX_GDATA;
          // The last packet is accepted, wait for a response to be
          // sent back
          else if (!rdy_n & !mreq_eof_q_n)
            rx_ns = RX_WAIT;
          // There is nothing to write
          else if (&mgt_wr_n)
            rx_ns = RX_WAIT;
          // If the write is not confirmed before the timeout, send back an
          // error
          else if (req_timeout)
            rx_ns = RX_WAIT;
          else
            rx_ns = RX_W1_WAIT;
          end

        // Need to get more data to write
        RX_GDATA: begin
          // Once we receive more data, go to the write states to write it
          if (!mreq_vld_n)
            rx_ns = RX_W0;
          else
            rx_ns = RX_GDATA;
          end

        //  Place read request on mgt port for one clock cycle
        RX_R0: begin
            rx_ns = RX_R0_WAIT;
          end

        // Wait for the read to complete
        RX_R0_WAIT: begin
          // If ready is asserted, the read from dword 0 is complete
          if (!rdy_n)
            rx_ns = RX_R1;
          // If the read is not confirmed before the timeout, send back an
          // error
          else if (req_timeout)
            rx_ns = RX_WAIT;
          else
            rx_ns = RX_R0_WAIT;
          end

        // Place read request on mgt port for one clock cycle
        RX_R1: begin
         // if logical read, need to wait an extra clk cycle
            rx_ns = RX_TX;
         end

        // This state is used when waiting for dword 1 to be read.
        // If there are no more dwords to be read once dword 1 is read,
        // we go towait state while the final packet is sent out the
        // mresp port.
        //
        // If there is more data to be sent, we wait until the TX state
        // machine has sent the data packet and is ready to accept new data.
        //
        // Finally, if the read does not happen and a timeout occurs, go
        // to the wait state and wait for an error to be sent back
        RX_TX: begin
          if (!rdy_n & req_dword_rem == 0)
            rx_ns = RX_WAIT;
          else if (tx_cs == TX_GET_D0)
            rx_ns = RX_R0;
          else if (req_timeout)
            rx_ns = RX_WAIT;
          else
            rx_ns = RX_TX;
          end

        // Wait in this state until the TX state machine has sent the packet
        // on the mresp port
        RX_WAIT: begin
          if (tx_cs == TX_DONE)
            rx_ns = REG_RX_IDLE;
          else
            rx_ns = RX_WAIT;
          end

          default: begin
            rx_ns = REG_RX_IDLE;
            end

        endcase
    end

  //------------------------------------------------------------------------------
  // TRANSMIT STATE MACHINE
  //
  // This state machine is used to when responses are necessary.
  // These responses include responses to writes as well as data
  // for read requests
  //
  // A possible problem with this setup is that read requests
  // that do not error out on the first packet of a response can
  // not signal an error if there is a problem with subsequent data.
  //
  // One way around this would be to buffer all data to be sent on
  // the mresp port before sending it.  The current implementation
  // sends data to the mresp port as soon as it is received from the
  // mgt port.  This saves resources at the expense of not handling
  // exceptions very well.
  //
  // In case there is an error during the read, the last qword of
  // data will be sent and the packet is ended prematurely
  //
  // Another possible problem is that for streaming writes that have
  // a timeout, an error packet will be created and sent back to the
  // sender.  However, all registers up to the register that timed
  // out will have been written.

  // Register for state machine
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        tx_cs                <= #TCQ TX_IDLE;
      else
        tx_cs                <= #TCQ tx_ns;
    end

  // Next state logic
  always @*
     case (tx_cs)

        // If we have a read that requires data, get ready
        // to receive data.
        // If we just need to send a status response, wait until the
        // RX state machine is done receiving data correctly and is going to
        // transition into the RX_WAIT state.
        TX_IDLE: begin
          if (resp_w_data)
            tx_ns = TX_GET_D0;
          else if (resp_wo_data & rx_cs == RX_WAIT) // Can wait for the current state
            tx_ns = TX_STATUS_RESP;
          else
            tx_ns = TX_IDLE;
          end

        // Wait for dword 0 of the read packet.  If there is a timeout,
        // send the packet short.
        TX_GET_D0: begin
          if(!rdy_n && !sel_fell_q)
            tx_ns = TX_GET_D1;
          else if (req_timeout)
            tx_ns = TX_SEND_PACKET;
          else
            tx_ns = TX_GET_D0;
          end

        // Wait for dword 1 of the read packet.  If there is a timeout,
        // send the packet short.
        TX_GET_D1: begin
          if(!rdy_n && !sel_fell_q)
            tx_ns = TX_SEND_PACKET;
          else if (req_timeout)
            tx_ns = TX_SEND_PACKET;
          else
            tx_ns = TX_GET_D1;
          end

        // Dword 0 and Dword 1 are full and ready to be sent to the MRESP
        // port.  If the receiver is not in the wait state (more data to read)
        // and the packet has been accepted, get ready to accept more data.
        //
        // If data is accepted and the RX state machine is done receiving
        // data, go to the idle state.
        //
        // Other wise, continue to try and send the packet on the mresp port.
        TX_SEND_PACKET: begin
          if(!mresp_rdy_n & rx_cs != RX_WAIT)
            tx_ns = TX_GET_D0;
          else if (!mresp_rdy_n & rx_cs == RX_WAIT)
            tx_ns = TX_DONE;
          else
            tx_ns = TX_SEND_PACKET;
          end

        // This state is used to send single cycle status responses.
        // These responses include errors and write completions.
        TX_STATUS_RESP: begin
          if (!mresp_rdy_n & rx_cs == RX_WAIT)
            tx_ns = TX_DONE;
          else
            tx_ns = TX_STATUS_RESP;
          end

        // Signal the RX to finish
        TX_DONE: begin
            tx_ns = TX_IDLE;
          end

          default: tx_ns = TX_IDLE;

      endcase

  //------------------------------------------------------------------------------
  // MREQ Capture registers

   always@( mreq_prio )
   begin
      case(mreq_prio[0:1])
         2'b00   : next_resp_prio[0:1] = 2'b01;
         2'b01   : next_resp_prio[0:1] = 2'b10;
         default : next_resp_prio[0:1] = 2'b11;
      endcase
   end

  // Capture the data from MREQ port
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        begin
          mreq_local_q          <= #TCQ 1'b0;
          mreq_ttype_q          <= #TCQ 4'h0;
          mreq_src_id_q         <= #TCQ 16'h0;
          mreq_dest_id_q        <= #TCQ 16'h0;
          mreq_tid_q            <= #TCQ 8'h0;
          mreq_prio_q           <= #TCQ 2'b00;
          mreq_byte_count_q     <= #TCQ 6'h0;
          mreq_byte_en_q_n      <= #TCQ 8'hFF;
          mreq_offset_q         <= #TCQ 21'h0;
        end
      else if(rx_cs == REG_RX_IDLE & !mreq_sof_n && !mreq_vld_n)
        begin
          mreq_local_q          <= #TCQ mreq_local;
          mreq_ttype_q          <= #TCQ mreq_ttype;
          mreq_src_id_q         <= #TCQ mreq_src_id;
          mreq_dest_id_q        <= #TCQ mreq_dest_id;
          mreq_tid_q            <= #TCQ mreq_tid;
          mreq_prio_q[0:1]      <= #TCQ next_resp_prio[0:1];
          mreq_byte_count_q     <= #TCQ mreq_byte_count[0:5];
          mreq_byte_en_q_n      <= #TCQ mreq_byte_en_n;
          mreq_offset_q         <= #TCQ mreq_offset;
        end
    end

  // Capture FTYPE from the MREQ port
  // Since the ftype is used to determine if a response is needed, it
  // is cleared when the last dword of a packet is accepted on the MRESP
  // port
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        mreq_ftype_q          <= #TCQ 4'h0;
      else if (tx_cs == TX_DONE)
        mreq_ftype_q          <= #TCQ 4'h0;
      else if(rx_cs == REG_RX_IDLE & !mreq_sof_n && !mreq_vld_n)
        mreq_ftype_q          <= #TCQ mreq_ftype;
    end

  // While fields like address are only captured on the first clock cycle,
  // eof and data are captured whenever there is valid data.
  always @(posedge clk)
    begin
       if((rx_cs == REG_RX_IDLE | rx_cs == RX_GDATA) & !mreq_vld_n)
        begin
          mreq_eof_q_n  <= #TCQ mreq_eof_n;
          mreq_data_q   <= #TCQ mreq_data;
        end
    end


  //------------------------------------------------------------------------------
  // Address Normalization

  // Manage the address for extended space registers.  If an address  hits the extended
  // space registers, normalize back to zero for that space.
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
      mgt_a <= #TCQ 0;
    else begin
      if (!mgt_log_sel_n_wire)
        mgt_a <= #TCQ {word_addr_counter, 2'b00};
      else if (!mgt_phy_sel_n_wire)
        mgt_a <= #TCQ {word_addr_counter, 2'b00} - PHY_OFFSET;
      else if (!mgt_usr_sel_n_wire)
        mgt_a <= #TCQ {word_addr_counter, 2'b00} - USR_OFFSET;
      else
        mgt_a <= #TCQ {word_addr_counter, 2'b00};
    end
  end


  //------------------------------------------------------------------------------
  // Read Request/Write Request Signal generation

  // Determine if we should signal a read to the register space
  // Reads are only scheduled for one clock cycle
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
      mgt_rd_n <= #TCQ 1'b1;
    else begin
      if (rx_cs == RX_R0 | rx_cs == RX_R1)
        mgt_rd_n <= #TCQ !read_req;
      else
        mgt_rd_n <= #TCQ 1'b1;
    end
  end

  // Determine if we should signal a write to the register space
  // Writes are signaled until they are accepted by the appropriate
  // ready signal being asserted from the register space.
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
      mgt_wr_n <= #TCQ 4'hF;
    else begin 
      if (rx_cs == RX_W0)
        mgt_wr_n <= #TCQ mreq_byte_en_q_n[0:3];
      else if (rx_cs == RX_W1)
        mgt_wr_n <= #TCQ mreq_byte_en_q_n[4:7];
      else if (!rdy_n)
        mgt_wr_n <= #TCQ 4'hF;
    end
  end

  // Mux MREQ data to MGT_DO based on if it is the first or second dword
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
      mgt_do <= #TCQ 0;
    else begin
      if (rx_cs == RX_W0)
        mgt_do <= #TCQ mreq_data_q[0:31];
      else if (rx_cs == RX_W1)
        mgt_do <= #TCQ mreq_data_q[32:63];
    end
  end

  // Loadable address counter used to address the register space
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n) begin
         q_word_addr_counter <= #TCQ 22'h000000;
         q_first_time        <= #TCQ 1'b0;
      end
      else begin
         q_word_addr_counter <= #TCQ word_addr_counter;
         q_first_time        <= #TCQ first_time;
      end
    end

  always @*
     begin
      if (rx_cs == RX_DECODE) begin
        // Load the counter
        word_addr_counter = {mreq_offset_q, 1'b0};
        first_time        = 1'b1;
      end

      // MGT WRITE
      // Increment the counter when we transition from RX_W0
      // to RX_W1.  The counter should only be incremented
      // on the transition.
      else if (rx_cs == RX_W1) begin
         word_addr_counter = q_word_addr_counter + 1'b1;
         first_time        = 1'b0;
      end

      // MGT WRITE
      // Increment the counter when we transition from RX_GDATA
      // to RX_W0.  The counter should only be incremented
      // on the transition.
      else if (rx_cs == RX_W0) begin
        word_addr_counter = q_first_time ? q_word_addr_counter
                                       : q_word_addr_counter + 1'b1;
        first_time        = 1'b0; // Shouldn't transisition on first iteration
      end

      // MGT READ
      // Increment the counter when in RX_R0_WAIT and
      // transitions to RX_R1
      else if (rx_cs == RX_R1) begin
        word_addr_counter = q_word_addr_counter + 1'b1;
        first_time        = 1'b0;
      end

      // MGT READ
      // Increment the counter when in RX_TX and
      // transitions to RX_R0
      else if (rx_cs == RX_R0) begin
        word_addr_counter = q_first_time ? q_word_addr_counter
                                       : q_word_addr_counter + 1'b1;
        first_time        = 1'b0; // Shouldn't transisition on first iteration
      end

      else begin
        word_addr_counter = q_word_addr_counter;
        first_time        = 1'b0;
      end
  end

  // Determine how many dwords would remain after the read at the first addr
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        req_dword_rem <= #TCQ  6'h0;
      // Load the counter if it is a read
      else if (rx_cs == RX_DECODE & read_req)
        req_dword_rem <= #TCQ mreq_byte_count_q;
      // Clear the counter in the wait state
      else if (rx_cs == RX_WAIT)
        req_dword_rem <= #TCQ  6'h0;
      // Do not underflow the counter
      else if (req_dword_rem == 6'b0)
        req_dword_rem <= #TCQ  6'h0;
      // Subtract from the counter when in RX_R1.  By design, we are only
      // in RX_R1 for one clock cycle.
      else if (rx_cs == RX_R1)
        req_dword_rem <= #TCQ req_dword_rem - 1'b1;
    end

  //------------------------------------------------------------------------------
  // Detect what config space is targeted by the address counter
  always @(rx_ns or word_addr_counter)
      if (rx_ns == RX_R0 |
          rx_ns == RX_R1 |
          rx_ns == RX_W0 |
          rx_ns == RX_W1 |
          rx_ns == RX_W0_WAIT |
          rx_ns == RX_W1_WAIT)
        hit_n <= #TCQ HIT(word_addr_counter[0:20]);
      else
        hit_n <= #TCQ 3'b111;

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
      q_hit_n <= #TCQ 3'h7;
    else begin
      q_hit_n <= #TCQ hit_n;
    end
  end

  // Management bus select definition
  assign mgt_log_sel_n_wire  = q_hit_n[0];
  assign mgt_phy_sel_n_wire  = q_hit_n[1];
  assign mgt_usr_sel_n_wire  = q_hit_n[2];

  //------------------------------------------------------------------------------
  // RDY Select Logic

  // This logic selects the correct "rdy" to look at based on the type
  // of packet received and the address space that is configured.  The
  // rdy can be valid starting on the clock cycle after the command is
  // presented.
  //
  // Some of this logic is necessary for the possibility that the ready from
  // one of the modules is always asserted.  If this is the case, we need
  // to make sure to only look at the ready when it is a valid response to out
  // command

  always @*
    begin
      // If it is a write
      if (!read_req)
        begin
          case ({mgt_phy_sel_n_wire, mgt_log_sel_n_wire, mgt_usr_sel_n_wire})
            3'b011: rdy_n = mgt_phy_rdy_n;
            3'b101: rdy_n = mgt_log_rdy_n;
            3'b110: rdy_n = mgt_usr_rdy_n;
            default: rdy_n = 1'b1;
          endcase
        end
      else
        begin
          // If it is a read, we want to only see the first
          // asserted ready signal.  After that, ready should
          // be de-asserted.  While waiting for a response for
          // a read
          if (rx_cs == RX_R0_WAIT | rx_cs == RX_TX)
            begin
              // First ready signal was seen on prev clock cycle so de-assert
              // rdy_n
              if (!rdy_q_n)
                rdy_n = 1'b1;
              else if (!sel_fell_q)
                begin
                  case (sel_bus_q)
                    3'b011: rdy_n = mgt_phy_rdy_n;
                    3'b101: rdy_n = mgt_log_rdy_n;
                    3'b110: rdy_n = mgt_usr_rdy_n;
                    default: rdy_n = 1'b1;
                  endcase
                end
              else begin
                rdy_n = rdy_q_n;
              end
            end
          // Otherwise rdy_n is de_asserted
          else
            rdy_n = 1'b1;
        end
    end

  // Used in determining the value of rdy_q_n.  This is used
  // to de-assert rdy_n if it has already been seen in a previous
  // clock cycle.
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        rdy_q_n <= #TCQ 1'b1;
      else if (rx_cs == RX_R0 | rx_cs == RX_R1 | rx_cs ==REG_RX_IDLE)
        rdy_q_n <= #TCQ 1'b1;
      else if (!rdy_q_n)
        rdy_q_n <= #TCQ 1'b0;
      else
        rdy_q_n <= #TCQ rdy_n;
    end

  // Register selects to be used in finding the falling edge.  Since
  // the live select lines go away for reads, we use a registered version
  // for read transaction.  These select lines change whenever there is a
  // falling edge on one of them.  The select are mutually exclusive

  // Simple register
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        begin
          mgt_phy_sel_n <= #TCQ 1'b1;
          mgt_log_sel_n <= #TCQ 1'b1;
          mgt_usr_sel_n <= #TCQ 1'b1;
        end
      else
        begin
          if ((rx_cs == RX_W0_WAIT || rx_cs == RX_W1_WAIT))
          begin
             if (~mgt_phy_rdy_n)
                mgt_phy_sel_n <= #TCQ 1'b1;
             else
                mgt_phy_sel_n <= #TCQ mgt_phy_sel_n_wire;

             if (~mgt_log_rdy_n)
                mgt_log_sel_n <= #TCQ 1'b1;
             else
                mgt_log_sel_n <= #TCQ mgt_log_sel_n_wire;

             if (~mgt_usr_rdy_n)
                mgt_usr_sel_n <= #TCQ 1'b1;
             else
                mgt_usr_sel_n <= #TCQ mgt_usr_sel_n_wire;
          end
          else
          begin
             mgt_phy_sel_n <= #TCQ mgt_phy_sel_n_wire;
             mgt_log_sel_n <= #TCQ mgt_log_sel_n_wire;
             mgt_usr_sel_n <= #TCQ mgt_usr_sel_n_wire;
          end
        end
    end

  // Falling edge logic
  assign mgt_phy_sel_fall = !mgt_phy_sel_n_wire & mgt_phy_sel_n;
  assign mgt_log_sel_fall = !mgt_log_sel_n_wire & mgt_log_sel_n;
  assign mgt_usr_sel_fall = !mgt_usr_sel_n_wire & mgt_usr_sel_n;

  assign sel_fell = mgt_phy_sel_fall | mgt_log_sel_fall | mgt_usr_sel_fall;


  always@(posedge clk or negedge reset_n) begin
    if (!reset_n)
      sel_fell_q <= #TCQ 1'b0;
    else
      sel_fell_q <= #TCQ sel_fell;
  end

  // Selecting which select line to use
  always@(posedge clk or negedge reset_n) begin
    if (!reset_n)
      sel_bus <= #TCQ 3'b111;
    else if (sel_fell)
      sel_bus <= #TCQ {mgt_phy_sel_n_wire, mgt_log_sel_n_wire, mgt_usr_sel_n_wire};

  end

  always@(posedge clk or negedge reset_n) begin
    if (!reset_n)
      sel_bus_q <= #TCQ 3'b111;
    else if (sel_fell_q)
      sel_bus_q <= #TCQ sel_bus;
    else if (!rdy_n)
      sel_bus_q <= #TCQ 3'b111;
  end

  //------------------------------------------------------------------------------
  // MRESP status registers

  // Used to determine whether or not to assert mresp_sof.
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        first_packet <= #TCQ 1'b0;
      else if (tx_cs == TX_IDLE)
        first_packet <= #TCQ 1'b1;
      else if (tx_cs == TX_SEND_PACKET & !mresp_rdy_n & rx_cs != RX_WAIT)
      // Can wait for the transition since it is gated w/ SEND_PACKET state
        first_packet <= #TCQ 1'b0;
    end

  //------------------------------------------------------------------------------
  // MRESP Control Signals

  // SOF generation - Assert SOF if it is a single cycle status packet or it is
  // a read and it is the first quad word of data
  always@(tx_cs or first_packet)
    begin
      if (tx_cs == TX_STATUS_RESP)
        mresp_sof_n = 1'b0;
      else if (tx_cs == TX_SEND_PACKET & first_packet)
        mresp_sof_n = 1'b0;
      else
        mresp_sof_n = 1'b1;
    end

  // EOF generation - The receiver is done receiving data and this is the last
  // packet to be sent
  always@(tx_cs or rx_cs)
    begin
      if (tx_cs == TX_SEND_PACKET & rx_cs == RX_WAIT)
        mresp_eof_n = 1'b0;
      else if (tx_cs == TX_STATUS_RESP & rx_cs == RX_WAIT)
        mresp_eof_n = 1'b0;
      else
        mresp_eof_n = 1'b1;
    end

  // VLD generation - There is valid data on the mresp port.
  always@(tx_cs)
    begin
      if (tx_cs == TX_SEND_PACKET | tx_cs == TX_STATUS_RESP)
        mresp_vld_n = 1'b0;
      else
        mresp_vld_n = 1'b1;
    end

  // FTYPE, TTYPE and STATUS generation
  // This logic determines the type of ftype, ttype and status to put on
  // the mresp port.  What is placed on these ports depends on if there
  // were errors detected or not.

  always @(req_timeout or command_error or mreq_ftype_q or mreq_ttype_q)
    begin
      if (req_timeout | command_error)
        begin
          casex ({mreq_ftype_q, mreq_ttype_q})

            8'h2_4: begin                           // NREAD
              mresp_ftype        = 4'hD;            // response class
              mresp_ttype        = 4'h8;            // data payload
              mresp_status       = 4'h7;
            end

            8'h5_5: begin                           // NWRITE_R
              mresp_ftype        = 4'hD;            // response class
              mresp_ttype        = 4'h0;            // no data payload
              mresp_status       = 4'h7;
            end

            8'h8_0: begin                           // MAINT_READ
              mresp_ftype        = 4'h8;      // maintenance class
              mresp_ttype        = 4'h2;            // read response
              mresp_status       = 4'h7;
            end

            8'h8_1: begin                           // MAINT_WRITE
              mresp_ftype        = 4'h8;      // maintenance class
              mresp_ttype        = 4'h3;            // write response
              mresp_status       = 4'h7;
            end

            8'h5_4,  8'h6_x: begin                   // WRITE, SWRITE
              mresp_ftype        = 4'h8;
              mresp_ttype        = 4'h3;
              mresp_status       = 4'h7;
            end

            // Reserved combination
            default: begin
              mresp_ftype        = 4'hD;            // response class
              mresp_ttype        = 4'h0;            // no data payload
              mresp_status       = 4'h7;            // ERROR
            end

          endcase
        end
      else
        begin
          mresp_status       = 4'h0;
          casex ({mreq_ftype_q, mreq_ttype_q})

            8'h2_4: begin                            // NREAD
              mresp_ftype        = 4'hD;            // response class
              mresp_ttype        = 4'h8;            // data payload
            end

            8'h5_5: begin                           // NWRITE_R
              mresp_ftype        = 4'hD;            // response class
              mresp_ttype        = 4'h0;            // no data payload
            end

            8'h8_0: begin                           // MAINT_READ
              mresp_ftype        = 4'h8;            // maintenance class
              mresp_ttype        = 4'h2;            // read response
            end

            8'h8_1: begin                           // MAINT_WRITE
              mresp_ftype        = 4'h8;            // maintenance class
              mresp_ttype        = 4'h3;            // write response
            end

            8'h5_4,  8'h6_x: begin                   // WRITE, SWRITE
              mresp_ftype        = 4'h8;
              mresp_ttype        = 4'h3;
            end

            // Reserved combination
            default: begin
              mresp_ftype        = 4'hD;            // response class
              mresp_ttype        = 4'h0;            // no data payload
            end

          endcase
        end
    end

  //------------------------------------------------------------------------------
  // MRESP Data signals

  // This logic muxes the correct data to be stored from a read transaction
  always @(sel_bus_q or mgt_di_phy or mgt_di_usr or mgt_di_log)
    begin
      case (sel_bus_q)
        3'b011: mgt_rx_data = mgt_di_phy;
        3'b101: mgt_rx_data = mgt_di_log;
        3'b110: mgt_rx_data = mgt_di_usr;
        default: mgt_rx_data = 32'hx;
      endcase
    end

  // This logic fills the upper and lower dword with the
  // correct data.
  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        mresp_data <= #TCQ 64'h0;
      else if (tx_cs == TX_GET_D0)
        mresp_data[0:31] <= #TCQ mgt_rx_data;
      else if (tx_cs == TX_GET_D1)
        mresp_data[32:63] <= #TCQ mgt_rx_data;
    end

  //------------------------------------------------------------------------------
  // Response Type Decode

  // This logic determines if the response should be with or without data,
  // or if there is no need for a response at all
  always @(mreq_ftype_q or mreq_ttype_q)
    begin
      casex ({mreq_ftype_q, mreq_ttype_q})

            8'h2_4: begin                           // NREAD
              resp_w_data  = 1'b1;
              resp_wo_data = 1'b0;
            end

            8'h5_5: begin                           // NWRITE_R
              resp_w_data  = 1'b0;
              resp_wo_data = 1'b1;
            end

            8'h8_0: begin                           // MAINT_READ
              resp_w_data  = 1'b1;
              resp_wo_data = 1'b0;
            end

            8'h8_1: begin                           // MAINT_WRITE
              resp_w_data  = 1'b0;
              resp_wo_data = 1'b1;
            end

            8'h5_4,  8'h6_x: begin                   // WRITE, SWRITE
              resp_w_data  = 1'b0;
              resp_wo_data = 1'b0;
            end

            // Reserved combination
            default: begin
              resp_w_data  = 1'b0;
              resp_wo_data = 1'b0;
            end

      endcase
    end

  //------------------------------------------------------------------------------
  // Packet type decode

  // This logic determines if the packet is a read or a write depending
  // on the ftype and ttype.  Unknown packet ftypes cause an error
  // to be signaled.
  always @(mreq_ftype_q or mreq_ttype_q)
    begin

      casex ({mreq_ftype_q, mreq_ttype_q})
        8'h2_4, 8'h8_0: begin
          command_error   = 0;
          read_req   = 1;
        end
        8'h5_4, 8'h5_5, 8'h6_x, 8'h8_1: begin
          command_error   = 0;
          read_req   = 0;
        end
        // Default is a read so as not to corrupt any data
        default: begin
          command_error   = 1;
          read_req   = 1;
        end
      endcase

    end


  //------------------------------------------------------------------------------
  // Timeout counter

  // If an address space is addressed that does not exist, a response
  // will never happen.  Timeout expires when this happens.
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n)
      time_out_cntr <= #TCQ 6'h0;
    // Read discard or write discard or idle state
    else if (rx_ns == REG_RX_IDLE | !rdy_n)
      time_out_cntr <= #TCQ 6'h0;
    else 
      time_out_cntr <= #TCQ time_out_cntr + 1'b1;
    end

  assign req_timeout = time_out_cntr[5];

  //------------------------------------------------------------------------------
  // Decode address mapping function
  //
  // This function determines if one of the bar spaces is hit.  It assumes that
  // the PHY is mapped to offset 0x100.  If this is not the case, this function
  // will need to be changed to the appropriate offset.
  //
  // If the user space is enabled and no configuration address is hit, the user
  // space is hit.

  function [0:2] HIT;
  input [0:20] addr;    // offset given in dwords
    begin
      casex (addr[0:19])

        //  0000 0000 0011 1111 1111    addr tens
        //  0123 4567 8901 2345 6789    addr units
        20'b0000_0000_0000_0000_????: HIT  = 3'b011; // LOG (CAR, CSR) & TRP (CSR)

        20'b0000_0000_0000_0001_????,
        20'b0000_0000_0000_0010_00??: HIT = 3'b101; // PHY mapped to 0x100

        default:
          begin
            if (|addr[0:7] & RM_USER_SPACE_MAPPED)
              HIT = 3'b110; // USER
            else
              HIT = 3'b111; // no hit
          end
      endcase
    end
  endfunction


endmodule
