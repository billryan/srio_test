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
// File name:    ireq_generator.v
// Rev:          5.4
// Description:  This is the Initiator Request Generator module of the
//               User Design. It is intended to aid in the generation of
//               IREQ packets. It interfaces to the Tickler through Local
//               Link ready and valid control signals. The Tickler provides
//               header information (ftype, ttype, prio, address, etc...)
//               and data size to the IREQ Generator. The IREQ Generator
//               will then create the requested IREQ packet for the LOGIO.
//               It will handle the generation of the SOF, EOF, and VLD
//               control signals, populate the frame with the requested
//               amount of data, and increment the Transaction ID (TID).
// 
//               Data is pulled either from the Initiator BRAM containing
//               predefined data patterns or from the external Bypass Port.
//               Pulling data from the Initiator BRAM allows test data to
//               be easy transmitted and verified where applicable. The
//               Initiator BRAM is addressed using the address field of the
//               header. The Bypass Port allows for custom data to be sent,
//               specifically for Maintenance transactions.
// 
//               The IREQ Generator passes information to the TID BRAM,
//               which will be used by the Initiator Response (IRESP)
//               Handler, for expected packet responses. The IRESP Handler
//               will use this information to verify incoming responses.
//               All outgoing frames, not just ones will expected responses,
//               will be written to the History BRAM to provide a record
//               of previous transactions.
// 
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module ireq_generator #( parameter TCQ = 100 )
  (
  // System
  input                 lnk_clk,          // Link clock
  input                 lnk_reset_n,      // Active low reset

  // Logical Layer Core
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

  // TID BRAM
  input                 rram_rdy,         // Indicates that the TID BRAM is ready following reset
  output      [0:8]     g_rram_addra,     // TID BRAM Port A address
  input       [0:20]    rram_doa,         // TID BRAM Port A read data
  output      [0:20]    g_rram_dia,       // TID BRAM Port A write data
  output                g_rram_wea,       // TID BRAM Port A write enable

  // Initiator BRAM
  input       [0:63]    iram_doa,         // Initiator BRAM Port A read data
  output      [0:9]     g_iram_addra,     // Initiator BRAM Port A address

  // History BRAM
  output      [0:8]     g_hist_addra,     // History BRAM Port A write address
  output                g_hist_wea,       // History BRAM Port A write enable
  output      [0:35]    g_hist_dia,       // History BRAM Port A write data

  // Tickler
  input                 igen_vld,         // New packet valid indication from Tickler
  output reg            igen_rdy,         // Ready indication from IREQ Generator
  input       [0:1]     igen_stalls,      // Number of cycles to stall b2b packets at IREQ
  input       [0:63]    igen_bypass_data, // Data from Bypass Port
  input                 igen_bypass_en,   // Enable to use Bypass Port for data
  input                 igen_bypass_vld,  // Indicates valid data on Bypass Data Port
  output reg            igen_bypass_rdy,  // Ready signal from IREQ Generator to Bypass Port
  input       [0:8]     igen_size,        // Number of bytes to transmit
  input       [0:33]    igen_addr,        // Address
  input       [0:3]     igen_ftype,       // Format Type
  input       [0:3]     igen_ttype,       // Transaction Type
  input       [0:1]     igen_prio,        // Priority
  input                 igen_crf,         // Critical Request Flow
  input       [0:7]     igen_dest_id,     // Destination ID
  input       [0:7]     igen_hopcount,    // Hopcount
  input                 igen_local,       // Local
  input       [0:15]    igen_db_info,     // Doorbell Info
  input       [0:3]     igen_msglen,      // Message Length
  input       [0:1]     igen_letter,      // Letter
  input       [0:1]     igen_mbox,        // Mailbox
  input       [0:3]     igen_msgseg,      // Message Segment / xmbox
  output      [0:3]     g_error,          // Error indicators from IREQ Generator
  input                 h_error,          // Indicates IRESP Handler is in Error
  input       [0:7]     error_enable,     // Enable error checking
  input       [0:3]     igen_error        // User error conditions to IREQ Generator
  );

  // Parameters
  localparam  IGEN_IDLE   = 4'b0001;
  localparam  IGEN_CNTL1  = 4'b0010;
  localparam  IGEN_CNTL2  = 4'b0100;
  localparam  IGEN_ERR    = 4'b1000;


  // Internal wire and register declarations
  wire          igen_sof;
  wire          ireq_no_data;
  wire          bypass_data_valid;
  wire  [0:5]   pkt_dwords;
  wire  [0:5]   remaining_dwords;
  wire          one_dword_left;
  wire          single_cycle_pkt;
  wire  [0:2]   offset;
  wire  [0:2]   sub_dword_size;
  wire  [0:9]   iram_offset;
  wire          data_valid;
  wire  [0:63]  igen_data;
  wire          igen_logio_dsc;
  wire  [0:189] fifo_wr_data;
  wire  [0:189] fifo_rd_data;
  wire          fifo_af;
  wire          advance;
  wire          stall;
  wire          ireq_rdy_stall;
  wire          ireq_fifo_empty;
  wire          no_expected_resp;
  wire          ignore_data;
  wire  [0:9]   tid_iram_offset;

  reg   [0:8]   q_size, qq_size;
  reg   [0:33]  q_addr, qq_addr;
  reg   [0:3]   q_ftype, qq_ftype;
  reg   [0:3]   q_ttype, qq_ttype;
  reg   [0:1]   q_prio, qq_prio;
  reg           q_crf, qq_crf;
  reg   [0:7]   q_dest_id, qq_dest_id;
  reg   [0:7]   q_hopcount, qq_hopcount;
  reg           q_local, qq_local;
  reg   [0:15]  q_db_info, qq_db_info;
  reg   [0:3]   q_msglen, qq_msglen;
  reg   [0:1]   q_letter, qq_letter;
  reg   [0:1]   q_mbox, qq_mbox;
  reg   [0:3]   q_msgseg, qq_msgseg;
  reg           q_bypass_en;
  reg   [0:63]  q_bypass_data;
  reg   [0:5]   dec_dwords;
  reg   [0:7]   byte_en_n;
  reg   [0:9]   q_iram_addr_inc;
  reg   [0:3]   igen_state;
  reg   [0:3]   igen_next_state;
  reg           igen_logio_sof, q_igen_logio_sof;
  reg           igen_logio_eof, q_igen_logio_eof;
  reg           igen_logio_vld, q_igen_logio_vld;
  reg           d_igen_rdy;
  reg   [0:7]   ireq_logio_tid, q_ireq_logio_tid;
  reg           check_rram;
  reg           existing_entry;
  reg   [0:1]   stall_cnt;
  reg           global_error;
  reg           no_resp_error;


  // The start of a new packet must be determined so that header inputs will
  // not be updated on additional data beats. Start of frame (SOF) will only
  // be generated if valid is asserted from the Tickler and the IREQ Generator
  // is ready.
  assign igen_sof = igen_vld & igen_rdy;

  // The header inputs from the Tickler are gated with igen_sof.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) begin
      q_size      <= #TCQ 9'b0;
      q_addr      <= #TCQ 34'b0;
      q_ftype     <= #TCQ 4'b0;
      q_ttype     <= #TCQ 4'b0;
      q_prio      <= #TCQ 2'b0;
      q_crf       <= #TCQ 1'b0;
      q_dest_id   <= #TCQ 8'b0;
      q_hopcount  <= #TCQ 8'b0;
      q_local     <= #TCQ 1'b0;
      q_db_info   <= #TCQ 16'b0;
      q_msglen    <= #TCQ 4'b0;
      q_letter    <= #TCQ 2'b0;
      q_mbox      <= #TCQ 2'b0;
      q_msgseg    <= #TCQ 4'b0;
    end
    else if (igen_sof) begin
      q_size      <= #TCQ igen_size;
      q_addr      <= #TCQ igen_addr;
      q_ftype     <= #TCQ igen_ftype;
      q_ttype     <= #TCQ igen_ttype;
      q_prio      <= #TCQ igen_prio;
      q_crf       <= #TCQ igen_crf;
      q_dest_id   <= #TCQ igen_dest_id;
      q_hopcount  <= #TCQ igen_hopcount;
      q_local     <= #TCQ igen_local;
      q_db_info   <= #TCQ igen_db_info;
      q_msglen    <= #TCQ igen_msglen;
      q_letter    <= #TCQ igen_letter;
      q_mbox      <= #TCQ igen_mbox;
      q_msgseg    <= #TCQ igen_msgseg;
    end

  // It will be necessary to determine which transactions contain data and which
  // contain no data. The transactions that do not contain data are Reads,
  // Maintenance Read Reqeusts, and Doorbells.
  assign ireq_no_data = (q_ftype == 4'h2) ||
                        ((q_ftype == 4'h8) & (q_ttype == 4'h0)) ||
                        (q_ftype == 4'hA);


  // The Bypass port exists to allow the user to transmit other data than what
  // exists in the Initiator BRAM. Data is pulled from the Bypass Data port,
  // rather than the Initiator BRAM, when the Bypass Enable port is asserted.
  // This enable is registered on an SOF so that changing it in the middle of
  // a packet has no affect. Consequently, data must be derived completely from
  // the Initiator BRAM or the Bypass port for any given packet.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_bypass_en <= #TCQ 1'b0;
    else if (igen_sof)
      q_bypass_en <= #TCQ igen_bypass_en;

  // The Bypass Data port uses local link control signals, valid and ready,
  // for its interface. Data is only read in when both valid and ready are
  // asserted and the Bypass port is enabled.
  assign bypass_data_valid = igen_bypass_vld & igen_bypass_rdy;

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_bypass_data <= #TCQ 64'b0;
    else if (q_bypass_en & bypass_data_valid)
      q_bypass_data <= #TCQ igen_bypass_data;



  // The number of dwords left to transmit must be calculated so that the
  // IRAM address can be incremented accordingly or the appropriate amount
  // of data can be read in from the Bypass port. There are two parts to the
  // generation of the remaining_dwords. First, if it is a new packet, new_pkt,
  // then the number of dwords is determined from q_size. The number of dwords
  // in the packet is equal to the 6 most significant bits of q_size plus an
  // additional dword for any partial dwords. This value is not registered so
  // that it can line up with the first piece of data. The second part of the
  // dword calculation is to decrement the number of dwords by one each time a
  // new piece of valid data is put into the pipe. When reading from the IRAM
  // or Bypass port, it is decremented whenever there are still words to be
  // read, valid data is present and the pipe can accept it.
  assign pkt_dwords = q_size[0:5] + |q_size[6:8];

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      dec_dwords  <= #TCQ 6'b0;
    else if (remaining_dwords == 0)
      dec_dwords  <= #TCQ 6'b0;
    else if (data_valid & advance)
      dec_dwords  <= #TCQ remaining_dwords - 1'b1;

  assign remaining_dwords = igen_logio_sof ? pkt_dwords : dec_dwords;

  assign one_dword_left   = (remaining_dwords == 1);

  // The control signal state machine needs to know if the current packet
  // requires more than one cycle to input it to the LOGIO. A single cycle
  // packet would be any packet type without data or a packet with 8 or less
  // bytes of data.
  assign single_cycle_pkt = ~(|q_size[0:5]) || (q_size == 9'b00001000) || ireq_no_data;


  // The byte offset portion of the incoming address, igen_addr[31:33],
  // indicates which byte the data begins at. This is used along with the
  // least three significant bits of the size to calculate the byte enables.
  // Byte enables are only valid for sub dword packets.
  assign offset         = q_addr[31:33];
  assign sub_dword_size = q_size[6:8];

  always@*
    casex ({sub_dword_size, offset})
      // Full dwords
      6'b000_???:  byte_en_n = 8'b0000_0000;
      // 1-byte sub dword
      6'b001_111:  byte_en_n = 8'b1111_1110;
      6'b001_110:  byte_en_n = 8'b1111_1101;
      6'b001_101:  byte_en_n = 8'b1111_1011;
      6'b001_100:  byte_en_n = 8'b1111_0111;
      6'b001_011:  byte_en_n = 8'b1110_1111;
      6'b001_010:  byte_en_n = 8'b1101_1111;
      6'b001_001:  byte_en_n = 8'b1011_1111;
      6'b001_000:  byte_en_n = 8'b0111_1111;
      // 2-byte sub dword
      6'b010_11?:  byte_en_n = 8'b1111_1100;
      6'b010_10?:  byte_en_n = 8'b1111_0011;
      6'b010_01?:  byte_en_n = 8'b1100_1111;
      6'b010_00?:  byte_en_n = 8'b0011_1111;
      // 3-byte sub dword
      6'b011_1??:  byte_en_n = 8'b1111_1000;
      6'b011_0??:  byte_en_n = 8'b0001_1111;
      // 4-byte sub dword
      6'b100_1??:  byte_en_n = 8'b1111_0000;
      6'b100_0??:  byte_en_n = 8'b0000_1111;
      // 5-byte sub dword
      6'b101_01?:  byte_en_n = 8'b1110_0000;
      6'b101_00?:  byte_en_n = 8'b0000_0111;
      // 6-byte sub dword
      6'b110_01?:  byte_en_n = 8'b1100_0000;
      6'b110_00?:  byte_en_n = 8'b0000_0011;
      // 7-byte sub dword
      6'b111_??1:  byte_en_n = 8'b1000_0000;
      6'b111_??0:  byte_en_n = 8'b0000_0001;
      // Default
      default:     byte_en_n = 8'b0000_0000;
    endcase



  // The offset of the Initiator BRAM will always be derived from q_addr[21:30].
  // These bits are used for all packet types to address the Initiator BRAM except
  // for Doorbell transactions. Doorbell packets will use the db_info port to
  // populate the doorbell info field.
  assign iram_offset  = q_addr[21:30];

  // The Initiator BRAM will initially be indexed with the requested address on
  // an igen_sof from the state machine, otherwise it will be incremented if the
  // FIFO is ready. It will continue to increment if the pipe is ready even if
  // the number of words have been transmitted as it will not harm anything.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_iram_addr_inc <= #TCQ 10'b0;
    else if (igen_logio_sof)
      q_iram_addr_inc <= #TCQ iram_offset + 1'b1;
    else if (advance)
      q_iram_addr_inc <= #TCQ q_iram_addr_inc + 1'b1;

  assign g_iram_addra = igen_logio_sof ? iram_offset : q_iram_addr_inc;


  // The data_valid indicator varies depending on if the data is generated from
  // the Initiator BRAM or from the Bypass Port. If it is generated from the
  // Initiator BRAM, the data is always valid because data is always read from
  // the BRAM as long as the pipe isn?t stalled. Data is only valid from the
  // Bypass Port when the IREQ Gen is ready and there is valid data preset on
  // the interface.
  assign data_valid = ~(q_bypass_en & ~bypass_data_valid);

  // The IREQ Generator data will either be the registered bypass data or the
  // data directly out of the Initiator BRAM.
  assign igen_data  = q_bypass_en ? q_bypass_data : iram_doa;



  // Register the ready signal from the state machine to the Tickler interface.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      igen_rdy <= #TCQ 1'b0;
    else
      igen_rdy <= #TCQ d_igen_rdy;

  // The Control Signal State Machine is used to generate the SOF and EOF control
  // signals that will eventually drive the LOGIO IREQ interface. It also generates
  // the RDY signals for the Tickler and Bypass port interfaces.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      igen_state <= #TCQ IGEN_IDLE;
    else
      igen_state <= #TCQ igen_next_state;


  always @*
    casex (igen_state)
      IGEN_IDLE: begin
        // Current State Outputs
        igen_logio_sof  = 1'b0;
        igen_logio_eof  = 1'b0;
        igen_logio_vld  = 1'b0;
        igen_bypass_rdy = 1'b0;
        // Next State Outputs
        casex ({global_error, advance, igen_sof})
          3'b000:   begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_IDLE;
                    end
          3'b001:   begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL1;
                    end
          3'b010:   begin
                    d_igen_rdy      = 1'b1;
                    igen_next_state = IGEN_IDLE;
                    end
          3'b011:   begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL1;
                    end
          3'b1??:   begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_ERR;
                                                  end
          default:  begin
                    d_igen_rdy      = 1'bx;
                    igen_next_state = 4'bxxxx;
                    end
        endcase
        end

      IGEN_CNTL1: begin
        // Current State Outputs
        igen_logio_sof  = data_valid;
        igen_logio_eof  = data_valid & single_cycle_pkt;
        igen_logio_vld  = data_valid & advance;
        igen_bypass_rdy = advance;
        // Next State Outputs
        casex ({global_error, advance, data_valid, single_cycle_pkt})
          4'b00??:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL1;
                    end
          4'b010?:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL1;
                    end
          4'b0110:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL2;
                    end
          4'b0111:  begin
                    d_igen_rdy      = 1'b1;
                    igen_next_state = IGEN_IDLE;
                    end
          4'b1???:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_ERR;
                    end
          default:  begin
                    d_igen_rdy      = 1'bx;
                    igen_next_state = 4'bxxxx;
                    end
        endcase
        end

      IGEN_CNTL2: begin
        // Current State Outputs
        igen_logio_sof  = 1'b0;
        igen_logio_eof  = one_dword_left & data_valid;
        igen_logio_vld  = data_valid & advance;
        igen_bypass_rdy = advance;
        // Next State Outputs
        casex ({global_error, advance, data_valid, one_dword_left})
          4'b00??:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL2;
                                                  end
          4'b010?:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL2;
                                                  end
          4'b0110:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_CNTL2;
                    end
          4'b0111:  begin
                    d_igen_rdy      = 1'b1;
                    igen_next_state = IGEN_IDLE;
                    end
          4'b1???:  begin
                    d_igen_rdy      = 1'b0;
                    igen_next_state = IGEN_ERR;
                    end
          default:  begin
                    d_igen_rdy      = 1'bx;
                    igen_next_state = 4'bxxxx;
                    end
        endcase
        end

      IGEN_ERR: begin
        // Current State Outputs
        igen_logio_sof  = 1'b0;
        igen_logio_eof  = 1'b0;
        igen_logio_vld  = 1'b0;
        igen_bypass_rdy = 1'b0;
        // Next State Outputs
        d_igen_rdy      = 1'b0;
        igen_next_state = IGEN_ERR;
        end

      default: begin
        // Current State Outputs
        igen_logio_sof  = 1'bx;
        igen_logio_eof  = 1'bx;
        igen_logio_vld  = 1'bx;
        igen_bypass_rdy = 1'bx;
        // Next State Outputs
        d_igen_rdy      = 1'bx;
        igen_next_state = 4'bxxxx;
        end

  endcase


  // The TID will be generated for each packet generated. The TID will
  // increment whenever there is a EOF and the pipe is ready.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      ireq_logio_tid  <= #TCQ 8'b0;
    else if (igen_logio_eof & advance)
      ireq_logio_tid  <= #TCQ ireq_logio_tid + 1'b1;

  // The header and control inputs to the LOGIO FIFO need to be registered
  // again so that they are aligned with the data which has an
  // extra cycle of latency.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n) begin
      qq_size           <= #TCQ 9'b0;
      qq_addr           <= #TCQ 34'b0;
      qq_ftype          <= #TCQ 4'b0;
      qq_ttype          <= #TCQ 4'b0;
      qq_prio           <= #TCQ 2'b0;
      qq_crf            <= #TCQ 1'b0;
      qq_dest_id        <= #TCQ 8'b0;
      qq_hopcount       <= #TCQ 8'b0;
      qq_local          <= #TCQ 1'b0;
      qq_db_info        <= #TCQ 16'b0;
      qq_msglen         <= #TCQ 4'b0;
      qq_letter         <= #TCQ 2'b0;
      qq_mbox           <= #TCQ 2'b0;
      qq_msgseg         <= #TCQ 4'b0;
      q_igen_logio_sof  <= #TCQ 1'b0;
      q_igen_logio_eof  <= #TCQ 1'b0;
      q_ireq_logio_tid  <= #TCQ 8'b0;
    end
    else if (advance) begin
      qq_size           <= #TCQ q_size;
      qq_addr           <= #TCQ q_addr;
      qq_ftype          <= #TCQ q_ftype;
      qq_ttype          <= #TCQ q_ttype;
      qq_prio           <= #TCQ q_prio;
      qq_crf            <= #TCQ q_crf;
      qq_dest_id        <= #TCQ q_dest_id;
      qq_hopcount       <= #TCQ q_hopcount;
      qq_local          <= #TCQ q_local;
      qq_db_info        <= #TCQ q_db_info;
      qq_msglen         <= #TCQ q_msglen;
      qq_letter         <= #TCQ q_letter;
      qq_mbox           <= #TCQ q_mbox;
      qq_msgseg         <= #TCQ q_msgseg;
      q_igen_logio_sof  <= #TCQ igen_logio_sof;
      q_igen_logio_eof  <= #TCQ igen_logio_eof;
      q_ireq_logio_tid  <= #TCQ ireq_logio_tid;
    end

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      q_igen_logio_vld  <= #TCQ 1'b0;
    else
      q_igen_logio_vld  <= #TCQ igen_logio_vld;

  // A FIFO will placed in the data path between the IREQ Generator and the
  // LOGIO IREQ interface. It will store all of the IREQ interface inputs
  // except for ireq_vld_n. This will be derived from the empty signal of the
  // FIFO. The read enable will be derived from ireq_rdy_n. On the write side,
  // the igen_logio_vld will be used as the write enable and the almost full
  // flag will be used as the pipe advance indicator.

  assign igen_logio_dsc = 1'b0;

  assign fifo_wr_data =  {q_igen_logio_sof, // [0]
                          q_igen_logio_eof, // [1]
                          igen_logio_dsc,   // [2]
                          igen_data,        // [3:66]
                          qq_prio,          // [67:68]
                          qq_crf,           // [69]
                          qq_ftype,         // [70:73]
                          qq_ttype,         // [74:77]
                          q_ireq_logio_tid, // [78:85]
                          8'b0000_0000,     // [86:93] Reserved for 16-bit Device IDs
                          qq_dest_id,       // [94:101]
                          qq_addr,          // [102:135]
                          qq_hopcount,      // [136:143]
                          qq_size,          // [144:152]
                          byte_en_n,        // [153:160]
                          qq_local,         // [161]
                          qq_db_info,       // [162:177]
                          qq_msglen,        // [178:181]
                          qq_msgseg,        // [182:185]
                          qq_mbox,          // [186:187]
                          qq_letter};       // [188:189]

  fifo_16x190 logio_ireq_fifo (
    .din          (fifo_wr_data),
    .rd_clk       (lnk_clk),
    .rd_en        (ireq_rdy_stall),
    .rst          (~lnk_reset_n),
    .wr_clk       (lnk_clk),
    .wr_en        (q_igen_logio_vld),
    .almost_full  (fifo_af),
    .dout         (fifo_rd_data),
    .empty        (ireq_fifo_empty),
    .full         ( )
    );

  assign ireq_sof_n       = ~fifo_rd_data[0];
  assign ireq_eof_n       = ~fifo_rd_data[1];
  assign ireq_dsc_n       = ~fifo_rd_data[2];
  assign ireq_data        =  fifo_rd_data[3:66];
  assign ireq_prio        =  fifo_rd_data[67:68];
  assign ireq_crf         =  fifo_rd_data[69];
  assign ireq_ftype       =  fifo_rd_data[70:73];
  assign ireq_ttype       =  fifo_rd_data[74:77];
  assign ireq_tid         =  fifo_rd_data[78:85];
  assign ireq_dest_id     =  fifo_rd_data[94:101];
  assign ireq_addr        =  fifo_rd_data[102:135];
  assign ireq_hopcount    =  fifo_rd_data[136:143];
  assign ireq_byte_count  =  fifo_rd_data[144:152];
  assign ireq_byte_en_n   =  fifo_rd_data[153:160];
  assign ireq_local       =  fifo_rd_data[161];
  assign ireq_db_info     =  fifo_rd_data[162:177];
  assign ireq_msg_len     =  fifo_rd_data[178:181];
  assign ireq_msg_seg     =  fifo_rd_data[182:185];
  assign ireq_mbox        =  {fifo_rd_data[182:185], fifo_rd_data[186:187]};
  assign ireq_letter      =  fifo_rd_data[188:189];

  // The pipe is allowed to advance when the FIFO is not full and when the
  // TID BRAM is ready following a reset.
  assign advance = ~fifo_af & rram_rdy;

  // The interface between the IREQ FIFO and the LOGIO IREQ can be stalled
  // to control the rate of packet transmission. When stalled, the ready
  // from the LOGIO IREQ and the VLD to the LOGIO REQ are gated until the
  // stall is completed.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      stall_cnt <= #TCQ 2'b0;
    else if (stall_cnt == 0 )
      stall_cnt <= #TCQ igen_stalls;
    else if (~ireq_rdy_n)
      stall_cnt <= #TCQ stall_cnt - 1'b1;

  assign stall          = |stall_cnt;
  assign ireq_rdy_stall = ~stall & ~ireq_rdy_n;
  assign ireq_vld_n     = stall || ireq_fifo_empty;


  // When a new packet is passed to the LOGIO IREQ interface, the TID BRAM is
  // both read and written on EOF of a packet with an expected response. The
  // address that will be accessed is dependent on whether or not the packet
  // is a MESSAGE or not. If it is a MESSAGE, it will use the upper half of
  // the BRAM and will be indexed with ireq_letter, ireq_mbox, and ireq_msgseg.
  // If it is not a MESSAGE, the lower half of the BRAM will be used and indexed
  // with the ireq_tid.
  assign no_expected_resp = (ireq_ftype == 4'h5 && ireq_ttype != 4'h5) ||
                            (ireq_ftype == 4'h6);

  assign g_rram_wea   = ~ireq_eof_n & ~ireq_rdy_n & ~ireq_vld_n & ~no_expected_resp;

  assign g_rram_addra = (ireq_ftype == 4'hB) ?
                        {1'b1, ireq_letter, ireq_mbox[4:5], ireq_msg_seg} :
                        {1'b0, ireq_tid};

  // When accessed, the previous data will be read out while the new data is
  // written in. Bit 0 of the read out data indicates if the entry is valid or not.
  // If it is valid, that indicates an expected response was never received and
  // an error will be triggered. The data written in includes a valid indicator,
  // a bit that indicates if the data should be checked or not, the offset into the
  // Initiator BRAM, and the number of bytes in the packet. The data is checked
  // the cycle following the write which allows for the cycle of latency in the read.

  assign ignore_data     = (ireq_ftype == 4'h8);

  assign tid_iram_offset = ireq_addr[21:30];

  assign g_rram_dia      = {1'b1, ignore_data, tid_iram_offset, ireq_byte_count};

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      check_rram  <= #TCQ 1'b0;
    else
      check_rram  <= g_rram_wea;

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      existing_entry <= #TCQ 1'b0;
    else
      existing_entry <= #TCQ check_rram & rram_doa[0];



  // Outgoing transactions will be recorded into the History BRAM. They will
  // be written in on valid SOFs to the LOGIO IREQ interface.
  assign g_hist_wea = ~ireq_sof_n;

  // The IREQ Generator will use the lower half of the BRAM. It will be indexed
  // with the TID.
  assign g_hist_addra = {1'b0, ireq_tid};

  // The data written into the History BRAM will vary slightly depending on
  // whether or not the device is using 8-bit or 16-bit Device IDs but will
  // include a valid bit, ftype, ttype, byte_cnt, dest_id, and prio.
  assign g_hist_dia = {1'b1, ireq_ftype, ireq_ttype, ireq_byte_count, 8'b0, ireq_dest_id, ireq_prio};


  // There is one error scenario but there are possibilities for others. When
  // an error condition occurs, the corresponding g_error signal will be
  // permanently asserted and will stall the pipeline. User errors can also be
  // input to the IREQ Generator from the Tickler interface. Any of these will
  // also cause the pipe to stall.
  //
  // Bit 0: Indicates a universal error that gets asserted when any of the
  //        individual error conditions occur.
  // Bit 1: Indicates that the IREQ Generator wrote to a TID BRAM location that
  //        had a valid entry which was not read. This would indicate that an
  //        expected response was never received by the IRESP Handler.
  // Bit 2: Reserved for future use.
  // Bit 3: Reserved for future use.
  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      global_error <= #TCQ 1'b0;
    else if (global_error)
      global_error <= #TCQ 1'b1;
    else
      global_error <= #TCQ (error_enable[7] & g_error[0]) | h_error;

  always@(posedge lnk_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      no_resp_error <= #TCQ 1'b0;
    else
      no_resp_error <= #TCQ existing_entry;

  assign g_error[0] = (|g_error[1:3]) | (|igen_error);
  assign g_error[1] = no_resp_error;
  assign g_error[2] = 1'b0;
  assign g_error[3] = 1'b0;


endmodule
