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
// File name:     ep_tb.v
// Rev:           5.4
// Description:   Testbench for the Xilinx RapidIO endpoint solution
//                demonstrating a user application example.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ps/1ps

`define SIMULATION 1

module ep_tb #(
  parameter TCQ = 100
);


   // Internal regs and nets declaration

   wire       sys_clk;
   wire       sys_clk_sim;
   reg        ep_tb_reset_n;

   wire       srio_txp0;
   wire       srio_txn0;
   wire       srio_txp0_sim;
   wire       srio_txn0_sim;
   wire       srio_rxp0;
   wire       srio_rxn0;
   wire       srio_rxp0_sim;
   wire       srio_rxn0_sim;

   assign     srio_rxp0 = srio_txp0_sim;
   assign     srio_rxn0 = srio_txn0_sim;
   assign     srio_rxp0_sim = srio_txp0;
   assign     srio_rxn0_sim = srio_txn0;

   // Instantiations

   // Generated core is instantiated in both the ep and the ep_sim
   srio_v5_4_top #(
          .FAST_TRAIN_MODE (1'b1),
          .SRIO_VIO        (0),  // Disable VIO components for simulation
          .TCQ             (TCQ)
   ) ep (
          // Outputs
          .srio_txp0(srio_txp0),
          .srio_txn0(srio_txn0),
          .sclk_n(),
          .sclk_m(),
          .sclk_sel(),
          .sclk_mr(),
          .led0(),

          // Inputs
          .sclk_reset(),
          .sys_clkp(sys_clk),
          .sys_clkn(~sys_clk),
          .local_reset(~ep_tb_reset_n), // Assumes incoming clock is active high
          .link_reset(1'b0),
          .srio_rxp0(srio_rxp0),
          .srio_rxn0(srio_rxn0)
          );


   ep_sim #(
      .TCQ (TCQ)
   ) ep_sim (
                  // Outputs
                  .srio_txp0(srio_txp0_sim),
                  .srio_txn0(srio_txn0_sim),

                  // Inputs
                  .sys_clkp(sys_clk_sim),
                  .sys_clkn(~sys_clk_sim),
                  .sys_reset_n(ep_tb_reset_n),
                  .srio_rxp0(srio_rxp0_sim),
                  .srio_rxn0(srio_rxn0_sim)
                  );

  // System clock generator
  sys_clk_gen #(
    .TCQ (TCQ),
    .offset(0),
    .halfcycle(3200)  // 156.25 MHz system clock to the core
  ) sys_clk_gen (
   .sys_clk(sys_clk)
  );


  sys_clk_gen # (
    .TCQ (TCQ),
    .offset(0),
    .halfcycle(3200)  // 156.25 MHz system clock to the core
  ) sys_clk_gen_sim (
    .sys_clk(sys_clk_sim)
  );

//------------------------------------------------------------------------------
   // Testbench reset


   // Endpoint Testbench System Reset
   integer i;

   initial
     begin
        ep_tb_reset_n         <= 1;
        @(posedge sys_clk);
        for (i=0; i < 40; i = i+1)
          begin
             @(posedge sys_clk);
             ep_tb_reset_n         <= 1;
          end
        @(posedge sys_clk);
        for (i=0; i < 100; i = i+1)
          begin
             @(posedge sys_clk);
             ep_tb_reset_n         <= 0;
          end
        @(posedge sys_clk);
        ep_tb_reset_n         <= 1;
     end

endmodule
