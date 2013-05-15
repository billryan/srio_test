///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 1.0
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : rio_log_io_v5_4.veo
// /___/   /\     Timestamp  : Thu Apr 29 15:49:57 中国标准时间 2010
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
rio_log_io_v5_4 YourInstanceName (
    .clk(clk), // IN
    .reset_n(reset_n), // IN
    .rx_sof_n_i(rx_sof_n_i), // IN
    .rx_eof_n_i(rx_eof_n_i), // IN
    .rx_vld_n_i(rx_vld_n_i), // IN
    .rx_crf_i(rx_crf_i), // IN
    .rx_rdy_n_o(rx_rdy_n_o), // OUT
    .rx_rem_i(rx_rem_i), // IN BUS [0:2]
    .rx_data_i(rx_data_i), // IN BUS [0:63]
    .tx_sof_n_o(tx_sof_n_o), // OUT
    .tx_eof_n_o(tx_eof_n_o), // OUT
    .tx_vld_n_o(tx_vld_n_o), // OUT
    .tx_crf_o(tx_crf_o), // OUT
    .tx_dsc_n_o(tx_dsc_n_o), // OUT
    .tx_rdy_n_i(tx_rdy_n_i), // IN
    .tx_rem_o(tx_rem_o), // OUT BUS [0:2]
    .tx_data_o(tx_data_o), // OUT BUS [0:63]
    .tx_resp_only_i(tx_resp_only_i), // IN
    .tx_response_o(tx_response_o), // OUT
    .treq_sof_n_o(treq_sof_n_o), // OUT
    .treq_eof_n_o(treq_eof_n_o), // OUT
    .treq_vld_n_o(treq_vld_n_o), // OUT
    .treq_rdy_n_i(treq_rdy_n_i), // IN
    .treq_prio_o(treq_prio_o), // OUT BUS [0:1]
    .treq_crf_o(treq_crf_o), // OUT
    .treq_ftype_o(treq_ftype_o), // OUT BUS [0:3]
    .treq_ttype_o(treq_ttype_o), // OUT BUS [0:3]
    .treq_dest_id_o(treq_dest_id_o), // OUT BUS [0:7]
    .treq_src_id_o(treq_src_id_o), // OUT BUS [0:7]
    .treq_tid_o(treq_tid_o), // OUT BUS [0:7]
    .treq_addr_o(treq_addr_o), // OUT BUS [0:33]
    .treq_byte_en_n_o(treq_byte_en_n_o), // OUT BUS [0:7]
    .treq_byte_count_o(treq_byte_count_o), // OUT BUS [0:8]
    .treq_data_o(treq_data_o), // OUT BUS [0:63]
    .treq_db_info_o(treq_db_info_o), // OUT BUS [0:15]
    .treq_msg_len_o(treq_msg_len_o), // OUT BUS [0:3]
    .treq_msg_seg_o(treq_msg_seg_o), // OUT BUS [0:3]
    .treq_mbox_o(treq_mbox_o), // OUT BUS [0:5]
    .treq_letter_o(treq_letter_o), // OUT BUS [0:1]
    .tresp_sof_n_i(tresp_sof_n_i), // IN
    .tresp_eof_n_i(tresp_eof_n_i), // IN
    .tresp_vld_n_i(tresp_vld_n_i), // IN
    .tresp_dsc_n_i(tresp_dsc_n_i), // IN
    .tresp_rdy_n_o(tresp_rdy_n_o), // OUT
    .tresp_crf_i(tresp_crf_i), // IN
    .tresp_prio_i(tresp_prio_i), // IN BUS [0:1]
    .tresp_ftype_i(tresp_ftype_i), // IN BUS [0:3]
    .tresp_ttype_i(tresp_ttype_i), // IN BUS [0:3]
    .tresp_dest_id_i(tresp_dest_id_i), // IN BUS [0:7]
    .tresp_src_id_i(tresp_src_id_i), // IN BUS [0:7]
    .tresp_status_i(tresp_status_i), // IN BUS [0:3]
    .tresp_tid_i(tresp_tid_i), // IN BUS [0:7]
    .tresp_no_data_i(tresp_no_data_i), // IN
    .tresp_data_i(tresp_data_i), // IN BUS [0:63]
    .tresp_msg_seg_i(tresp_msg_seg_i), // IN BUS [0:3]
    .tresp_mbox_i(tresp_mbox_i), // IN BUS [0:1]
    .tresp_letter_i(tresp_letter_i), // IN BUS [0:1]
    .iresp_sof_n_o(iresp_sof_n_o), // OUT
    .iresp_eof_n_o(iresp_eof_n_o), // OUT
    .iresp_vld_n_o(iresp_vld_n_o), // OUT
    .iresp_local_o(iresp_local_o), // OUT
    .iresp_rdy_n_i(iresp_rdy_n_i), // IN
    .iresp_prio_o(iresp_prio_o), // OUT BUS [0:1]
    .iresp_ftype_o(iresp_ftype_o), // OUT BUS [0:3]
    .iresp_ttype_o(iresp_ttype_o), // OUT BUS [0:3]
    .iresp_dest_id_o(iresp_dest_id_o), // OUT BUS [0:7]
    .iresp_src_id_o(iresp_src_id_o), // OUT BUS [0:7]
    .iresp_status_o(iresp_status_o), // OUT BUS [0:3]
    .iresp_tid_o(iresp_tid_o), // OUT BUS [0:7]
    .iresp_data_o(iresp_data_o), // OUT BUS [0:63]
    .iresp_crf_o(iresp_crf_o), // OUT
    .iresp_msg_seg_o(iresp_msg_seg_o), // OUT BUS [0:3]
    .iresp_mbox_o(iresp_mbox_o), // OUT BUS [0:1]
    .iresp_letter_o(iresp_letter_o), // OUT BUS [0:1]
    .ireq_sof_n_i(ireq_sof_n_i), // IN
    .ireq_eof_n_i(ireq_eof_n_i), // IN
    .ireq_vld_n_i(ireq_vld_n_i), // IN
    .ireq_local_i(ireq_local_i), // IN
    .ireq_dsc_n_i(ireq_dsc_n_i), // IN
    .master_enable_i(master_enable_i), // IN
    .ireq_rdy_n_o(ireq_rdy_n_o), // OUT
    .ireq_crf_i(ireq_crf_i), // IN
    .ireq_prio_i(ireq_prio_i), // IN BUS [0:1]
    .ireq_ftype_i(ireq_ftype_i), // IN BUS [0:3]
    .ireq_ttype_i(ireq_ttype_i), // IN BUS [0:3]
    .ireq_dest_id_i(ireq_dest_id_i), // IN BUS [0:7]
    .ireq_src_id_i(ireq_src_id_i), // IN BUS [0:7]
    .ireq_tid_i(ireq_tid_i), // IN BUS [0:7]
    .ireq_hop_count_i(ireq_hop_count_i), // IN BUS [0:7]
    .ireq_byte_en_n_i(ireq_byte_en_n_i), // IN BUS [0:7]
    .ireq_byte_count_i(ireq_byte_count_i), // IN BUS [0:8]
    .ireq_addr_i(ireq_addr_i), // IN BUS [0:33]
    .ireq_data_i(ireq_data_i), // IN BUS [0:63]
    .ireq_db_info_i(ireq_db_info_i), // IN BUS [0:15]
    .ireq_msg_len_i(ireq_msg_len_i), // IN BUS [0:3]
    .ireq_msg_seg_i(ireq_msg_seg_i), // IN BUS [0:3]
    .ireq_mbox_i(ireq_mbox_i), // IN BUS [0:5]
    .ireq_letter_i(ireq_letter_i), // IN BUS [0:1]
    .mresp_sof_n_i(mresp_sof_n_i), // IN
    .mresp_eof_n_i(mresp_eof_n_i), // IN
    .mresp_vld_n_i(mresp_vld_n_i), // IN
    .mresp_local_i(mresp_local_i), // IN
    .mresp_rdy_n_o(mresp_rdy_n_o), // OUT
    .mresp_crf_i(mresp_crf_i), // IN
    .mresp_prio_i(mresp_prio_i), // IN BUS [0:1]
    .mresp_ftype_i(mresp_ftype_i), // IN BUS [0:3]
    .mresp_ttype_i(mresp_ttype_i), // IN BUS [0:3]
    .mresp_dest_id_i(mresp_dest_id_i), // IN BUS [0:7]
    .mresp_src_id_i(mresp_src_id_i), // IN BUS [0:7]
    .mresp_tid_i(mresp_tid_i), // IN BUS [0:7]
    .mresp_status_i(mresp_status_i), // IN BUS [0:3]
    .mresp_data_i(mresp_data_i), // IN BUS [0:63]
    .mreq_sof_n_o(mreq_sof_n_o), // OUT
    .mreq_eof_n_o(mreq_eof_n_o), // OUT
    .mreq_vld_n_o(mreq_vld_n_o), // OUT
    .mreq_crf_o(mreq_crf_o), // OUT
    .mreq_local_o(mreq_local_o), // OUT
    .mreq_rdy_n_i(mreq_rdy_n_i), // IN
    .mreq_prio_o(mreq_prio_o), // OUT BUS [0:1]
    .mreq_ftype_o(mreq_ftype_o), // OUT BUS [0:3]
    .mreq_ttype_o(mreq_ttype_o), // OUT BUS [0:3]
    .mreq_dest_id_o(mreq_dest_id_o), // OUT BUS [0:7]
    .mreq_src_id_o(mreq_src_id_o), // OUT BUS [0:7]
    .mreq_tid_o(mreq_tid_o), // OUT BUS [0:7]
    .mreq_offset_o(mreq_offset_o), // OUT BUS [0:20]
    .mreq_byte_en_n_o(mreq_byte_en_n_o), // OUT BUS [0:7]
    .mreq_byte_count_o(mreq_byte_count_o), // OUT BUS [0:8]
    .mreq_data_o(mreq_data_o), // OUT BUS [0:63]
    .mgt_clk(mgt_clk), // IN
    .mgt_reset_n(mgt_reset_n), // IN
    .mgt_a_i(mgt_a_i), // IN BUS [0:23]
    .mgt_di_i(mgt_di_i), // IN BUS [0:31]
    .mgt_wr_n_i(mgt_wr_n_i), // IN BUS [0:3]
    .mgt_rd_n_i(mgt_rd_n_i), // IN
    .mgt_sel_n_i(mgt_sel_n_i), // IN
    .mgt_do_o(mgt_do_o), // OUT BUS [0:31]
    .mgt_rdy_n_o(mgt_rdy_n_o), // OUT
    .log_io_cfg_o(log_io_cfg_o), // OUT BUS [0:255]
    .deviceid_o(deviceid_o) // OUT BUS [0:15]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

