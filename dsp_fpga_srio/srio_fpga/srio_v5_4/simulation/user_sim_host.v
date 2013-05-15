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
// File name:     user_sim_host.v
// Rev:           5.4
// Description:   Standalone testbench for the Xilinx RapidIO end point
//                solution. This design sends packets that are then
//                expected in the same order on the response.
//
///////////////////////////////////////////////////////////////////////////////

//--------------------
// Testbench options

`define     DEBUG           1       // define debug level for display
`define     RX_ALWAYS_RDY   1       // Rx ports signal always/randomly ready
`define     TX_VLD_RAND     0       // When 1, toggle data_vld signal
`define     LOCAL           1
`define     REMOTE          0
//--------------------

//--------------------------------------------
// Test Bench Constants

`define        NREAD           8'b0010_0100
`define        ATOMIC_INC      8'b0010_1100
`define        ATOMIC_DEC      8'b0010_1101
`define        ATOMIC_SET      8'b0010_1110
`define        ATOMIC_CLR      8'b0010_1111
`define        NWRITE          8'b0101_0100
`define        NWRITE_R        8'b0101_0101
`define        ATOMIC_TS       8'b0101_1100
`define        SWRITE          8'b0110_xxxx
`define        M_READ_REQ      8'b1000_0000
`define        M_WRITE_REQ     8'b1000_0001
`define        M_READ_RESP     8'b1000_0010
`define        M_WRITE_RESP    8'b1000_0011
`define        PORT_WRITE_REQ  8'b1000_0100
`define        MESSAGE         8'b1011_xxxx
`define        DOORBELL        8'b1010_xxxx

//Ftype definition
`define        FT_2            4'b0010
`define        FT_5            4'b0101
`define        FT_6            4'b0110
`define        FT_8            4'b1000
`define        FT_10           4'b1010
`define        FT_11           4'b1011
`define        FT_13           4'b1101

//Ttype definition
`define        TT_NREAD           4'b0100
`define        TT_ATOMIC_INC      4'b1100
`define        TT_ATOMIC_DEC      4'b1101
`define        TT_ATOMIC_SET      4'b1110
`define        TT_ATOMIC_CLR      4'b1111
`define        TT_NWRITE          4'b0100
`define        TT_NWRITE_R        4'b0101
`define        TT_ATOMIC_TS       4'b1100
`define        TT_SWRITE          4'bxxxx
`define        TT_M_READ_REQ      4'b0000
`define        TT_M_WRITE_REQ     4'b0001
`define        TT_M_READ_RESP     4'b0010
`define        TT_M_WRITE_RESP    4'b0011
`define        TT_PORT_WRITE_REQ  4'b0100
`define        TT_DOORBELL        4'bxxxx
`define        TT_MESSAGE         4'bxxxx
`define        TT_W_DATA          4'b1000
//================================================

`timescale 1 ps / 1 ps

