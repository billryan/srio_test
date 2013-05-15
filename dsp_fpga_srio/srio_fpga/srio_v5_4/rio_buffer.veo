///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 1.0
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : rio_buffer.veo
// /___/   /\     Timestamp  : Thu Apr 29 15:51:44 中国标准时间 2010
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
rio_buffer YourInstanceName (
    .PHY_CLK(PHY_CLK), // IN
    .LOG_CLK(LOG_CLK), // IN
    .MGT_CLK(MGT_CLK), // IN
    .PHY_RST_N(PHY_RST_N), // IN
    .LOG_RST_N(LOG_RST_N), // IN
    .MGT_RST_N(MGT_RST_N), // IN
    .TX_SOF_N_O(TX_SOF_N_O), // IN
    .TX_VLD_N_O(TX_VLD_N_O), // IN
    .TX_EOF_N_O(TX_EOF_N_O), // IN
    .TX_DSC_N_O(TX_DSC_N_O), // IN
    .TX_CRF_O(TX_CRF_O), // IN
    .TX_DATA_O(TX_DATA_O), // IN BUS [0:63]
    .TX_REM_O(TX_REM_O), // IN BUS [0:1]
    .TX_RESPONSE_O(TX_RESPONSE_O), // IN
    .TX_RDY_N_I(TX_RDY_N_I), // OUT
    .TX_RESP_ONLY_I(TX_RESP_ONLY_I), // OUT
    .RX_RDY_N_O(RX_RDY_N_O), // IN
    .RX_SOF_N_I(RX_SOF_N_I), // OUT
    .RX_EOF_N_I(RX_EOF_N_I), // OUT
    .RX_VLD_N_I(RX_VLD_N_I), // OUT
    .RX_CRF_I(RX_CRF_I), // OUT
    .RX_REM_I(RX_REM_I), // OUT BUS [0:2]
    .RX_DATA_I(RX_DATA_I), // OUT BUS [0:63]
    .PCFG_MASTER_ENABLE(PCFG_MASTER_ENABLE), // IN
    .LNK_TD(LNK_TD), // OUT BUS [0:63]
    .LNK_TREM(LNK_TREM), // OUT BUS [0:2]
    .LNK_TCRF(LNK_TCRF), // OUT
    .LNK_TEOF_N(LNK_TEOF_N), // OUT
    .LNK_TSOF_N(LNK_TSOF_N), // OUT
    .LNK_TSRC_RDY_N(LNK_TSRC_RDY_N), // OUT
    .LNK_TSRC_DSC_N(LNK_TSRC_DSC_N), // OUT
    .LNK_TDST_RDY_N(LNK_TDST_RDY_N), // IN
    .LNK_TDST_DSC_N(LNK_TDST_DSC_N), // IN
    .LNK_TLAST_ACK(LNK_TLAST_ACK), // IN BUS [0:4]
    .LNK_TNEXT_FM(LNK_TNEXT_FM), // IN BUS [0:4]
    .LNK_RX_BUF_STAT(LNK_RX_BUF_STAT), // IN BUS [0:4]
    .LNK_RSOF_N(LNK_RSOF_N), // IN
    .LNK_REOF_N(LNK_REOF_N), // IN
    .LNK_RSRC_RDY_N(LNK_RSRC_RDY_N), // IN
    .LNK_RSRC_DSC_N(LNK_RSRC_DSC_N), // IN
    .LNK_RREM(LNK_RREM), // IN BUS [0:2]
    .LNK_RD(LNK_RD), // IN BUS [0:63]
    .LNK_RCRF(LNK_RCRF), // IN
    .LNK_RDST_DSC_N(LNK_RDST_DSC_N), // OUT
    .LNK_RDST_RDY_N(LNK_RDST_RDY_N), // OUT
    .LNK_BUF_STAT(LNK_BUF_STAT), // OUT BUS [0:4]
    .CFG_IN(CFG_IN), // OUT BUS [0:63]
    .MGT_RD_N(MGT_RD_N), // IN
    .MGT_WR_N(MGT_WR_N), // IN BUS [0:3]
    .MGT_SEL_N(MGT_SEL_N), // IN
    .MGT_A(MGT_A), // IN BUS [0:11]
    .MGT_DI(MGT_DI), // IN BUS [0:31]
    .MGT_DO(MGT_DO), // OUT BUS [0:31]
    .MGT_RDY_N(MGT_RDY_N) // OUT
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

