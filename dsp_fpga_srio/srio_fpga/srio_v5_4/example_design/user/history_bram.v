/******************************************************************************

File name:    history_bram.v
Rev:          5.4
Description:  This is the History BRAM module of the User Design. It 
              is used to store information of outgoing IREQ and incoming 
              IRESP packets. This history of previous transactions can 
              be used to debug any errors. There are separate memory 
              spaces for IREQ and IRESP packets.

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

module history_bram #(
  parameter TCQ = 100
)(

  // System
  input           lnk_clk,      // Link clock
  input           lnk_reset_n,  // Active low reset

  // IREQ Generator
  input   [0:8]   g_hist_addra, // Address from IREQ Generator into History BRAM
  input   [0:35]  g_hist_dia,   // Write data into History BRAM from IREQ Generator
  input           g_hist_wea,   // Write enable from IREQ Generator

  // IRESP Handler
  input   [0:8]   h_hist_addrb, // Address from IRESP Handler into History BRAM
  input   [0:35]  h_hist_dib,   // Write data into History BRAM from IRESP Generator
  input           h_hist_web,   // Write enable from IREQ Generator

  // Read Port
  input           hist_rd_en,   // Read enable for the History BRAM
  input   [0:8]   hist_rd_addr, // Read address for complete History BRAM memory space
  output  [0:35]  hist_dout     // Read data from History BRAM
  );

  wire  [0:8] hist_addra;
  wire        hist_wea;
  
  // The History BRAM will be constructed from a RAMB36 primitve configured
  // as 1kx36. Only half of the memory space is needed (256 IREQ TIDs + 256
  // IRESP TIDs).
  RAMB36 #(
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)
    ) hist_ram (
    .DOA(hist_dout[4:35]),
    .DOB( ),
    .DOPA(hist_dout[0:3]),
    .DOPB( ),
    .ADDRA({1'b0, hist_addra, 6'b0}),
    .ADDRB({1'b0, h_hist_addrb, 6'b0}),
    .CLKA(lnk_clk),
    .CLKB(lnk_clk),
    .DIA(g_hist_dia[4:35]),
    .DIB(h_hist_dib[4:35]),
    .DIPA(g_hist_dia[0:3]),
    .DIPB(h_hist_dib[0:3]),
    .ENA(1'b1),
    .ENB(1'b1),
    .REGCEA(1'b0),
    .REGCEB(1'b0),
    .SSRA(~lnk_reset_n),
    .SSRB(~lnk_reset_n),
    .WEA({4{hist_wea}}),
    .WEB({4{h_hist_web}}),
    .CASCADEOUTLATA(),
    .CASCADEOUTLATB(),
    .CASCADEOUTREGA(),
    .CASCADEOUTREGB(),
    .CASCADEINLATA(),
    .CASCADEINLATB(),
    .CASCADEINREGA(),
    .CASCADEINREGB()
    );


  // Reads take precedence over IREQ Generator writes
  assign hist_addra = hist_rd_en ? hist_rd_addr : g_hist_addra;

  // Since reads take precedence, a write will only occur if the write enable
  // is asserted and there is no read enable
  assign hist_wea = g_hist_wea & ~hist_rd_en;


endmodule
