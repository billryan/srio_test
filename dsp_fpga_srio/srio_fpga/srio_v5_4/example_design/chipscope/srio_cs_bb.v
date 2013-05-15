/******************************************************************************

File name:    srio_cs_bb.v
Rev:          5.4
Description:  The ChipScope Black Box wrapper provides
              instatiation templates for the chipscope modules

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

//-------------------------------------------------------------------
//
//  ILA core module declaration
//
//-------------------------------------------------------------------
module phy_ila // synthesis syn_black_box .noprune = 1
  (
    control,
    clk,
    data,
    trig0
  );
  input [35:0] control;
  input clk;
  input [255:0] data;
  input [31:0] trig0;
endmodule

//-------------------------------------------------------------------
//
//  ILA core module declaration
//
//-------------------------------------------------------------------
module rio_ila // synthesis syn_black_box .noprune = 1
  (
    control,
    clk,
    data,
    trig0
  );
  input [35:0] control;
  input clk;
  input [255:0] data;
  input [31:0] trig0;
endmodule

//-------------------------------------------------------------------
//
//  ICON core module declaration
//
//-------------------------------------------------------------------
module srio_icon // synthesis syn_black_box .noprune = 1
  (
      control0,
      control1,
      control2
  );
  output [35:0] control0;
  output [35:0] control1;
  output [35:0] control2;
endmodule

//-------------------------------------------------------------------
//
//  VIO core module declaration
//
//-------------------------------------------------------------------
module srio_vio // synthesis syn_black_box .noprune = 1
  (
    control,
    clk,
    sync_in,
    sync_out
  );
  input  [35:0] control;
  input  clk;
  input  [127:0] sync_in;
  output [215:0] sync_out;
endmodule

