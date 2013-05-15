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
// Copyright 2006 - 2009 Xilinx, Inc.
// All rights reserved.
//
// This disclaimer and copyright notice must be retained as part
// of this file at all times.
//
///////////////////////////////////////////////////////////////////////////////
//
// File name:     srio_v5_4_clk.v
// Rev:           5.4
// Description:   Serial Core Reference Clocking Module
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps


module srio_v5_4_clk #(
          parameter TCQ = 100
         )(
      SYS_CLKP,
      SYS_CLKN,
      REFCLKIN,
      RST_IN,
      REFCLK,
      UCLK,
      UCLK2,
      UCLK_DV4,
		test,
      LOCKED_OUT);

input SYS_CLKP;
input SYS_CLKN;
input REFCLKIN;
input RST_IN;
input test;

output REFCLK;
output UCLK;
output UCLK2;
output UCLK_DV4;
output LOCKED_OUT;

wire CLKFBIN_BUFG;
wire REFCLKIN_BUFG;
wire UCLK2_BUF;
wire UCLK_BUF;
wire UCLK_DV4_BUF;
wire UCLK;
wire UCLK2;
wire test_bufg;


PLL_ADV#(
    .BANDWIDTH("OPTIMIZED"),
    .CLKIN1_PERIOD(6.400),
    .DIVCLK_DIVIDE(1),
    .CLKFBOUT_MULT(4),
    .CLKOUT0_DIVIDE(2),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT2_DIVIDE(16),
    .CLKOUT3_DIVIDE(16),
    .CLKOUT4_DIVIDE(16),
    .CLKOUT5_DIVIDE(16),
    .CLKOUT0_PHASE(0.000),
    .CLKOUT1_PHASE(0.000),
    .CLKOUT2_PHASE(0.000),
    .CLKOUT3_PHASE(0.000),
    .CLKOUT4_PHASE(0.000),
    .CLKOUT5_PHASE(0.000),
    .CLKOUT0_DUTY_CYCLE(0.500),
    .CLKOUT1_DUTY_CYCLE(0.500),
    .CLKOUT2_DUTY_CYCLE(0.500),
    .CLKOUT3_DUTY_CYCLE(0.500),
    .CLKOUT4_DUTY_CYCLE(0.500),
    .CLKOUT5_DUTY_CYCLE(0.500),
    .CLKFBOUT_PHASE(0.0),
    .COMPENSATION("SYSTEM_SYNCHRONOUS"),
    .REF_JITTER(0.1),
    .RESET_ON_LOSS_OF_LOCK("FALSE"))
u_rio_sercore_pll (
    .CLKFBIN(CLKFBIN_BUFG),
    .CLKIN1(REFCLKIN_BUFG),
	 .CLKIN2(test_bufg), 
	 .CLKINSEL(1),	 
    .RST(RST_IN),
    .CLKFBOUT(),
    .CLKOUT0(UCLK2_BUF),
    .CLKOUT1(UCLK_BUF),
    .CLKOUT2(UCLK_DV4_BUF),
    .CLKOUT3(),
    .CLKOUT4(),
    .CLKOUT5(),
    .LOCKED(LOCKED_OUT));


IBUFDS u_refclk_ibufds (
    .I  (SYS_CLKP),
    .IB (SYS_CLKN),
    .O  (REFCLK));
	 
BUFG test_bufg_a (
    .I  (test),
    .O  (test_bufg));
	 
BUFG u_refclkin_bufg(
    .I (REFCLKIN),
    .O (REFCLKIN_BUFG));

BUFG u_uclk_bufg (
    .I (UCLK_BUF),
    .O (UCLK));

BUFG u_uclk2_bufg (
    .I (UCLK2_BUF),
    .O (UCLK2));

BUFG u_uclkdv4_bufg (
    .I  (UCLK_DV4_BUF),
    .O  (UCLK_DV4));


assign CLKFBIN_BUFG = UCLK;

endmodule
