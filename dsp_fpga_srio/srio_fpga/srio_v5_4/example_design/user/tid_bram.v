/******************************************************************************

File name:    tid_bram.v
Rev:          5.4
Description:  This is the Transaction ID (TID) BRAM module of the
              User Design. It passes information regarding expected
              Initiator Responses from the IREQ Generator to the 
              IRESP Handler. The IRESP Handler will use this 
              information to verify incoming responses.

#-- Copyright (c) 1995-2008 by Xilinx, Inc. All rights reserved.
#-- This text/file contains proprietary, confidential
#-- information of Xilinx, Inc., is distributed under license
#-- from Xilinx, Inc., and may be used, copied and/or
#-- disclosed only pursuant to the terms of a valid license
#-- agreement with Xilinx, Inc. Xilinx hereby grants you a
#-- license to use this text/file solely for design, simulation,
#-- implementation and creation of design files limited
#-- to Xilinx devices or technologies. Use with non-Xilinx
#-- devices or technologies is expressly prohibited and
#-- immediately terminates your license unless covered by
#-- a separate agreement.
#--
#-- Xilinx is providing this design, code, or information
#-- "as-is" solely for use in developing programs and
#-- solutions for Xilinx devices, with no obligation on the
#-- part of Xilinx to provide support. By providing this design,
#-- code, or information as one possible implementation of
#-- this feature, application or standard, Xilinx is making no
#-- representation that this implementation is free from any
#-- claims of infringement. You are responsible for
#-- obtaining any rights you may require for your implementation.
#-- Xilinx expressly disclaims any warranty whatsoever with
#-- respect to the adequacy of the implementation, including
#-- but not limited to any warranties or representations that this
#-- implementation is free from claims of infringement, implied
#-- warranties of merchantability or fitness for a particular
#-- purpose.
#--
#-- Xilinx products are not intended for use in life support
#-- appliances, devices, or systems. Use in such applications is
#-- expressly prohibited.
#--
#-- Any modifications that are made to the Source Code are
#-- done at the user's sole risk and will be unsupported.
#--
#-- This copyright and support notice must be retained as part
#-- of this text at all times. (c) Copyright 1995-2008 Xilinx, Inc.
#-- All rights reserved.
*******************************************************************************/
`timescale 1 ps / 1 ps

module tid_bram #( parameter TCQ = 100 ) 
  (
  // System
  input               lnk_clk,      // Link clock
  input               lnk_reset_n,  // Active low reset
  output reg          rram_rdy,     // Indicates that the TID BRAM is ready following reset
  output reg  [0:8]   rram_pkt_cnt, // Count of oustanding packets in TID BRAM

  // IREQ Generator
  input       [0:8]   g_rram_addra, // Address from IREQ Generator into TID BRAM
  input       [0:20]  g_rram_dia,   // Write data into TID BRAM from IREQ Generator
  input               g_rram_wea,   // Write enable from IREQ Generator
  output      [0:20]  rram_doa,     // Read data from TID BRAM to IREQ Generator

  // IRESP Handler
  input       [0:8]   h_rram_addrb, // Address from IRESP Handler into TID BRAM
  input               h_rram_web,   // Write enable from IREQ Generator
  output      [0:20]  rram_dob      // Read data from TID BRAM to IRESP Handler
  );

  // IREQ Generator
  wire  [0:31]  rram_doa_int;

  // IRESP Handler
  wire  [0:31]  rram_dob_int;

  // Reset Circuitry
  wire  [0:8]   rram_addrb;
  wire          rram_web;
  reg   [0:9]   addr_reset;

  
  // Construct TID BRAM from a RAMB36 primitive configured as 1kx36.
  // It is in READ_FIRST mode so tha the previous contents can be
  // read out by both the IREQ Generator and IRESP Handler prior to
  // writing to it. This is necessary to allow the IREQ Generator
  // to check that it is not overwriting a valid entry. It allows
  // the IRESP Handler to get the information it needs to compare
  // response packets before clearing the valid entry.
  RAMB36 #(
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)
    ) rram (
    .DOA(rram_doa_int),
    .DOB(rram_dob_int),
    .DOPA( ),
    .DOPB( ),
    .ADDRA({1'b0, g_rram_addra, 6'b0}),
    .ADDRB({1'b0, rram_addrb, 6'b0}),
    .CLKA(lnk_clk),
    .CLKB(lnk_clk),
    .DIA({11'b0,g_rram_dia}),
    .DIB(32'b0),
    .DIPA(4'b0),
    .DIPB(4'b0),
    .ENA(1'b1),
    .ENB(1'b1),
    .REGCEA(1'b0),
    .REGCEB(1'b0),
    .SSRA(~lnk_reset_n),
    .SSRB(~lnk_reset_n),
    .WEA({4{g_rram_wea}}),
    .WEB({4{rram_web}}),
    .CASCADEOUTLATA(),
    .CASCADEOUTLATB(),
    .CASCADEOUTREGA(),
    .CASCADEOUTREGB(),
    .CASCADEINLATA(),
    .CASCADEINLATB(),
    .CASCADEINREGA(),
    .CASCADEINREGB()
    );

  // Only the lower 21 bits of the BRAM are used.
  assign rram_doa = rram_doa_int[11:31];
  assign rram_dob = rram_dob_int[11:31];


  // The TID BRAM data must be reset to zeros when a lnk_reset_n is
  // issued. Otherwise, the valid bit will not be cleared and will 
  // cause erroneous errors when the IREQ Generator checks this bit.
  // Port B is used since the write data is already tied to zero. To
  // clear the contents, zeros will be written to each entry. When
  // complete, it will indicate to the other modules that it is ready
  // following the reset.
  always @(posedge lnk_clk or negedge lnk_reset_n) begin
    if (~lnk_reset_n) begin
      rram_rdy    <= #TCQ 1'b0;
      addr_reset  <= #TCQ 9'b0;
    end
    else if (addr_reset[0] == 0) begin
      rram_rdy    <= #TCQ 1'b0;
      addr_reset  <= #TCQ addr_reset + 1;
    end
    else begin
      rram_rdy    <= #TCQ 1'b1;
      addr_reset  <= #TCQ addr_reset;
    end
  end   

  assign rram_web   = ~rram_rdy || h_rram_web;
  assign rram_addrb = rram_rdy ? h_rram_addrb : addr_reset[1:9];


  // Generate an outstanding packet count contained in the TID BRAM.
  // Increment the cound if the IREQ Generator writes without an
  // IRESP Handler read. Alternatively, decrement the count if the
  // IRESP Handler reads wihtout an IREQ Generator write. If there
  // are simultaneous reads and writes or no reads and writes, the
  // count stays the same.
  always @(posedge lnk_clk or negedge lnk_reset_n) begin
    if (~lnk_reset_n)
      rram_pkt_cnt <= #TCQ 9'h000;
    else
       case({g_rram_wea, h_rram_web})
         2'b00: rram_pkt_cnt <= #TCQ rram_pkt_cnt;
         2'b01: rram_pkt_cnt <= #TCQ rram_pkt_cnt - 1;
         2'b10: rram_pkt_cnt <= #TCQ rram_pkt_cnt + 1;
         2'b11: rram_pkt_cnt <= #TCQ rram_pkt_cnt;
       endcase
  end  

endmodule
