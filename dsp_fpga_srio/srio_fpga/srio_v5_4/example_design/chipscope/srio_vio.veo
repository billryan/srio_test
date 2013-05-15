///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 1.0
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : srio_vio.veo
// /___/   /\     Timestamp  : Mon May 10 10:02:07 中国标准时间 2010
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
srio_vio YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .SYNC_IN(SYNC_IN), // IN BUS [127:0]
    .SYNC_OUT(SYNC_OUT) // OUT BUS [215:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

