#-----------------------------------------------------------------------------
# NCSIM simulation batch file
#-----------------------------------------------------------------------------

mkdir work

ncvlog -work work $XILINX\verilog\src\glbl.v


#-------------------------------------------------------------------------
# User Example Design
#-------------------------------------------------------------------------
ncvlog -work work -cdslib .\cds.lib -logfile ncvlog.log -update -linedebug -status \
-define SIMULATION -define DISABLE_COLLISION_CHECK \
..\..\example_design\user\fifo_16x190.v \
..\..\example_design\user\history_bram.v \
..\..\example_design\user\initiator_bram.v \
..\..\example_design\user\initiator_user.v \
..\..\example_design\user\ireq_generator.v \
..\..\example_design\user\iresp_handler.v \
..\..\example_design\user\target_user.v \
..\..\example_design\user\target_checker.v \
..\..\example_design\user\tickler.v \
..\..\example_design\user\tid_bram.v \
..\..\example_design\user\user_top.v 
#-----------------------------------------------------------------------------
# Example Register Manager Design
#-----------------------------------------------------------------------------
ncvlog -work work -cdslib .\cds.lib -logfile ncvlog.log -update -linedebug -status \
-define SIMULATION -define DISABLE_COLLISION_CHECK \
..\..\example_design\reg_manager\reg_manager.v 

#-----------------------------------------------------------------------------
# Core Wrapper Design
#-----------------------------------------------------------------------------
ncvlog -work work -cdslib .\cds.lib -logfile ncvlog.log -update -linedebug -status \
-define SIMULATION -define DISABLE_COLLISION_CHECK \
  ..\..\example_design\gtp_wrapper_tile.v \
..\..\example_design\gtp_wrapper.v \
      ..\..\example_design\phy_wrapper.v \
..\..\example_design\rio_wrapper.v \
..\..\example_design\srio_gt_wrapper_v5_1x.v \
..\..\example_design\srio_v5_4_clk.v \
..\..\example_design\rio_reset.v \
..\..\example_design\srio_v5_4_top.v
 
  

#-----------------------------------------------------------------------------
# Testing Design
#-----------------------------------------------------------------------------
ncvlog -work work -cdslib .\cds.lib -logfile ncvlog.log -update -linedebug -status \
-define SIMULATION -define DISABLE_COLLISION_CHECK \
..\..\simulation\ep_tb.v \
..\..\simulation\ep_sim.v \
..\..\simulation\sys_clk_gen.v \
..\..\simulation\user_sim_host.v 

#-----------------------------------------------------------------------------
# Core Simulation Netlists
#-----------------------------------------------------------------------------
ncvlog -work work -cdslib .\cds.lib -logfile ncvlog.log -update -linedebug -status \
-define SIMULATION -define DISABLE_COLLISION_CHECK \
../../srio_phy_v5_4.v \
../../rio_log_io_v5_4.v \
../../rio_buffer.v

#-----------------------------------------------------------------------------
# Elaborate the Design
#-----------------------------------------------------------------------------
ncelab -work work -logfile ncelab.log -access +wc -status \
-loadpli1 swiftpli:swift_boot -notimingchecks -TIMESCALE 10ps/1ps \
work.ep_tb work.glbl 

#-----------------------------------------------------------------------------
# Simulate the Design
#-----------------------------------------------------------------------------
ncsim -input "@database -open -shm nc; probe -create -database nc -all -depth all; run; exit" work.ep_tb
