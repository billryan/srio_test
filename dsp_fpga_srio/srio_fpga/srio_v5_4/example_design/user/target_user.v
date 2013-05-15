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
// File name:     target_user.v
// Rev:           5.4
// Description:   Target User Engine
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module target_user #( parameter TCQ = 100 )(
             // System Inputs
             sys_clk,
             lnk_reset_n,

             // Target Response
             tresp_prio_o,
             tresp_ftype_o,
             tresp_dest_id_o,
             tresp_ttype_o,
             tresp_status_o,
             tresp_tid_o,
             tresp_data_o,
             tresp_sof_n_o,
             tresp_eof_n_o,
             tresp_vld_n_o,
             tresp_dsc_n_o,
             tresp_rdy_n_i,
             tresp_stalls,
             tresp_msg_seg,
             tresp_mbox,
             tresp_letter,

             // Target Request
             treq_prio_i,
             treq_ftype_i,
             treq_dest_id_i,
             treq_src_id_i,
             treq_tid_i,
             treq_ttype_i,
             treq_addr_i,
             treq_byte_en_n_i,
             treq_byte_count_i,
             treq_data_i,
             treq_sof_n_i,
             treq_eof_n_i,
             treq_vld_n_i,
             treq_rdy_n_o,
             treq_db_info,
             treq_msg_len,
             treq_msg_seg,
             treq_mbox,
             treq_letter
             );

  // System Interface

   input sys_clk;
   input lnk_reset_n;

  // Target Request Interface
  // Data signals to application interface
   input [0:1]  treq_prio_i;
   input [0:3]  treq_ftype_i;
   input [0:7]  treq_dest_id_i;
   input [0:7]  treq_src_id_i;
   input [0:7]  treq_tid_i;
   input [0:3]  treq_ttype_i;
   input [0:33] treq_addr_i;
   input [0:7]  treq_byte_en_n_i;
   input [0:8]  treq_byte_count_i;
   input [0:63] treq_data_i;

  // Target Req control signals
   input        treq_sof_n_i;
   input        treq_eof_n_i;
   input        treq_vld_n_i;
   output       treq_rdy_n_o;

  // Target Response Interface
  // Data signals to application interface
   input [0:15] treq_db_info;
   input [0:3]  treq_msg_len;
   input [0:3]  treq_msg_seg;
   input [0:5]  treq_mbox;
   input [0:1]  treq_letter;

   output [0:1] tresp_prio_o;
   output [0:3] tresp_ftype_o;
   output [0:7] tresp_dest_id_o;
   output [0:3] tresp_ttype_o;
   output [0:3] tresp_status_o;
   output [0:7] tresp_tid_o;
   output [0:63] tresp_data_o;
   output [0:3] tresp_msg_seg;
   output [0:1] tresp_mbox;
   output [0:1] tresp_letter;

  // Target Response control signals
   output        tresp_sof_n_o;
   output        tresp_eof_n_o;
   output        tresp_vld_n_o;
   output        tresp_dsc_n_o;
   input         tresp_rdy_n_i;
   input  [0:1]  tresp_stalls;

   // Register and Wire declarations

   // Target Response

   reg [0:3]     tresp_ttype_o;
   reg [0:3]     tresp_status_o;
   reg           tresp_sof_n_o;
   reg           tresp_eof_n_o;
   wire          tresp_vld_n_o;
   reg           tresp_rdy_q_n;
   reg           tresp_sof_q_n;
   wire          tresp_dsc_n_o;
   wire [0:63]   tresp_data_o;

   // Target Request

   reg [0:1]     treq_prio_q;
   reg [0:3]     treq_ftype_q;
   reg [0:7]     treq_src_id_q;
   reg [0:7]     treq_tid_q;
   reg [0:3]     treq_ttype_q;
   reg [0:63]    treq_data_q;
   reg           treq_eof_q_n;
   wire          treq_rdy_n_o;

   reg [0:1]     treq_letter_q;
   reg [0:3]     treq_msg_seg_q;
   reg [0:1]     treq_mbox_q;

   // Additional Wire and Registers
   reg [0:63]    size;
   reg [0:21]    local_address;
   reg [0:5]     dword_count;
   reg [0:10]    state;
   reg [0:10]    next_state;
   reg [0:63]    shadow_do;
   reg [0:63]    next_do;
   reg           first_valid; 
   reg           init_addr_in_range, next_addr_in_range;

   wire          tu_error; //target user error
   wire          bram_select;
   wire          rd_en;
   wire          wr_en;
   wire          size_reg_sel;
   wire [0:63]   bram_do;

   reg   [0:1]   stall_cnt;
   wire          stall;
   reg           tresp_vld_n;
   reg           tresp_vld_q_n_o;

   // Supported address range
   // Get rid of the three MSBs
   localparam LAD_LOW  = 24'h00_0000 >> 3;
   localparam LAD_HIGH = 24'h00_0FF8 >> 3;

   // State Machine States
   `define IDLE          11'h100
   `define WRITE         11'h080
   `define DB_MSG        11'h200
   `define READ_DECODE   11'h040
   `define READ_SOF      11'h020
   `define READ_NORMAL   11'h010
   `define READ_EOF      11'h008
   `define READ_SINGLE   11'h004
   `define READ_PAUSE    11'h002
   `define WRITE_RESP    11'h001
   `define DB_MSG_RESP   11'h400

 // Misc

   assign        tu_error = 1'b0;

   //===========================================================================
   // SECTION:     BlockRAM  Implementation
   // OPERATION:   BlockRAM to store the incoming data or read data from
   //              for Read requests.
   //===========================================================================

  RAMB36SDP ram (
    .DO        (bram_do[0:63]),
    .DOP       (),
    .WRADDR    (local_address[13:21]),
    .RDADDR    (local_address[13:21]),
    .WRCLK     (sys_clk),
    .RDCLK     (sys_clk),
    .DI        (treq_data_q[0:63]),
    .DIP       (8'h0),
    .RDEN      (bram_select),
    .SSR       (!lnk_reset_n),
    .WE        (8'hFF),
    .WREN      (wr_en),
    .DBITERR   (),
    .ECCPARITY (),
    .SBITERR   (),
    .REGCE     ()
  );



   //==============================================================================
   // SECTION:     SIZE REGISTER Implementation
   // OPERATION:   Size Register that contains the size of the memory space.
   //              This is located at address 24'h10_2008.
   //==============================================================================


   // This register contains the size of the memory space
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          size <= #TCQ 64'h0000_0000_0010_0000;
        else if (size_reg_sel & wr_en)
          begin
             if (!treq_byte_en_n_i[4])
               size[32:39] <= #TCQ treq_data_q[32:39];
             if (!treq_byte_en_n_i[5])
               size[40:47] <= #TCQ treq_data_q[40:47];
             if (!treq_byte_en_n_i[6])
               size[48:55] <= #TCQ treq_data_q[48:55];
             if (!treq_byte_en_n_i[7])
               size[56:63] <= #TCQ treq_data_q[56:63];
          end
     end

   // Determine if read or write is to the Size Register
   assign   size_reg_sel = (local_address == (24'h10_2008 >> 3));

   //==============================================================================
   // SECTION:     TARGET REQUEST PORT Interface
   // OPERATION:   Interface to the Target Request port when incoming
   //              Read and Write packets.
   //==============================================================================

   // Register signals for easier timing
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          begin
             treq_prio_q   <= #TCQ 2'b0;
             treq_ftype_q  <= #TCQ 4'b0;
             treq_ttype_q  <= #TCQ 4'h0;
             treq_src_id_q  <= #TCQ 8'h0;
             treq_tid_q     <= #TCQ 8'h0;
             treq_data_q    <= #TCQ 64'h0;
             treq_letter_q  <= #TCQ 2'h0;
             treq_msg_seg_q <= #TCQ 4'h0;
             treq_mbox_q    <= #TCQ 2'b00;

             treq_eof_q_n  <= #TCQ 1'b1;
          end
        else if (!treq_vld_n_i & !treq_rdy_n_o)
          begin
             if (!treq_sof_n_i)
               begin
                  treq_prio_q    <= #TCQ treq_prio_i  ;
                  treq_ftype_q   <= #TCQ treq_ftype_i ;
                  treq_ttype_q   <= #TCQ treq_ttype_i ;
                  treq_src_id_q  <= #TCQ treq_src_id_i;
                  treq_tid_q     <= #TCQ treq_tid_i   ;
                  treq_letter_q  <= #TCQ treq_letter;
                  treq_msg_seg_q <= #TCQ treq_msg_seg;
                  treq_mbox_q    <= #TCQ treq_mbox[4:5];
               end
             treq_data_q   <= #TCQ treq_data_i;
             treq_eof_q_n  <= #TCQ treq_eof_n_i;
          end
     end

   // Packets may be received when in the idle state or when they are writes
   // Only accept data transfers in the WRITE or MSG states while in the middle of a
   // packet transfer
   assign treq_rdy_n_o = ~(state[2] | ((state[3] | state[1]) & treq_eof_q_n));

   // Capture the Dword size to be used in the state machine
   // This register contains the number of dwords to read or write
   // from the read or write command
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          dword_count <= #TCQ 6'h0;
        // Load the number of dwords to be transferred
        else if (rd_en & dword_count == 0)
          dword_count <= #TCQ 6'h0;
        else if (!treq_sof_n_i & !treq_vld_n_i & !treq_rdy_n_o)
          dword_count <= #TCQ treq_byte_count_i[0:5];
        // One less everytime a dword is transferred
        else if (wr_en | rd_en)
          dword_count <= #TCQ dword_count - 1'b1;
     end
   
   // stall on the tresp interface when given some number of cycles to stall
   // from the vio interface
   always@(posedge sys_clk or negedge lnk_reset_n)
    if (~lnk_reset_n)
      stall_cnt <= #TCQ 2'b0;
    else if (stall_cnt == 0)
      stall_cnt <= #TCQ tresp_stalls;
    else if (~tresp_vld_n)
      stall_cnt <= #TCQ stall_cnt - 1'b1;

   assign stall = |stall_cnt;

   assign tresp_vld_n_o = tresp_vld_n | stall; 
   
   //==============================================================================
   // SECTION:     TREQ/TRESP State Machine
   // OPERATION:   The following state machine controls the acceptance of
   //              packets on the TREQ port and intiates RESPONSE packets on
   //              the Target Response Port.
   //==============================================================================
   always @(state or treq_sof_n_i or treq_vld_n_i or treq_rdy_n_o
            or treq_ftype_i or treq_eof_q_n or dword_count or treq_ttype_q
            or tresp_rdy_n_i or treq_ftype_q or tresp_vld_n_o)
     begin
        case (state)

          // State:       IDLE
          // Purpose:     Decode incoming transfers on TREQ port as
          //              read or write.
          `IDLE:
           begin
               if (!treq_sof_n_i & !treq_vld_n_i & !treq_rdy_n_o &
                   ((treq_ftype_i == 4'h5) | (treq_ftype_i == 4'h6)))
                 next_state = `WRITE;
               else if (!treq_sof_n_i & !treq_vld_n_i & !treq_rdy_n_o &
                        ((treq_ftype_i == 4'hA) | (treq_ftype_i == 4'hB)))
                 next_state = `DB_MSG;
               else if (!treq_sof_n_i & !treq_vld_n_i & !treq_rdy_n_o &
                        (treq_ftype_i == 4'h2))
                 next_state = `READ_DECODE;
               else
                 next_state = `IDLE;
            end

          // State:       WRITE
          // Purpose:     Determine if packet ending or middle of packet.
          `WRITE:
            begin
               if ((!treq_eof_q_n) & (treq_ftype_q == 4'h5) & (treq_ttype_q == 4'h5))
                 next_state = `WRITE_RESP;
               else if (!treq_eof_q_n)
                 next_state = `IDLE;
               else
                 next_state = `WRITE;
            end

          //State:        DB_MSG
          // Purpose:     Determine if pkt ending or middle of packet.
          `DB_MSG:
            begin
               if ((!treq_eof_q_n) & ((treq_ftype_q == 4'hA) | (treq_ftype_q == 4'hB)))
                 next_state = `DB_MSG_RESP;
               else if (!treq_eof_q_n)
                 next_state = `IDLE;
               else
                 next_state = `DB_MSG;
            end

          // State:       READ_DECODE
          // Purpose:     Verify Ttype indicates a Read
          `READ_DECODE:
            begin
                if (treq_ttype_q != 4'h4)
                  next_state = `READ_SINGLE;
                else if (dword_count == 6'h1)
                  next_state = `READ_SINGLE;
                else
                  next_state = `READ_SOF;
            end

          // State:       READ_SOF
          // Purpose:     Determine length of Read and transition to
          //              correct space based on length.
          `READ_SOF:
            begin
               if ((!tresp_rdy_n_i & !tresp_vld_n_o) & (dword_count == 6'h1))
                 next_state = `READ_EOF;
               else if (!tresp_rdy_n_i & !tresp_vld_n_o)
                 next_state = `READ_NORMAL;
               else
                 next_state = `READ_SOF;
            end

          // State:       READ_NORMAL
          // Purpose:     Read Data from Buffer, if tresp pause or one dword remaining,
          //              transition to next state.
          `READ_NORMAL:
            begin
               if (tresp_rdy_n_i)
                 next_state = `READ_PAUSE;
               else if ((dword_count == 6'h1))
                 next_state = `READ_EOF;
               else
                 next_state = `READ_NORMAL;
            end

          // State:       READ_PAUSE
          // Purpose:     Pause reading data. If reading resumes transition to next
          //              state depending on if there is one dword or multiple dwords
          //              remaining left to read.
          //              transition to next state.
          `READ_PAUSE:
            begin
               if ((!tresp_rdy_n_i & !tresp_vld_n_o) & (dword_count == 1))
                 next_state = `READ_EOF;
               else if (!tresp_rdy_n_i & !tresp_vld_n_o)
                 next_state = `READ_NORMAL;
               else
                 next_state = `READ_PAUSE;
            end


          // State:       READ_EOF
          // Purpose:     Complete transmission of data on tresp port.
          //              Transition to next state based on new packets being
          //              received or tresp pause.
          `READ_EOF:
            begin
               if (!tresp_rdy_n_i & !tresp_vld_n_o)
                 next_state = `IDLE;
               else
                 next_state = `READ_EOF;
            end

          // State:       READ_SINGLE
          // Purpose:     Complete transmission of single dword read and
          //              transition back to IDLE or READ_SINGLE_P
          `READ_SINGLE:
            begin
               if (!tresp_rdy_n_i & !tresp_vld_n_o)
                 next_state = `IDLE;
               else
                 next_state = `READ_SINGLE;
            end

          // State:       WRITE_RESP
          // Purpose:     Generate Response packet on TRESP port for
          //              completed write transactions
         `WRITE_RESP:
            begin
               if (!tresp_rdy_n_i & !tresp_vld_n_o)
                 next_state = `IDLE;
               else
                 next_state = `WRITE_RESP;
            end

          // State:      DB_MSG_RESP
          // Purpose:    Generate Response packet on TRESP port for
          //             completed write transactions
          `DB_MSG_RESP:
            begin
               if (!tresp_rdy_n_i & !tresp_vld_n_o)
                 next_state = `IDLE;
               else
                 next_state = `DB_MSG_RESP;
              end
           default: 
            next_state = `IDLE;
        endcase
     end

   // State machine register
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          state <= #TCQ `IDLE;
        else
          state <= #TCQ next_state;
     end

   //==============================================================================
   // SECTION:     BLOCK RAM DATA READ and WRITE LOGIC
   // OPERATION:   The following logic enables reads and writes from/to the
   //              BlockRam based on the TREQ/TRESP state machine.
   //==============================================================================

   // Read enable logic
   assign   rd_en =  ((state == `READ_DECODE) |
                      ((!tresp_rdy_n_i & !tresp_vld_n_o) & ((state == `READ_SOF) |
                                         (state == `READ_NORMAL) |
                                         (state == `READ_PAUSE))));

   // Write enable logic
   assign   wr_en = (state == `WRITE);

   // This register captures the local address during
   // Any request transaction on the TREQ port.
   // The address is incremented for multi dword writes
   // or reads transactions.
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          local_address <= #TCQ 21'h0;
        else if (!treq_sof_n_i & !treq_vld_n_i & !treq_rdy_n_o)
          local_address <= #TCQ treq_addr_i[9:30];
        else if (rd_en | wr_en)
          local_address <= #TCQ local_address + 1'b1;
     end

   // BlockRAM enable logic.  Select the appropriate
   // BlockRAM based on the value of the local address.
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
       if (!lnk_reset_n) begin
          init_addr_in_range <= #TCQ 1'b0;
          next_addr_in_range <= #TCQ 1'b0;
       end else begin
          init_addr_in_range <= #TCQ (treq_addr_i[9:30] >= LAD_LOW) &
                                     (treq_addr_i[9:30] <= LAD_HIGH);
          next_addr_in_range <= #TCQ ((local_address+1'b1) >= LAD_LOW) &
                                     ((local_address+1'b1) <= LAD_HIGH);
       end
     end

   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          first_valid <= #TCQ 1'b0;
        else
          first_valid <= #TCQ !treq_sof_n_i & !treq_vld_n_i & !treq_rdy_n_o;
     end

   assign bram_select = first_valid ? init_addr_in_range :
                        ((rd_en | wr_en)  & next_addr_in_range);

 // Registered version for rising/falling edge
  always @(posedge sys_clk or negedge lnk_reset_n)
    begin
      if (!lnk_reset_n)
        tresp_rdy_q_n <= #TCQ 1'b1;
      else
        tresp_rdy_q_n <= #TCQ tresp_rdy_n_i;
    end


 // Registered version for rising/falling edge
  always @(posedge sys_clk or negedge lnk_reset_n)
    begin
      if (!lnk_reset_n)
        tresp_sof_q_n <= #TCQ 1'b1;
      else
        tresp_sof_q_n <= #TCQ tresp_sof_n_o;
    end


 // Registered version for rising/falling edge
  always @(posedge sys_clk or negedge lnk_reset_n)
    begin
      if (!lnk_reset_n)
        tresp_vld_q_n_o <= #TCQ 1'b1;
      else
        tresp_vld_q_n_o <= #TCQ tresp_vld_n_o;
    end

   // Create a shadow register to capture data
   // during pause states.
     always @(posedge sys_clk or negedge lnk_reset_n)
    begin
      if (!lnk_reset_n)
        shadow_do <= #TCQ 64'h0;
      else if ((!tresp_rdy_q_n & tresp_rdy_n_i) |
               (tresp_sof_q_n & !tresp_sof_n_o) |
               (!tresp_vld_q_n_o & tresp_vld_n_o & state != `READ_PAUSE))
        shadow_do <= #TCQ bram_do;
    end

   // Select the next data to be sent on the TRESP_PATH
   // If the block Ram is selected determine if the data
   // should be sent from the shadow register or from
   // directly from the BlockRAM.
   // Shadow register will be selected when there is:
   // a. a wait state inserted in the SOF cycle
   //     (detection of this is harder than the other
   //      two conditions because the falling edge of
   //      tresp_rdy_n_i can be occur with the falling
   //      edge of SOF, which is not a true wait state
   //     condition.  Wait state would only be found
   //     if there was a falling edge of tresp_rdy_n_i
   //     and the previous cycle SOF was asserted.)
   // b. a wait state during intermediate data transfer
   // c. a wait state during an EOF cycle
   always@(*) 
     begin
        if (bram_select)
          begin
             if (((state == `READ_PAUSE) & !tresp_rdy_n_i) |
                 (state == `READ_EOF & (!tresp_rdy_n_i & tresp_rdy_q_n | 
                    (tresp_vld_q_n_o & !tresp_vld_n_o & tresp_stalls != 0))) |
                 (state == `READ_SOF & ((!tresp_rdy_n_i & tresp_rdy_q_n &
                     !tresp_sof_q_n) | (tresp_vld_q_n_o & !tresp_vld_n_o & tresp_stalls != 0))) |
                 (state == `READ_SINGLE & !tresp_rdy_n_i & tresp_rdy_q_n &
                     !tresp_sof_q_n) | 
                 (state == `READ_NORMAL & tresp_vld_q_n_o & !tresp_vld_n_o)) 
               next_do = shadow_do;
             else
               next_do = bram_do;
          end
        else if (state == `READ_EOF & !tresp_rdy_n_i & tresp_rdy_q_n)
          next_do = shadow_do;
        else if (state == `READ_EOF | state == `READ_SINGLE)
          next_do = bram_do;
        else
          next_do = size;
     end

   //==============================================================================
   // SECTION:     TARGET RESPONSE SIGNAL GENERATION
   // OPERATION:   The following logic intiatiates a Response transfer on the
   //              TRESP port of the Logical Layer based on the incoming
   //              Request packet on the input TREQ port.
   //              Only NWRITE_R, NREAD and ATOMIC packets require RESPONSE packet
   //              generation. ATOMIC is currently not implmented.
   //==============================================================================

   // Response Packets have Request Priority + 1 by RapidIO Protocol Rules.
   assign tresp_prio_o = treq_prio_q + 1'b1;
   // Response packets are FType 13
   assign tresp_ftype_o = 4'hD;
   // Responses are returned to source of request
   assign tresp_dest_id_o = treq_src_id_q;

   // Responses must contain the correct transaction ID of the request packet
   assign tresp_tid_o = treq_tid_q;

   // Response Packets for Doorbell and Messaging should return the data from 
   // the inputed Request
   assign tresp_msg_seg = treq_msg_seg_q;
   assign tresp_mbox    = treq_mbox_q;
   assign tresp_letter  = treq_letter_q;


   // Response without Data bit
   // Set when packet response does not request
   // data such as a NWRITE_R request

   // TRESP SOF
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          tresp_sof_n_o <= #TCQ 1'b1;
        else
             case(state)
                  `READ_DECODE: tresp_sof_n_o <= #TCQ 1'b0;
                  `READ_SOF   : if (!tresp_rdy_n_i & !tresp_vld_n_o) tresp_sof_n_o <= #TCQ 1'b1;
                  `READ_SINGLE: if (!tresp_rdy_n_i & !tresp_vld_n_o) tresp_sof_n_o <= #TCQ 1'b1;
                  `WRITE      : if (!treq_eof_q_n & (treq_ftype_q == 4'h5)
                                    & (treq_ttype_q == 4'h5)) tresp_sof_n_o <= #TCQ 1'b0;
                  `DB_MSG     : if (!treq_eof_q_n & ((treq_ftype_q == 4'hA) | (treq_ftype_q == 4'hB))) 
                                    tresp_sof_n_o <= #TCQ 1'b0;
                  `WRITE_RESP : if (!tresp_rdy_n_i & !tresp_vld_n_o) tresp_sof_n_o <= #TCQ 1'b1;
                  `DB_MSG_RESP: if (!tresp_rdy_n_i & !tresp_vld_n_o) tresp_sof_n_o <= #TCQ 1'b1;
                  default:      tresp_sof_n_o <= #TCQ 1'b1;
               endcase
     end


   // TRESP EOF
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          tresp_eof_n_o <= #TCQ 1'b1;
        else
          case(state)
            `READ_DECODE : if ((dword_count == 6'h1) |
                               (treq_ttype_q != 4'h4))
                               tresp_eof_n_o <= #TCQ 1'b0;
            `READ_SOF,
            `READ_NORMAL,
            `READ_PAUSE  : if ((!tresp_rdy_n_i) & (dword_count == 6'h1))
                               tresp_eof_n_o <= #TCQ 1'b0;
            `READ_EOF,
            `READ_SINGLE : if (!tresp_rdy_n_i & !tresp_vld_n_o) tresp_eof_n_o <= #TCQ 1'b1;
            `WRITE       : if (!treq_eof_q_n & (treq_ftype_q == 4'h5)
                               & (treq_ttype_q == 4'h5)) tresp_eof_n_o <= #TCQ 1'b0;
            `DB_MSG      : if (!treq_eof_q_n & ((treq_ftype_q == 4'hA) | (treq_ftype_q == 4'hB)))
                              tresp_eof_n_o <= #TCQ 1'b0;
            `WRITE_RESP  : if (!tresp_rdy_n_i & !tresp_vld_n_o) tresp_eof_n_o <= #TCQ 1'b1;
            `DB_MSG_RESP : if (!tresp_rdy_n_i & !tresp_vld_n_o) tresp_eof_n_o <= #TCQ 1'b1;
             default     : tresp_eof_n_o <= #TCQ 1'b1;
          endcase
     end


   // TRESP VLD
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          tresp_vld_n <= #TCQ 1'b1;
        else
          case(state)
            `IDLE        : tresp_vld_n <= #TCQ 1'b1;
            `READ_DECODE : tresp_vld_n <= #TCQ 1'b0;
            `WRITE       : if (!treq_eof_q_n & (treq_ftype_q == 4'h5)
                               & (treq_ttype_q == 4'h5)) 
                             tresp_vld_n <= #TCQ 1'b0;
            `DB_MSG      : if (!treq_eof_q_n & ((treq_ftype_q == 4'hA) | (treq_ftype_q == 4'hB)))
                              tresp_vld_n <= #TCQ 1'b0;
            default      : tresp_vld_n <= #TCQ 1'b0;
          endcase
     end


   // TRESP TTYPE
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          tresp_ttype_o <= #TCQ 4'h0;
        else
          case(state)
            `READ_DECODE :
              begin
                tresp_ttype_o <= #TCQ 4'h8;
              end
            `WRITE       : if (!treq_eof_q_n & (treq_ftype_q == 4'h5)
                               & (treq_ttype_q == 4'h5)) tresp_ttype_o <= #TCQ 4'h0;
            `DB_MSG      : 
              begin
               if (!treq_eof_q_n & (treq_ftype_q == 4'hB)) begin
                 tresp_ttype_o <= #TCQ 4'h1;
               end
               else if (!treq_eof_q_n & (treq_ftype_q == 4'hA)) begin
                 tresp_ttype_o <= #TCQ 4'h0;
               end
              end
            default      : tresp_ttype_o <= #TCQ tresp_ttype_o;
          endcase
     end


   // TRESP STATUS
   always @(posedge sys_clk or negedge lnk_reset_n)
     begin
        if (!lnk_reset_n)
          tresp_status_o <= #TCQ 4'h0;
        else
          case (state)
            `READ_DECODE :
              begin
                 if (tu_error) tresp_status_o <= #TCQ 4'h7;
                 else tresp_status_o <= #TCQ 4'h0;
              end
            `WRITE       : if (!treq_eof_q_n & (treq_ftype_q == 4'h5)
                               & (treq_ttype_q == 4'h5)) tresp_status_o <= #TCQ 4'b0;
            `DB_MSG      : if (!treq_eof_q_n & ((treq_ftype_q == 4'hA) | (treq_ftype_q == 4'hB))) 
                              tresp_status_o <= #TCQ 4'b0;
            default      : tresp_status_o <= #TCQ tresp_status_o;
          endcase
     end

   // TRESP DATA

   assign tresp_data_o = next_do;

   // TRESP DISCONNECT

   assign tresp_dsc_n_o = 1'b1;


endmodule


