///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 1.0
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : srio_phy_v5_4.veo
// /___/   /\     Timestamp  : Thu Apr 29 15:53:32 中国标准时间 2010
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
srio_phy_v5_4 YourInstanceName (
    .uclk(uclk), // IN
    .uclk_dv4(uclk_dv4), // IN
    .uclk_lock(uclk_lock), // IN
    .sys_reset_n(sys_reset_n), // IN
    .lnk_td(lnk_td), // IN BUS [0:63]
    .lnk_trem(lnk_trem), // IN BUS [0:2]
    .lnk_tsof_n(lnk_tsof_n), // IN
    .lnk_teof_n(lnk_teof_n), // IN
    .lnk_tsrc_rdy_n(lnk_tsrc_rdy_n), // IN
    .lnk_tsrc_dsc_n(lnk_tsrc_dsc_n), // IN
    .lnk_mcast_req_n(lnk_mcast_req_n), // IN
    .lnk_rbuf_stat(lnk_rbuf_stat), // IN BUS [0:4]
    .lnk_rdst_rdy_n(lnk_rdst_rdy_n), // IN
    .lnk_rdst_dsc_n(lnk_rdst_dsc_n), // IN
    .lnk_linkreset_n(lnk_linkreset_n), // IN
    .force_reinit(force_reinit), // IN
    .mgt_clk(mgt_clk), // IN
    .mgt_reset_n(mgt_reset_n), // IN
    .mgt_a(mgt_a), // IN BUS [0:11]
    .mgt_sel_n(mgt_sel_n), // IN
    .mgt_wr_n(mgt_wr_n), // IN BUS [0:3]
    .mgt_rd_n(mgt_rd_n), // IN
    .mgt_di(mgt_di), // IN BUS [0:31]
    .fast_train(fast_train), // IN
    .crf_bit_tx(crf_bit_tx), // IN
    .cfg_out(cfg_out), // OUT BUS [0:511]
    .lnk_tlast_ack(lnk_tlast_ack), // OUT BUS [0:4]
    .lnk_tnext_fm(lnk_tnext_fm), // OUT BUS [0:4]
    .lnk_tbuf_stat(lnk_tbuf_stat), // OUT BUS [0:4]
    .lnk_trdy_n(lnk_trdy_n), // OUT
    .lnk_tdst_rdy_n(lnk_tdst_rdy_n), // OUT
    .lnk_tdst_dsc_n(lnk_tdst_dsc_n), // OUT
    .lnk_mcast_ack_n(lnk_mcast_ack_n), // OUT
    .lnk_rd(lnk_rd), // OUT BUS [0:63]
    .lnk_rrem(lnk_rrem), // OUT BUS [0:2]
    .lnk_rrdy_n(lnk_rrdy_n), // OUT
    .lnk_rsof_n(lnk_rsof_n), // OUT
    .lnk_reof_n(lnk_reof_n), // OUT
    .lnk_rsrc_rdy_n(lnk_rsrc_rdy_n), // OUT
    .lnk_rsrc_dsc_n(lnk_rsrc_dsc_n), // OUT
    .lnk_porterr_n(lnk_porterr_n), // OUT
    .lnk_pna_n(lnk_pna_n), // OUT
    .resp_time_out(resp_time_out), // OUT BUS [0:23]
    .master_enable(master_enable), // OUT
    .rst_uclk_n(rst_uclk_n), // OUT
    .lnk_reset_n(lnk_reset_n), // OUT
    .lnk_mce_dec_n(lnk_mce_dec_n), // OUT
    .mgt_do(mgt_do), // OUT BUS [0:31]
    .mgt_rdy_n(mgt_rdy_n), // OUT
    .mgt_int_n(mgt_int_n), // OUT
    .mode_sel(mode_sel), // OUT
    .port_initialized(port_initialized), // OUT
    .crf_bit_rx(crf_bit_rx), // OUT
    .rxbuferr(rxbuferr), // IN
    .rxcharisk(rxcharisk), // IN BUS [0:1]
    .rxdisperr(rxdisperr), // IN BUS [0:1]
    .rxnotintable(rxnotintable), // IN BUS [0:1]
    .rxdata(rxdata), // IN BUS [0:15]
    .rx_buf_rst(rx_buf_rst), // OUT
    .txinhibit(txinhibit), // OUT
    .txcharisk(txcharisk), // OUT BUS [0:1]
    .txdata(txdata) // OUT BUS [0:15]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

