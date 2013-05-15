#/******************************************************************************
#
#    File name   : simulate_mti.do
#    Rev         : 5.4
#    Description : MTI simulation script
#
#-- Copyright(C) 1995-2008 by Xilinx, Inc. All rights reserved.
#-- This text/file contains proprietary, confidential
#-- information of Xilinx, Inc., is distributed under license
#-- from Xilinx, Inc., and may be used, copied and/or
#-- disclosed only pursuant to the terms of a valid license
#-- agreement with Xilinx, Inc. Xilinx hereby grants you
#-- a license to use this text/file solely for design, simulation,
#-- implementation and creation of design files limited
#-- to Xilinx devices or technologies. Use with non-Xilinx
#-- devices or technologies is expressly prohibited and
#-- immediately terminates your license unless covered by
#-- a separate agreement.
#--
#-- Xilinx is providing this design, code, or information
#-- "as is" solely for use in developing programs and
#-- solutions for Xilinx devices. By providing this design,
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
#-- appliances, devices, or systems. Use in such applications are
#-- expressly prohibited.
#--
#-- This copyright and support notice must be retained as part
#-- of this text at all times. (c) Copyright 1995-2008 Xilinx, Inc.
#-- All rights reserved.
#*******************************************************************************/
set work work
vlib work

vlog -mfcu $env(XILINX)/verilog/src/glbl.v


#-----------------------------------------------------------------------------
# User Example Design
#-----------------------------------------------------------------------------
vlog -work work +define+SIMULATION=1 \
../../example_design/user/fifo_16x190.v \
../../example_design/user/history_bram.v \
../../example_design/user/initiator_bram.v \
../../example_design/user/initiator_user.v \
../../example_design/user/ireq_generator.v \
../../example_design/user/iresp_handler.v \
../../example_design/user/target_user.v \
../../example_design/user/target_checker.v \
../../example_design/user/tickler.v \
../../example_design/user/tid_bram.v \
../../example_design/user/user_top.v 

#-----------------------------------------------------------------------------
# Example Register Manager Design
#-----------------------------------------------------------------------------
vlog -work work +define+SIMULATION=1 \
../../example_design/reg_manager/reg_manager.v 

#-----------------------------------------------------------------------------
# Core Wrapper Design
#-----------------------------------------------------------------------------
vlog -work work +define+SIMULATION=1 \
../../example_design/gtp_wrapper_tile.v \
../../example_design/gtp_wrapper.v \
../../example_design/phy_wrapper.v \
../../example_design/rio_wrapper.v \
../../example_design/srio_gt_wrapper_v5_1x.v \
../../example_design/srio_v5_4_clk.v \
../../example_design/rio_reset.v \
../../example_design/srio_v5_4_top.v

#-----------------------------------------------------------------------------
# Testing Design
#-----------------------------------------------------------------------------
vlog -work work +define+SIMULATION=1 \
../../simulation/sys_clk_gen.v \
../../simulation/user_sim_host.v \
../../simulation/ep_sim.v \
../../simulation/ep_tb.v 

#-----------------------------------------------------------------------------
# Core Simulation Netlists
#-----------------------------------------------------------------------------
vlog -work work +define+SIMULATION=1 \
../../srio_phy_v5_4.v \
../../rio_log_io_v5_4.v \
../../rio_buffer.v


vsim -t ps -voptargs="+acc" +notimingchecks -L unisims_ver -L simprims_ver -L secureip -L XilinxCoreLib_ver work.ep_tb work.glbl
view wave signals
add wave *
log -r /*
run -all
