/******************************************************************************

File name:    rio_reset.v
Rev:          5.4
Description:  This module issues a lnk_linkreset_n when a system
              reset occurs. This causes the SRIO PHY to send four
              link reset control symbols to the connected device
              forcing it to reset. Once this link goes down, a 
              system reset is then issued to the SRIO PHY. This
              reset sequence is necessary to prevent ackIDs from
              getting out of sync.


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

module rio_reset #( parameter TCQ = 100 ) 
  (
  input       lnk_clk,
  input       link_reset_n,
  input       port_initialized,
  output  reg sys_reset_n,
  output  reg lnk_linkreset_n
  );

  // Reset State Machine
  localparam  IDLE       = 4'b0001;
  localparam  LINKRESET  = 4'b0010;
  localparam  PHY_RESET1 = 4'b0100;
  localparam  PHY_RESET2 = 4'b1000;

  // Internal declarations
  reg   [0:3]   reset_state = IDLE;
  reg   [0:3]   reset_next_state;  


  always@(posedge lnk_clk)
    reset_state <= #TCQ reset_next_state;  


  always @(reset_state or link_reset_n or port_initialized)
    casex (reset_state)

      IDLE: begin
        // Current State Outputs
        sys_reset_n     = 1'b1;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        if (~link_reset_n)
          reset_next_state = LINKRESET;
        else
          reset_next_state = IDLE;
      end
      
      LINKRESET: begin
        // Current State Outputs
        sys_reset_n     = 1'b1;
        lnk_linkreset_n = 1'b0;
        // Next State Outputs
        if (~port_initialized)
          reset_next_state = PHY_RESET1;
        else
          reset_next_state = LINKRESET;
      end

      PHY_RESET1: begin
        // Current State Outputs
        sys_reset_n     = 1'b0;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        reset_next_state = PHY_RESET2;
      end

      PHY_RESET2: begin
        // Current State Outputs
        sys_reset_n     = 1'b0;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        if (~link_reset_n)
          reset_next_state = PHY_RESET2;
        else
          reset_next_state = IDLE;
      end

      default: begin
        // Current State Outputs
        sys_reset_n     = 1'b1;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        reset_next_state = IDLE;
      end
    
    endcase

endmodule