module user_sim_host# (
  parameter TCQ = 100
)(
   input        sys_clk,
   input        sys_reset_n,

   //Target Req data to the application interface
   input [0:1]        treq_prio_i,
   input [0:3]        treq_ftype_i,
   input [0:7]        treq_dest_id_i,
   input [0:7]        treq_src_id_i,
   input [0:7]        treq_tid_i,
   input [0:3]        treq_ttype_i,
   input [0:33]       treq_addr_i,
   input [0:7]        treq_byte_en_n_i,
   input [0:8]        treq_byte_count_i,
   input [0:63]       treq_data_i,
   //Target Req control signals
   input              treq_sof_n_i,
   input              treq_eof_n_i,
   input              treq_vld_n_i,
   output             treq_rdy_n_o,

   //Target Response Signals from application interface
   output [0:1]       tresp_prio_o,
   output [0:3]       tresp_ftype_o,
   output [0:7]        tresp_dest_id_o,
   output [0:3]       tresp_ttype_o,
   output [0:3]       tresp_status_o,
   output [0:7]       tresp_tid_o,
   output [0:63]      tresp_data_o,
   //Target Response control signals
   output             tresp_sof_n_o,
   output             tresp_eof_n_o,
   output             tresp_vld_n_o,
   output             tresp_dsc_n_o,
   input              tresp_rdy_n_i,

   //Initiator response data signals to application interface
   input [0:1]        iresp_prio_i,
   input [0:7]        iresp_src_id_i,
   input [0:3]        iresp_ftype_i,
   input [0:3]        iresp_ttype_i,
   input [0:3]        iresp_status_i,
   input [0:7]        iresp_tid_i,
   input [0:7]        iresp_dest_id_i,
   input [0:63]       iresp_data_i,
   //Initiator Response control signals
   input              iresp_sof_n_i,
   input              iresp_eof_n_i,
   input              iresp_vld_n_i,
   output reg         iresp_rdy_n_o,
   input              iresp_local_i,

   //Initiator Request data signals to application interface
   output reg [0:1]   ireq_prio_o,
   output reg [0:3]   ireq_ftype_o,
   output reg [0:7]   ireq_tid_o,
   output reg [0:7]   ireq_dest_id_o,
   output reg [0:7]   ireq_hop_count_o,
   output reg [0:3]   ireq_ttype_o,
   output reg [0:8]   ireq_byte_count_o,
   output reg [0:7]   ireq_byte_en_n_o,
   output reg [0:33]  ireq_addr_o,
   output reg [0:63]  ireq_data_o,
   //Initiator Request control signals
   output reg         ireq_sof_n_o,
   output reg         ireq_eof_n_o,
   output reg         ireq_vld_n_o,
   output reg         ireq_local_o,
   output reg         ireq_dsc_n_o,
   input              ireq_rdy_n_i,
   input              lnk_trdy
);

   //------------------------------------------------------------------------------
   // Global definition and variables

   parameter     TCLK =  15;

  `define ALL_ONE     64'hFFFF_FFFF_FFFF_FFFF
  `define LUCKY       64'h2525_2525_2525_2525


   reg [0:4]          store_pkt_size [0:15];
   reg [0:31]         refmem [0:255];
   reg [0:31]         wpointer;
   reg [0:31]         rpointer;
   reg [0:151]        mem [0:8388608];

   reg [0:7]          w_refmem_ptr;
   reg [0:15]         w_datamem_ptr;

   reg [0:151]        data_write;
   reg [0:151]        data_read;

   reg                read_sof_n;
   reg                read_eof_n;
   reg                read_dsc_n;
   reg [0:3]          read_ftype;
   reg [0:3]          read_ttype;
   reg [0:1]          read_prio;
   reg [0:15]          read_dest_id;
   reg [0:7]          read_tid;
   reg [0:63]         read_data;
   reg [0:7]          read_hop_count;
   reg [0:8]          read_byte_count;
   reg [0:7]          read_byte_en_n;
   reg [0:33]         read_addr;
   reg [0:20]         read_offset;
   reg [0:3]          read_status;

   reg                in_progress;
   reg                check_all_responses;
   reg                simulation_finished;

   reg [0:7]          VALID_BYTE_LANES_1 [0:7];
   reg [0:7]          VALID_BYTE_LANES_2 [0:3];
   reg [0:7]          VALID_BYTE_LANES_3 [0:1];
   reg [0:7]          VALID_BYTE_LANES_4 [0:1];
   reg [0:7]          VALID_BYTE_LANES_5 [0:1];
   reg [0:7]          VALID_BYTE_LANES_6 [0:1];
   reg [0:7]          VALID_BYTE_LANES_7 [0:1];

   integer            i, j, l, m, z;
   integer            SIM_ERROR;

   // Outputs from Tx path fed as inputs to the Rx path
   wire [0:7]         DefBAR;

   // Number of dwords of the request
  `define  dw_n       6'b00_xxxx
  `define  dw_0       6'b00_0000
  `define  dw_1       6'b00_0001
  `define  dw_2       6'b00_0010
  `define  dw_3       6'b00_0011
  `define  dw_4       6'b00_0100
  `define  dw_5       6'b00_0101
  `define  dw_8       6'b00_1000
  `define  dw_32      6'b10_0000

  `define  local      1'b1

   wire               clk;
   reg                master_enable_o;



  // Instantiations -----------------------------------------

  // Target User Design
  target_user #(
    .TCQ                (TCQ)
  ) target_sim_user (
    .sys_clk            (clk),
    .lnk_reset_n        (sys_reset_n),
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
    .tresp_stalls       (2'b00),
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
    .treq_rdy_n_o       (treq_rdy_n_o),
    .tresp_msg_seg      (),
    .tresp_mbox         (),
    .tresp_letter       (),
    .treq_db_info       (),
    .treq_msg_len       (),
    .treq_msg_seg       (),
    .treq_mbox          (),
    .treq_letter        ()
    );

   assign           clk = sys_clk;

   initial
     begin
        INIT_ALL;
        $display("Get Ready !\n");
        $display("Get set !\n");
        $display("Go !\n");
        IREQ_PAUSE(15);

        // Wait for the link to be ready before sending transactions
        wait (lnk_trdy == 0);

        // Set up my own DeviceID


        // First write to the LOCK CSR
              MREQ (1, `M_WRITE_REQ, 12'h068, 4'h8, 8'hCF, 0, `LOCAL, 64'h0000_2500_0000_0000, `ALL_ONE);
              IREQ_PAUSE(15);
        // Read from the CSR and make sure I got it
              MREQ (1, `M_READ_REQ,  12'h068, 4'h8, 8'h00, 0, `LOCAL, `LUCKY, `ALL_ONE);
              IREQ_PAUSE(15);
        // Now write to the Base_deviceID
              MREQ (1, `M_WRITE_REQ, 12'h060, 4'h8, 8'hBF, 0, `LOCAL, 64'h0025_0000_0000_0000, `ALL_ONE);
              IREQ_PAUSE(15);
        // Set Master Enable bit
              MREQ (1, `M_WRITE_REQ, 12'h138, 4'h8, 8'h00, 0, `LOCAL, 64'hxxxx_xxxx_4xxx_xxxx, `ALL_ONE);
              IREQ_PAUSE(15);
        // Check that the Master Enable bit is set
              MREQ (1, `M_READ_REQ,  12'h138, 4'h8, 8'h00, 0, `LOCAL, `LUCKY, `ALL_ONE);
              IREQ_PAUSE(15);

        // Write to the LOCK CSR
              MREQ (1, `M_WRITE_REQ, 12'h068, 4'h8, 8'hCF, 0, `REMOTE, 64'h0000_2500_0000_0000, `ALL_ONE);
              IREQ_PAUSE(15);
        // Read from the CSR and make sure I got it
              MREQ (1, `M_READ_REQ,  12'h068, 4'h8, 8'h00, 0, `REMOTE, `LUCKY, `ALL_ONE);
              IREQ_PAUSE(15);
        //  Now write to the Base_deviceID
              MREQ (1, `M_WRITE_REQ, 12'h060, 4'h8, 8'hBF, 0, `REMOTE, 64'h0004_0000_0000_0000, `ALL_ONE);
              IREQ_PAUSE(15);
        // Read connected Host_base_DeviceID
        MREQ (1, `M_READ_REQ,  12'h060, 4'h8, 8'h00, 0, `REMOTE, `LUCKY, `ALL_ONE);
        IREQ_PAUSE(100);


            // Set up NWRITEs, NWRITE_Rs, SWRITEs to fill up the remote BRAM
        WRITE_REMOTE_BRAM;
            // De-assert sof/eof/vld signals
        IREQ_PAUSE(10);

            // Set up NREADs to read the remote BRAM
        READ_REMOTE_BRAM;
            // De-assert sof/eof/vld signals
        IREQ_PAUSE(30);






            // Trigger to check if all responses are received
        WAIT_SIM_END;
            // fail-safe .. simln end
        WAIT_CLK(10000);
        $finish;
     end


   always @(posedge clk) begin
      if (`RX_ALWAYS_RDY) begin
         // Rx ports are always ready to accept data
         iresp_rdy_n_o     <= #TCQ 0;
      end
      else begin
         // Rx ports ramdomly ready to accept data
         iresp_rdy_n_o     <= #TCQ $random;
      end
   end


// Save data as the data is transmitted to the Logical Layer
// Initiator Request  - TX port - Read/Write Request made to
//                                remote endpoint
// Initiator Response - RX port - Read/Write Response from
//                                remote endpoint for
//                                a previous Intiator Request

   // ALL TX PORTS
   always @(posedge clk) begin
      if (!ireq_rdy_n_i  & !ireq_vld_n_o &
                                            (
                        ireq_ftype_o == `FT_2 |  // ATOMIC, NREAD
                        ireq_ftype_o == `FT_5 |  // ATOMIC, NWRITE, NWRITE_R
                                            ireq_ftype_o == `FT_6    // SWRITE
                        ))
        IREQ_SAVE;
   end

   // ALL RX PORTS
   always @(posedge clk) begin
      if (!iresp_rdy_n_o & !iresp_vld_n_i) begin                            // All Responses Ftype 13
          if (!iresp_sof_n_i)
            rpointer = refmem[iresp_tid_i];
          else
            rpointer     =   rpointer + 1;

          if (!iresp_sof_n_i & !iresp_eof_n_i & (iresp_ttype_i == `TT_M_READ_REQ))
            IRESP_DONE_COMPARE; // the status=DONE is expected to be a single cycle packet.
            // Compare data for responses only..
          else if (iresp_ftype_i == `FT_13)
            IRESP_COMPARE;
      end
   end

   // Stop Simln. on receiving a FATAL error.
   always @(posedge SIM_ERROR) begin
      if (|SIM_ERROR) begin
         $display("@F:%0.f [%0.fns] Fatal error detected!", SIM_ERROR, $realtime);

         case (SIM_ERROR)
           3: begin
              $display("     Start of a transaction while a transaction is already in progress", $realtime);
              $display("     Possible causes:");
              $display("     a. Tx_arb grant access to a port while another port hasn't finish it's");
              $display("        transaction");
              $display("     b. eof_n not asserted in previous transaction\n");
           end
           4: $display("     WRITE_MEM while mem full\n");
           5: begin
              $display("     READ_MEM while mem empty\n", $realtime);
              $display("     Possible causes:");
              $display("     a. Illegal READ operation ");
              $display("     b. Incorrect Transaction ID received ");
           end
         endcase
         $display("#################################################################");
         $display("################# ERROR: TEST FAILED !!!!! ######################");
         $display("#################################################################");
         $finish;
      end
   end

   // Check if all responses to NREADs are received back.
   // This logic is triggered after all the NREADs are set up.
   always @(posedge clk) begin
      if (check_all_responses & (iresp_tid_i == ireq_tid_o)) begin
        simulation_finished = 1;
        #1000;
        $display("\n");
        $display("*****************************************************************");
        $display("************* All Responses received correctly ******************");
        $display("********************* TEST PASSED *******************************");
        $display("*****************************************************************");
        $display("\n");
        $finish;
      end
   end

   // Monitor for a testbench time-out and stop the test after a reasonable
   // amount of time if the test hasn't finished.
   initial
     begin
       fork : sim_in_progress
         @(posedge simulation_finished) disable sim_in_progress;
         #300000000 disable sim_in_progress;
       join
       if (!simulation_finished) begin
           $display("#################################################################");
           $display("################## ERROR: TEST FAILED !!!!! #####################");
           $display("################### Testbench Timed Out! ########################");
           $display("#################################################################");
           $stop;
       end
   end

   //==============================================================================================
   // Task definitions
   // TASK WAIT_CLK           - Insert idle clocks
   // TASK INIT_ALL           - Initialize registers
   // TASK IREQ               - Issue Supported Initiator Request (non maintenance)
   // TASK MREQ               - Issue Maintenance Request
   // TASK IREQ_PAUSE         - Stall Initiator Request Port
   // TASK IREQ_SAVE          - Captures IREQ Transmit Data - Supported Transfers
   // TASK IRESP_COMPARE      - Compares the Data received on Initiator Rx port
   // TASK IRESP_DONE_COMPARE - Compares the Status received on Initiator Rx port
   // TASK WRITE_MEM          - Stores the Transmit data set up on Initiator Tx port
   // TASK READ_MEM           - Retrieves the Transmit data for comparison
   // TASK IREQ_DATA          - Sets up data to be transmit on Initiator Tx port
   // TASK WRITE_REMOTE_BRAM  - Sets up NWRITE/NWRITE_R/SWRITE to be transmitted to the Remote BRAM
   // TASK READ_REMOTE_BRAM   - Sets up NREADS to be transmitted to the Remote BRAM
   // TASK WAIT_SIM_END       - Sets the trigger to check if all responses are received
   //==============================================================================================

   //==============================================================================
   // TASK:        WAIT_CLK
   // OPERATION:   Used to introduce idle clock cycles.
   //==============================================================================
   task WAIT_CLK;
      input [0:31]   cycles;
      reg   [0:31]   i;
      begin
         for (i = 1; i <= cycles; i = i+1)
           @(posedge clk);
      end
   endtask

   //==============================================================================
   // TASK:        INIT_ALL
   // OPERATION:   Used to initialize all registers to default value
   //==============================================================================
   task INIT_ALL;
      begin
         // Reset all inputs
         iresp_rdy_n_o           =   1;
         ireq_prio_o             =   0;
         ireq_ftype_o            =   0;
         ireq_tid_o              =   0;
         ireq_dest_id_o          =   0;
         ireq_hop_count_o        =   0;
         ireq_ttype_o            =   0;
         ireq_byte_count_o       =   0;
         ireq_byte_en_n_o        =   0;
         ireq_addr_o             =   0;
         ireq_data_o             =   0;
         ireq_sof_n_o            =   1;
         ireq_eof_n_o            =   1;
         ireq_vld_n_o            =   1;
         ireq_local_o            =   0;
         ireq_dsc_n_o            =   1;

         // Enables EP to act as an Initiator
         master_enable_o         =   1;
         wpointer                =   0;
         rpointer                =   0;
         in_progress             =   0;
         check_all_responses     =   0;
         simulation_finished     =   0;

         SIM_ERROR               =   0;

         VALID_BYTE_LANES_1[0]   =   8'b1000_0000;
         VALID_BYTE_LANES_1[1]   =   8'b0100_0000;
         VALID_BYTE_LANES_1[2]   =   8'b0010_0000;
         VALID_BYTE_LANES_1[3]   =   8'b0001_0000;
         VALID_BYTE_LANES_1[4]   =   8'b0000_1000;
         VALID_BYTE_LANES_1[5]   =   8'b0000_0100;
         VALID_BYTE_LANES_1[6]   =   8'b0000_0010;
         VALID_BYTE_LANES_1[7]   =   8'b0000_0001;

         VALID_BYTE_LANES_2[0]   =   8'b1100_0000;
         VALID_BYTE_LANES_2[1]   =   8'b0011_0000;
         VALID_BYTE_LANES_2[2]   =   8'b0000_1100;
         VALID_BYTE_LANES_2[3]   =   8'b0000_0011;

         VALID_BYTE_LANES_3[0]   =   8'b1110_0000;
         VALID_BYTE_LANES_3[1]   =   8'b0000_0111;

         VALID_BYTE_LANES_4[0]   =   8'b1111_0000;
         VALID_BYTE_LANES_4[1]   =   8'b0000_1111;

         VALID_BYTE_LANES_5[0]   =   8'b1111_1000;
         VALID_BYTE_LANES_5[1]   =   8'b0001_1111;

         VALID_BYTE_LANES_6[0]   =   8'b1111_1100;
         VALID_BYTE_LANES_6[1]   =   8'b0011_1111;

         VALID_BYTE_LANES_7[0]   =   8'b1111_1110;
         VALID_BYTE_LANES_7[1]   =   8'b0111_1111;

         WAIT_CLK(4);
      end
   endtask


   //==============================================================================
   // TASK:        IREQ
   // OPERATION:   Used to transmit Initiator Request Packets
   //              Only supports transmission of
   //              FTYPE 2 - ATOMIC, NREAD
   //              FTYPE 5 - ATOMIC, NWRITE, NWRITE_R
   //              FTYPE 6 - SWRITE
   //==============================================================================
   task IREQ;
      input [0:7]     packets;
      input [0:3]     ftype;
      input [0:3]     ttype;
      input [0:5]     dwords;
      reg   [0:7]     cycles;
      reg   [0:8]     random256;
      reg             back2back;

   begin
         ireq_ftype_o <= ftype;
         ireq_ttype_o <= ttype;
         ireq_local_o <= 0;

         // Set number of cycles to transfers
         if (dwords == `dw_n)
           cycles = $random % 33;
         // If no data, cycle single packet
         else if (ftype == `FT_2)
           cycles = 1;
         else
           cycles = dwords;

         // Begin Packet Transfer for each Packet
         for  (i = 1; i <= packets; i = i+1) begin
           // Randomly insert a one cycle pause
           // between packets (non back-to-back)
           back2back = $random;
           if (i != 1 & !back2back)
             IREQ_PAUSE(1);

           // Set the byte count value
           random256 = $random % 32'd257;
           if (random256 <= 8)
             random256 = 9;

           // Setup for Cycle 1
           if(ftype == `FT_10) begin
             ireq_byte_en_n_o <= 8'b0000_1111;
             ireq_data_o <= {$random, $random};
           end else begin
             ireq_byte_en_n_o <= 8'b0000_0000;
             ireq_data_o <= {$random, $random};
           end

           ireq_byte_count_o <= random256;
           ireq_prio_o <= 2'b01;
           ireq_dest_id_o <= ireq_dest_id_o + 1;
           ireq_tid_o <= ireq_tid_o + 1;
           ireq_sof_n_o <= 0;
           ireq_vld_n_o <= 0;
           ireq_dsc_n_o <= 1;

           // Cycle 1 to (cycles - 1)
           for (l = 1; l < cycles; l = l+1) begin
             ireq_eof_n_o <= 1;
             if (`TX_VLD_RAND)
               ireq_vld_n_o <= $random;
             else
               ireq_vld_n_o <= 1'b0;

              @(posedge clk);
              while(ireq_rdy_n_i | ireq_vld_n_o) begin
                @(posedge clk);
                if (`TX_VLD_RAND) begin
                  if (ireq_vld_n_o)
                    ireq_vld_n_o <= $random;
                  else
                    ireq_vld_n_o <= 1'b0;
                end
              end //end while

              ireq_sof_n_o <= 1;
              ireq_data_o <= {$random, $random};
            end //end for

        // Final cycle
        ireq_eof_n_o <= 0;
        @(posedge clk);
        while(ireq_rdy_n_i | ireq_vld_n_o) begin
          @(posedge clk);
          if (ireq_vld_n_o)
            if (`TX_VLD_RAND)
              ireq_vld_n_o <= $random;
            else
              ireq_vld_n_o <= 1'b0;
        end //end while
      end //end for i
    end //end begin
   endtask


   //==============================================================================
   // TASK:        MREQ
   // OPERATION:   Used to transmit Initiator Request Packets
   //              Only supports transmission of
   //              FTPYE 8 - CONFIG READ REQ, CONFIG WRITE REQ (ONLY)
   //==============================================================================
   task MREQ;
      input [0:7]     packets;
      input [0:3]     ttype;
      input [0:33]    address;
      input [0:9]     size_bytes;
      input [0:7]     byte_n_n;
      input [0:5]     dwords;
      input           local;
      input [0:63]    dw0;
      input [0:63]    dw1;
      reg   [0:7]     cycles;
      reg   [0:8]     random256;
      reg             back2back;

   begin
         ireq_ftype_o <= `FT_8;
         ireq_ttype_o <= ttype;
         ireq_local_o <= local;
         ireq_addr_o  <= address;

         // Set the number of cycles in each packet
         if (dwords === `dw_n)
           cycles = $random % 33;
         else
           cycles = dwords;

         // Begin Packet Transfer for each Packet
         for  (i = 1; i <= packets; i = i+1) begin
           // Randomly insert a one cycle pause
           // between packets (non back-to-back)
           back2back      =   $random;
           if (i != 1 & !back2back)
             IREQ_PAUSE(1);

           // Set the byte count value
           random256   =   $random % 32'd257;
           if (random256 == 0)
             random256 = 1;

           //Setup for Cycle 1
           ireq_byte_en_n_o     <= byte_n_n;
           ireq_data_o          <= dw0;
           ireq_byte_count_o    <= size_bytes;
           ireq_prio_o          <= 2'b01;
           ireq_dest_id_o       <= ireq_dest_id_o + 1;
           ireq_tid_o           <= ireq_tid_o + 1'b1;
           ireq_sof_n_o         <= 0;
           ireq_vld_n_o         <= 0;
           ireq_dsc_n_o         <= 1;

           // Cycle 1 to (cycles - 1)
          for (j = 1; j < cycles; j = j+1) begin
             ireq_eof_n_o <=   1;
             if (`TX_VLD_RAND)
               ireq_vld_n_o <= $random;
             else
               ireq_vld_n_o <= 1'b0;
             @(posedge clk);
             while(ireq_rdy_n_i | ireq_vld_n_o) begin
               @(posedge clk);
               if (`TX_VLD_RAND) begin
                     if (ireq_vld_n_o)
                       ireq_vld_n_o <= $random;
                     else
                       ireq_vld_n_o <= 1'b0;
               end
              end //end while
              ireq_sof_n_o <= 1;
              ireq_data_o  <= dw1;
          end

           // Final Cycle
          ireq_eof_n_o        <=   0;
          @(posedge clk);
          while(ireq_rdy_n_i | ireq_vld_n_o) begin
            @(posedge clk);
            if (ireq_vld_n_o)
              if (`TX_VLD_RAND)
                ireq_vld_n_o        <=   $random;
              else
                ireq_vld_n_o        <=   1'b0;
          end //end while
       end //end for i
       ireq_vld_n_o        <=   1'b0;
     end //end begin
   endtask



   //==============================================================================
   // TASK:        IREQ_PAUSE
   // OPERATION:   Used to stall Initiator Request Port
   //==============================================================================
   task IREQ_PAUSE;
      input   [0:7] cycles;
   begin
         ireq_sof_n_o <= 1;
         ireq_vld_n_o <= 1;
         ireq_eof_n_o <= 1;
         WAIT_CLK(cycles);
   end
   endtask


   //==============================================================================
   // TASK:        IREQ_SAVE
   // OPERATION:   User to capture the data being transmitted
   //              on the Initiator Request Port - Supported Transfers
   //==============================================================================
   task IREQ_SAVE;
   begin
         data_write = { ireq_sof_n_o,       // 0
                    ireq_eof_n_o,       // 1
                    ireq_dsc_n_o,       // 2
                    ireq_ftype_o,       // 3:6
                    ireq_ttype_o,       // 7:10
                    ireq_prio_o,        // 11:12
                    {8'b0, ireq_dest_id_o},     // 13:28
                    ireq_tid_o,         // 29:36
                    ireq_data_o,        // 37:100
                    ireq_byte_count_o,  // 101:109
                    ireq_byte_en_n_o,   // 110:117
                    ireq_addr_o};       // 118:151
         WRITE_MEM(data_write);
   end
   endtask

   //==============================================================================
   // TASK:        IRESP_COMPARE
   // OPERATION:   User to capture Rx data for a previous IREQ transfer
   //==============================================================================
   task IRESP_COMPARE;
      reg [0:2] comp_error;
      reg       with_data;
   begin
         comp_error          = 0;
         with_data      = 0;


     READ_MEM(data_read);
     read_sof_n     = data_read[0];
     read_eof_n     = data_read[1];
     read_dsc_n     = data_read[2];
     read_ftype     = data_read[3:6];
     read_ttype     = data_read[7:10];
     read_prio      = data_read[11:12];
     read_dest_id   = data_read[13:28];
     read_tid       = data_read[29:36];
     read_data      = data_read[37:100];
     read_status    = data_read[101:104];
     // Expect the address to be realigned to 64-bit
     read_addr[31:33] = 3'b000;

         // SIM_ERROR[2] and SIM_ERROR[0] - Detect any comparison errors on header
         if (!read_sof_n) begin
           // Verify correct ftype arrives on that port
           if ((iresp_ftype_i !== `FT_13) |
           (iresp_ttype_i !== `TT_W_DATA) |
           // Should not check for the "tid" since the "tid" is used for loading the
           // "rpointer" to the m/m which references the data to be compared.
           //(iresp_prio_i !== (read_prio+1'b1))
           (iresp_prio_i <= read_prio)
           )
                 comp_error[0] = 1;
         end

         // SIM_ERROR[1] - Detect any comparison errors on data
         if ((iresp_ftype_i == `FT_13 & iresp_ttype_i[0])) begin
           with_data = 1;
           if (iresp_data_i !== read_data)
                 comp_error[1] = 1;
         end

         // Display error messages
         if (comp_error) begin
           $display("@E:2 [%.0fns] Comparison mismatch on Iresp port (mem: %h)", $realtime, rpointer);
           $display("     Possible causes:");
           $display("     a. Illegal READ operation ");
           $display("     b. Incorrect Transaction ID received ");
           $display("     c. Incorrect Data received ");
           $display("     d. Incorrect Data stored in the memory ");
         end
         else
           $display("@N   [%.0fns] Comparison OK       on Iresp port (mem: %h)", $realtime, rpointer);


         // Display error/debug messages
         if (comp_error | `DEBUG) begin
           if (comp_error[0] | (`DEBUG & !read_sof_n)) begin
             $display("     iresp_ftype_i      : %h\t\t  expecting: %h", iresp_ftype_i, `FT_13);
             $display("     iresp_ttype_i      : %h\t\t  expecting: %h", iresp_ttype_i, `TT_W_DATA);
             $display("     iresp_prio_i       : %h\t\t  expecting: >%h", iresp_prio_i, read_prio);
           end
           if (comp_error[1] | (`DEBUG & with_data)) begin
             $display("     iresp_data_i       : %h expecting: %h\n", iresp_data_i, read_data);
           end
         end

         // Stop on error
         if (comp_error) begin
           $display("#################################################################");
           $display("##################### TEST FAILED !!!!! #########################");
           $display("#################################################################");
           $display("\n");
           $finish;
         end

   end
   endtask


   //==============================================================================
   // TASK:        IRESP_DONE_COMPARE
   // OPERATION:   To check for the STATUS=DONE on a previous IREQ transfer
   //==============================================================================
   task IRESP_DONE_COMPARE;
      reg [0:2] comp_error;
   begin
         comp_error          = 0;

     READ_MEM(data_read);
     read_sof_n     = data_read[0];
     read_eof_n     = data_read[1];
     read_dsc_n     = data_read[2];
     read_ftype     = data_read[3:6];
     read_ttype     = data_read[7:10];
     read_prio      = data_read[11:12];
     read_dest_id   = data_read[13:28];
     read_tid       = data_read[29:36];
     read_data      = data_read[37:100];
     read_status    = data_read[101:104];
     // Expect the address to be realigned to 64-bit
     read_addr[31:33] = 3'b000;

         // SIM_ERROR[2] and SIM_ERROR[0] - Detect any comparison errors on header
         if (!read_sof_n) begin
           // Verify correct ftype arrives on that port
           if ((iresp_ftype_i !== `FT_13) |
           (iresp_ttype_i !== `TT_M_READ_REQ) |
           (iresp_prio_i !== (read_prio+1'b1))
           )
                 comp_error[0] = 1;
         end

         // Display error messages
         if (comp_error) begin
           $display("@E:2 [%.0fns] Comparison mismatch on Iresp port (mem: %h)", $realtime, rpointer);
           $display("     Possible causes:");
           $display("     a. Illegal READ operation ");
           $display("     b. Incorrect Transaction ID received ");
           $display("     c. Incorrect Data received ");
           $display("     d. Incorrect Data stored in the memory ");
           $display("#################################################################");
           $display("##################### TEST FAILED !!!!! #########################");
           $display("#################################################################");
           $finish;
         end
         else
           $display("@N   [%.0fns] Comparison OK       on Iresp port (mem: %h)", $realtime, rpointer);

         // Display error/debug messages
         if (comp_error | `DEBUG) begin
           if (comp_error[0] | (`DEBUG & !read_sof_n)) begin
             $display("     iresp_ftype_i      : %h\t\t  expecting: %h", iresp_ftype_i, `FT_13);
             $display("     iresp_ttype_i      : %h\t\t  expecting: %h", iresp_ttype_i, `TT_M_READ_REQ);
             $display("     iresp_prio_i       : %h\t\t  expecting: %h", iresp_prio_i, (read_prio+1'b1));
           end
           if (comp_error[2]) begin
             $display("     Illegal ftype (%h) on Iresp port!\n", iresp_ftype_i);
             $display("#################################################################");
             $display("##################### TEST FAILED !!!!! #########################");
             $display("#################################################################");
             $finish;
           end
         end

   end
   endtask


   //==============================================================================
   // FUNCTION: Round_bc
   // FUNCTION: Random_be_n
   //==============================================================================
   function [0:8] Round_bc;
      input [0:8] byte_count;
      input       is_write;
   begin

     if (is_write) begin
       if (byte_count      <= 8)
          Round_bc        = 8;
       else if (byte_count <= 16)
          Round_bc        = 16;
       else if (byte_count <= 32)
          Round_bc        = 32;
       else if (byte_count <= 64)
          Round_bc        = 64;
       else if (byte_count <= 128)
          Round_bc        = 128;
       else
          Round_bc        = 256;
     end
     else begin
       if (byte_count      <= 8)
          Round_bc        = 8;
       else if (byte_count <= 16)
          Round_bc        = 16;
       else if (byte_count <= 32)
          Round_bc        = 32;
       else if (byte_count <= 64)
          Round_bc        = 64;
       else if (byte_count <= 96)
          Round_bc        = 96;
       else if (byte_count <= 128)
          Round_bc        = 128;
       else if (byte_count <= 160)
          Round_bc        = 160;
       else if (byte_count <= 192)
          Round_bc        = 192;
       else if (byte_count <= 224)
          Round_bc        = 224;
       else
          Round_bc        = 256;
     end
   end
   endfunction

   function [0:7]  Random_be_n;
      input   [0:8]   byte_count;
   begin
     case (byte_count)
        1:      Random_be_n     = ~VALID_BYTE_LANES_1[$random % 32'h8];
        2:      Random_be_n     = ~VALID_BYTE_LANES_2[$random % 32'h4];
        3:      Random_be_n     = ~VALID_BYTE_LANES_3[$random % 32'h2];
        4:      Random_be_n     = ~VALID_BYTE_LANES_4[$random % 32'h2];
        5:      Random_be_n     = ~VALID_BYTE_LANES_5[$random % 32'h2];
        6:      Random_be_n     = ~VALID_BYTE_LANES_6[$random % 32'h2];
        7:      Random_be_n     = ~VALID_BYTE_LANES_7[$random % 32'h2];
        default:        Random_be_n = 8'h00;
     endcase

   end
   endfunction


   //==============================================================================
   // TASK:        WRITE_MEM
   // OPERATION:   Used to store Initiator WRITE Packets
   //              FTYPE 5 - ATOMIC, NWRITE, NWRITE_R
   //              FTYPE 6 - SWRITE
   //==============================================================================

   task WRITE_MEM;
      input [0:151] data;
   begin
   // Check a transaction is not already in progress
      if (`DEBUG == 3)
         $display("@D:2 [%.0fns] WRITE sof_n:%h eof_n:%h", $realtime, data[0], data[1]);

      if (!data[0]) begin              // sof_n
         w_refmem_ptr           = data[29:36];      // This is the SRCTID
         refmem[w_refmem_ptr]   = data[120:151];    // This is the ADDR
         wpointer               = data[120:151];    // Store it...
            // Only store the NWRITE/SWRITE data in the m/m
         if ((data[3:6] == `FT_5)| (data[3:6] == `FT_6))
           mem[wpointer]          = data;
         if (in_progress)
           SIM_ERROR           =   3;
         else if (data[1] & data[2])   // eof_n, dsc_n
           in_progress     =   1;
      end
      else if (!data[1] | !data[2]) begin   // eof_n, dsc_n
        wpointer          =   wpointer + 1;
        in_progress       =   0;
           // Only write the NWRITE/SWRITE data to the m/m
        if ((data[3:6] == `FT_5)| (data[3:6] == `FT_6))
          mem[wpointer]          = data;
        if (`DEBUG == 2)
           $display("@D:2 [%.0fns] WRITE addr:%h => data:%h", $realtime, wpointer, data);
      end
      else begin
        wpointer          =   wpointer + 1;
           // Only write the NWRITE/SWRITE data to the m/m
        if ((data[3:6] == `FT_5)| (data[3:6] == `FT_6))
          mem[wpointer]          = data;
        if (`DEBUG == 2)
           $display("@D:2 [%.0fns] WRITE addr:%h => data:%h", $realtime, wpointer, data);
      end

   end
   endtask


   //==============================================================================
   // TASK:        READ_MEM
   // OPERATION:   Used to read the stored Initiator-WRITE Packets
   //==============================================================================
   task READ_MEM;
      output  [0:151] data;
   begin
     data       =   mem[rpointer];
   end
   endtask



   //==============================================================================
   // TASK:        IREQ
   // OPERATION:   Used to transmit Initiator Request Packets
   //              Only supports generation of
   //              FTYPE 2 - ATOMIC, NREAD
   //              FTYPE 5 - ATOMIC, NWRITE, NWRITE_R
   //              FTYPE 6 - SWRITE
   //==============================================================================

   task IREQ_DATA;
      input [0:3]     ftype;
      input [0:3]     ttype;
      input [0:31]    address;
      input [0:4]     dwords;

      reg   [0:4]     cycles;
      reg   [0:8]     random256;
      reg             back2back;

   begin

     if (ftype == `FT_2)
       cycles           =   0;
     else
       cycles           =   dwords;

     ireq_ftype_o        <=   ftype;
     ireq_ttype_o        <=   ttype;
     ireq_addr_o[2:33]   <=   address;
     ireq_local_o        <=   0;
     ireq_byte_en_n_o    <=   8'b0000_0000;
     ireq_data_o         <=   {$random, $random};

     ireq_byte_count_o   <=   dwords * 8;     // max byte count is 256
     ireq_prio_o         <=   2'b01;
     ireq_dest_id_o      <=   8'h25;
     ireq_tid_o          <=   ireq_tid_o + 1;
     ireq_sof_n_o        <=   0;
     ireq_vld_n_o        <=   0;
     ireq_dsc_n_o        <=   1;


      for (l = 0; l < cycles; l = l+1) begin
        ireq_eof_n_o     <=   1;
        if (`TX_VLD_RAND)
          ireq_vld_n_o        <=   $random;
        else
          ireq_vld_n_o        <=   1'b0;

        @(posedge clk);
        while(ireq_rdy_n_i | ireq_vld_n_o) begin
          @(posedge clk);
          if (`TX_VLD_RAND) begin
            if (ireq_vld_n_o)
              ireq_vld_n_o        <=   $random;
            else
              ireq_vld_n_o        <=   1'b0;
          end
        end //end while

        ireq_sof_n_o     <=   1;
        ireq_data_o      <=   {$random, $random};
      end //end for

      ireq_eof_n_o        <=   0;

      @(posedge clk);

      while(ireq_rdy_n_i | ireq_vld_n_o) begin
        @(posedge clk);
        if (ireq_vld_n_o)
          if (`TX_VLD_RAND)
            ireq_vld_n_o        <=   $random;
          else
            ireq_vld_n_o        <=   1'b0;
      end //end while

    end //end begin
  endtask

   //==============================================================================
   // TASK:        WRITE_REMOTE_BRAM
   // OPERATION:   Used to set up Initiator Request Packets
   //              Only supports generation of
   //              FTYPE 5 - NWRITE, NWRITE_R
   //              FTYPE 6 - SWRITE
   //==============================================================================

    task WRITE_REMOTE_BRAM;
    reg [0:31]         bram_addr;
    reg [0:31]         incr_addr;
    reg [0:31]         bram_start_addr;
    reg [0:4]          pkt_size_sent;
    integer  fill_up_bram;
    begin
      incr_addr       = 32'h0000_0100;
      bram_start_addr = 32'h0010_0000;
      for (fill_up_bram=0; fill_up_bram<16;fill_up_bram=fill_up_bram+1) begin
        if (fill_up_bram == 0)
          bram_addr = bram_start_addr;
        else
          bram_addr = bram_addr + incr_addr;


        pkt_size_sent = 31;
        store_pkt_size[fill_up_bram] = pkt_size_sent;

        if (fill_up_bram%3 == 0)    // Setup NWRITE
          IREQ_DATA(`FT_5, 4'b0100, bram_addr, pkt_size_sent);
        else if (fill_up_bram%4 == 0)    // Setup SWRITE
          IREQ_DATA(`FT_6, 4'b0000, bram_addr, pkt_size_sent);
        else                        // Setup NWRITE_R
          IREQ_DATA(`FT_5, 4'b0101, bram_addr, pkt_size_sent);
      end
    end
    endtask


   //==============================================================================
   // TASK:        READ_REMOTE_BRAM
   // OPERATION:   Used to set up Initiator Request Packets
   //              Only supports generation of
   //              FTYPE 2 - NREAD
   //==============================================================================

    task READ_REMOTE_BRAM;
    reg [0:31]         bram_addr;
    reg [0:31]         incr_addr;
    reg [0:31]         bram_start_addr;
    reg [0:4]          pkt_size_read;
    integer  read_bram;
    begin
      incr_addr       = 32'h0000_0100;
      bram_start_addr = 32'h0010_0000;
      for (read_bram=0; read_bram<16;read_bram=read_bram+1) begin
        if (read_bram == 0)
          bram_addr = bram_start_addr;
        else
          bram_addr = bram_addr + incr_addr;

        pkt_size_read = 31;
        
        IREQ_DATA(`FT_2, 4'b0100, bram_addr, pkt_size_read);
      end
    end
    endtask


   //==============================================================================
   // TASK:        WAIT_SIM_END
   // OPERATION:   Used to Check if all valid responses are received back.
   //==============================================================================

    task WAIT_SIM_END;
    begin
     check_all_responses = 1;
    end
    endtask




endmodule
