////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: L.57
//  \   \         Application: netgen
//  /   /         Filename: rio_buffer.v
// /___/   /\     Timestamp: Thu Apr 29 15:51:44 2010
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/work_ise/srio_g/tmp/_cg/srio_v5_4/rio_buffer.ngc D:/work_ise/srio_g/tmp/_cg/srio_v5_4/rio_buffer.v 
// Device	: xc5vsx50t-ff1136-1
// Input file	: D:/work_ise/srio_g/tmp/_cg/srio_v5_4/rio_buffer.ngc
// Output file	: D:/work_ise/srio_g/tmp/_cg/srio_v5_4/rio_buffer.v
// # of Modules	: 1
// Design Name	: rio_buffer
// Xilinx        : C:\Xilinx\11.1\ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module rio_buffer (
  MGT_CLK, RX_SOF_N_I, LNK_RSRC_RDY_N, TX_CRF_O, LNK_REOF_N, LOG_RST_N, MGT_RDY_N, TX_RDY_N_I, PHY_CLK, MGT_RST_N, LNK_RDST_DSC_N, LNK_TSRC_DSC_N, 
LNK_RCRF, PCFG_MASTER_ENABLE, TX_EOF_N_O, MGT_SEL_N, LNK_TDST_RDY_N, TX_DSC_N_O, LOG_CLK, LNK_RSOF_N, RX_CRF_I, LNK_TEOF_N, TX_VLD_N_O, RX_RDY_N_O, 
LNK_TCRF, MGT_RD_N, LNK_RSRC_DSC_N, RX_EOF_N_I, PHY_RST_N, LNK_RDST_RDY_N, TX_SOF_N_O, LNK_TSRC_RDY_N, TX_RESPONSE_O, LNK_TSOF_N, TX_RESP_ONLY_I, 
RX_VLD_N_I, LNK_TDST_DSC_N, RX_DATA_I, CFG_IN, LNK_TREM, MGT_DO, LNK_TD, RX_REM_I, LNK_BUF_STAT, TX_DATA_O, MGT_A, LNK_TLAST_ACK, TX_REM_O, LNK_RD, 
MGT_DI, LNK_TNEXT_FM, MGT_WR_N, LNK_RX_BUF_STAT, LNK_RREM
)/* synthesis syn_black_box syn_noprune=1 */;
  input MGT_CLK;
  output RX_SOF_N_I;
  input LNK_RSRC_RDY_N;
  input TX_CRF_O;
  input LNK_REOF_N;
  input LOG_RST_N;
  output MGT_RDY_N;
  output TX_RDY_N_I;
  input PHY_CLK;
  input MGT_RST_N;
  output LNK_RDST_DSC_N;
  output LNK_TSRC_DSC_N;
  input LNK_RCRF;
  input PCFG_MASTER_ENABLE;
  input TX_EOF_N_O;
  input MGT_SEL_N;
  input LNK_TDST_RDY_N;
  input TX_DSC_N_O;
  input LOG_CLK;
  input LNK_RSOF_N;
  output RX_CRF_I;
  output LNK_TEOF_N;
  input TX_VLD_N_O;
  input RX_RDY_N_O;
  output LNK_TCRF;
  input MGT_RD_N;
  input LNK_RSRC_DSC_N;
  output RX_EOF_N_I;
  input PHY_RST_N;
  output LNK_RDST_RDY_N;
  input TX_SOF_N_O;
  output LNK_TSRC_RDY_N;
  input TX_RESPONSE_O;
  output LNK_TSOF_N;
  output TX_RESP_ONLY_I;
  output RX_VLD_N_I;
  input LNK_TDST_DSC_N;
  output [0 : 63] RX_DATA_I;
  output [0 : 63] CFG_IN;
  output [0 : 2] LNK_TREM;
  output [0 : 31] MGT_DO;
  output [0 : 63] LNK_TD;
  output [0 : 2] RX_REM_I;
  output [0 : 4] LNK_BUF_STAT;
  input [0 : 63] TX_DATA_O;
  input [0 : 11] MGT_A;
  input [0 : 4] LNK_TLAST_ACK;
  input [0 : 1] TX_REM_O;
  input [0 : 63] LNK_RD;
  input [0 : 31] MGT_DI;
  input [0 : 4] LNK_TNEXT_FM;
  input [0 : 3] MGT_WR_N;
  input [0 : 4] LNK_RX_BUF_STAT;
  input [0 : 2] LNK_RREM;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_LNK_TEOF_N;
  wire N100;
  wire N102;
  wire N104;
  wire N106;
  wire N108;
  wire N110;
  wire N112;
  wire N114;
  wire N116;
  wire N118;
  wire N120;
  wire N124;
  wire N136;
  wire N138;
  wire N14;
  wire N152;
  wire N154;
  wire N158;
  wire N16;
  wire N162;
  wire N163;
  wire N164;
  wire N165;
  wire N166;
  wire N167;
  wire N168;
  wire N169;
  wire N18;
  wire N20;
  wire N22;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N48;
  wire N50;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire N72;
  wire N78;
  wire N80;
  wire N83;
  wire N88;
  wire N90;
  wire N92;
  wire N94;
  wire N96;
  wire N98;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc_265 ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[11] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[12] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[13] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[14] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[15] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[16] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[19] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[2] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[20] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[21] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[22] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[23] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[27] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[28] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[29] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[30] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[31] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[11] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[12] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[13] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[14] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[15] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[16] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[19] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[20] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[21] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[22] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[23] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[27] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[28] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[29] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[2] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[30] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[31] ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_rdy_n_not0001 ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ;
  wire \U0/buffer_top_inst/cfg_inst/N2 ;
  wire \U0/buffer_top_inst/cfg_inst/N3 ;
  wire \U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ;
  wire \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_337 ;
  wire \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_and0000 ;
  wire \U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl_339 ;
  wire \U0/buffer_top_inst/cfg_inst/first_rd_340 ;
  wire \U0/buffer_top_inst/cfg_inst/first_rd_and0000 ;
  wire \U0/buffer_top_inst/cfg_inst/first_rd_and0001 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl_356 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm0_not0001 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm1_not0001 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm2_not0001 ;
  wire \U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl_390 ;
  wire \U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl_391 ;
  wire \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_392 ;
  wire \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q_393 ;
  wire \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq_394 ;
  wire \U0/buffer_top_inst/cfg_inst/wm_wr_en_q_395 ;
  wire \U0/buffer_top_inst/cfg_inst/wm_wr_en_q_or0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<0>11 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>1 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>11_404 ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n_or0000_406 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>11 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>111_416 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/N11 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/N14 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/N161 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/N2 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/N3 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/N4 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/N511 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_crf_426 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_and0000_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_mux0000_494 ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_mux0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_not0001 ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_and0000_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_crf ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_576 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_598 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_599 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_or0000_600 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_605 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_we_and0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_rpacket ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_wpacket ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_622 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q_624 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_689 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_or0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_691 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q_695 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_or0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot_709 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0003 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not00015_717 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000175_718 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000192_719 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_in_packet ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00002 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00003 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux00001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux00002 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux00001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux00002 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00002 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00003 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_not0001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_790 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_mux0000_791 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_792 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_mux0000 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_not0001 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/set_empty ;
  wire \U0/buffer_top_inst/rx_buffer_inst/set_empty_single ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>11_807 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000118_809 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000119_810 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and000037_811 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_td_cmp_gt0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_mux0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_not0001 ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_mux0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_not0001 ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[1] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[3] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>11_832 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>11_839 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>11_846 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>11_853 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[0] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[2] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[3] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N100 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N101 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N102 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N711 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N72 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N73 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N74 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N75 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N76 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N77 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N78 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/N99 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>9 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>9 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>9 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>9 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>8 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>9 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_mux0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0001_930 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q_931 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_935 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_not0001_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot_938 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot_940 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot_942 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot_944 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot_946 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot_948 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_rd ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_we ;
  wire \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eof_event_992 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eof_event_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q_996 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_cmp_gt00001_1006 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_1012 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/load_backup_d_1023 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/load_backup_d_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/load_backup_q_1025 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_0_rstpot_1056 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_10_rstpot_1060 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_11_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_11_rstpot_1063 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_12_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_12_rstpot_1066 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_13_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_13_rstpot_1069 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_14_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_14_rstpot_1072 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_15_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_15_rstpot_1075 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_1_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_1_rstpot_1077 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_2_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_2_rstpot_1080 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_3_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_3_rstpot_1083 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_4_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_4_rstpot_1086 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_5_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_5_rstpot_1089 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_6_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_6_rstpot_1092 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_7_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_7_rstpot_1095 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_8_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_8_rstpot_1098 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_9_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_9_rstpot_1101 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>28_1114 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>81_1115 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>84_1116 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_1123 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000014_1127 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000064_1128 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000091_1129 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000149_1130 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000176_1131 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000249_1132 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000276_1133 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000349_1134 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000376_1135 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio0_mask ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_cmp_ge00001_1137 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_1138 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio1_mask ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_cmp_ge00001_1140 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_1141 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio2_mask ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_cmp_ge00001_1143 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_1144 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_or00001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_rstpot_1168 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_1169 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_1171 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000136_1173 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd8 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/resp_retry_1224 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/resp_retry_cmp_eq0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/resp_retry_mux0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/resp_retry_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/set_update_window ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_1238 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_1239 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_1241 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_search_1247 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_search_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_search_cmp_eq0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_search_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_set_1251 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_1254 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_cmp_eq0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[0] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[10] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[11] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[12] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[13] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[14] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[15] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[16] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[17] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[18] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[19] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[1] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[20] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[21] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[22] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[23] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[24] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[25] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[26] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[27] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[28] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[29] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[30] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[31] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[32] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[33] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[34] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[35] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[36] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[37] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[38] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[39] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[3] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[40] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[41] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[42] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[43] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[44] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[45] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[46] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[47] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[48] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[49] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[4] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[50] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[51] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[52] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[53] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[54] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[55] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[56] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[57] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[58] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[59] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[5] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[60] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[61] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[62] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[63] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[64] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[65] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[66] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[67] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[68] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[6] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[7] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[8] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[9] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[1] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[3] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[0] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[1] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[2] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[4] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N39 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TX_resp_only ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_1402 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<0>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<1>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<2>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<3>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<4>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0003 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0003 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0003 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0003 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1475 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000126_1477 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000176_1478 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000026_1479 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000086_1480 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_1481 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_1498 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000126_1500 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000176_1501 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000026_1502 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000086_1503 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_1525 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1526 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_1527 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_1531 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1532 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_1533 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_1585 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1588 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000129_1590 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000153_1591 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000044_1592 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000068_1593 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_1607 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000129_1610 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000044_1611 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000082_1612 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_1848 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1849 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_1850 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_comb ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_1854 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1855 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_1856 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_comb ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q_1860 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q_1861 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_eof_valid_q_or0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_vld_window ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_and0000 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_q_1866 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_raw ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_1869 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM123_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM121_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM122_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM124_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM125_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED ;
  wire [59 : 59] NlwRenamedSig_OI_CFG_IN;
  wire [26 : 26] NlwRenamedSig_OI_MGT_DO;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/BCFG_watermark0 ;
  wire [31 : 27] \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/BCFG_watermark1 ;
  wire [23 : 19] \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/BCFG_watermark2 ;
  wire [15 : 11] \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 ;
  wire [9 : 0] \U0/buffer_top_inst/cfg_inst/mgt_a_q ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm0 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm1 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm2 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat ;
  wire [0 : 0] \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy ;
  wire [4 : 1] \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut ;
  wire [0 : 0] \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_lut ;
  wire [2 : 2] \U0/buffer_top_inst/rx_buffer_inst/Msub_log_count_diff_Madd_lut ;
  wire [3 : 3] \U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut ;
  wire [63 : 0] \U0/buffer_top_inst/rx_buffer_inst/RX_data ;
  wire [2 : 0] \U0/buffer_top_inst/rx_buffer_inst/RX_rem ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/Result ;
  wire [63 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_data ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q ;
  wire [2 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_rrem ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u ;
  wire [63 : 0] \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q ;
  wire [2 : 0] \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d ;
  wire [1 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_data_count ;
  wire [1 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_read_tag ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add ;
  wire [4 : 1] \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async ;
  wire [0 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in ;
  wire [1 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/write_status_cct ;
  wire [4 : 1] \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 ;
  wire [3 : 3] \U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_addsub0000_cy ;
  wire [2 : 2] \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy ;
  wire [2 : 2] \U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_cy ;
  wire [3 : 1] \U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/Result ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/backup_queue_update ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/current_write_tag ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_last_acked ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_next_acked ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q ;
  wire [15 : 0] \U0/buffer_top_inst/tx_buffer_inst/master_list ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/next_read_tag ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/next_write_tag ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already ;
  wire [1 : 1] \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_mux0000 ;
  wire [3 : 1] \U0/buffer_top_inst/tx_buffer_inst/pending_list ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/r0_read_tag ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/r1_read_tag ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/r2_read_tag ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/rd_priority ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/rs_read_tag ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_mux0000 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tag_marker ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/transmit_enable ;
  wire [68 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets ;
  wire [5 : 5] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000 ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 ;
  wire [2 : 1] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 ;
  wire [70 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i ;
  wire [70 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 ;
  wire [70 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i ;
  wire [2 : 1] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/wr_priority ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue ;
  assign
    RX_SOF_N_I = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ,
    MGT_RDY_N = \NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ,
    LNK_TSRC_DSC_N = \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ,
    RX_CRF_I = \U0/buffer_top_inst/rx_buffer_inst/RX_crf_426 ,
    LNK_TEOF_N = NlwRenamedSig_OI_LNK_TEOF_N,
    LNK_TCRF = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [4],
    RX_EOF_N_I = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ,
    LNK_RDST_RDY_N = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ,
    LNK_TSRC_RDY_N = \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ,
    LNK_TSOF_N = \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ,
    RX_VLD_N_I = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ,
    RX_DATA_I[0] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [0],
    RX_DATA_I[1] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [1],
    RX_DATA_I[2] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [2],
    RX_DATA_I[3] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [3],
    RX_DATA_I[4] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [4],
    RX_DATA_I[5] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [5],
    RX_DATA_I[6] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [6],
    RX_DATA_I[7] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [7],
    RX_DATA_I[8] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [8],
    RX_DATA_I[9] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [9],
    RX_DATA_I[10] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [10],
    RX_DATA_I[11] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [11],
    RX_DATA_I[12] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [12],
    RX_DATA_I[13] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [13],
    RX_DATA_I[14] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [14],
    RX_DATA_I[15] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [15],
    RX_DATA_I[16] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [16],
    RX_DATA_I[17] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [17],
    RX_DATA_I[18] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [18],
    RX_DATA_I[19] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [19],
    RX_DATA_I[20] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [20],
    RX_DATA_I[21] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [21],
    RX_DATA_I[22] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [22],
    RX_DATA_I[23] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [23],
    RX_DATA_I[24] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [24],
    RX_DATA_I[25] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [25],
    RX_DATA_I[26] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [26],
    RX_DATA_I[27] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [27],
    RX_DATA_I[28] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [28],
    RX_DATA_I[29] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [29],
    RX_DATA_I[30] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [30],
    RX_DATA_I[31] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [31],
    RX_DATA_I[32] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [32],
    RX_DATA_I[33] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [33],
    RX_DATA_I[34] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [34],
    RX_DATA_I[35] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [35],
    RX_DATA_I[36] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [36],
    RX_DATA_I[37] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [37],
    RX_DATA_I[38] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [38],
    RX_DATA_I[39] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [39],
    RX_DATA_I[40] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [40],
    RX_DATA_I[41] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [41],
    RX_DATA_I[42] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [42],
    RX_DATA_I[43] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [43],
    RX_DATA_I[44] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [44],
    RX_DATA_I[45] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [45],
    RX_DATA_I[46] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [46],
    RX_DATA_I[47] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [47],
    RX_DATA_I[48] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [48],
    RX_DATA_I[49] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [49],
    RX_DATA_I[50] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [50],
    RX_DATA_I[51] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [51],
    RX_DATA_I[52] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [52],
    RX_DATA_I[53] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [53],
    RX_DATA_I[54] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [54],
    RX_DATA_I[55] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [55],
    RX_DATA_I[56] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [56],
    RX_DATA_I[57] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [57],
    RX_DATA_I[58] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [58],
    RX_DATA_I[59] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [59],
    RX_DATA_I[60] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [60],
    RX_DATA_I[61] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [61],
    RX_DATA_I[62] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [62],
    RX_DATA_I[63] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [63],
    CFG_IN[0] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[1] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[2] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[3] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[4] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[5] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[6] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[7] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[8] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[9] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[10] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[11] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[12] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[13] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[14] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[15] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[16] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[17] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[18] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[19] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[20] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[21] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[22] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[23] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[24] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[25] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[26] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[27] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[28] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[29] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[30] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[31] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[32] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[33] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[34] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[35] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[36] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[37] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[38] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[39] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[40] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[41] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[42] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[43] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[44] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[45] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[46] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[47] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[48] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[49] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[50] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[51] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[52] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[53] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[54] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[55] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[56] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[57] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[58] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[59] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[60] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[61] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[62] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[63] = NlwRenamedSig_OI_MGT_DO[26],
    LNK_TREM[0] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [0],
    LNK_TREM[1] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [1],
    LNK_TREM[2] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[0] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[1] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[2] = \U0/buffer_top_inst/cfg_inst/MGT_do[2] ,
    MGT_DO[3] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[4] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[5] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[6] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[7] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[8] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[9] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[10] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[11] = \U0/buffer_top_inst/cfg_inst/MGT_do[11] ,
    MGT_DO[12] = \U0/buffer_top_inst/cfg_inst/MGT_do[12] ,
    MGT_DO[13] = \U0/buffer_top_inst/cfg_inst/MGT_do[13] ,
    MGT_DO[14] = \U0/buffer_top_inst/cfg_inst/MGT_do[14] ,
    MGT_DO[15] = \U0/buffer_top_inst/cfg_inst/MGT_do[15] ,
    MGT_DO[16] = \U0/buffer_top_inst/cfg_inst/MGT_do[16] ,
    MGT_DO[17] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[18] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[19] = \U0/buffer_top_inst/cfg_inst/MGT_do[19] ,
    MGT_DO[20] = \U0/buffer_top_inst/cfg_inst/MGT_do[20] ,
    MGT_DO[21] = \U0/buffer_top_inst/cfg_inst/MGT_do[21] ,
    MGT_DO[22] = \U0/buffer_top_inst/cfg_inst/MGT_do[22] ,
    MGT_DO[23] = \U0/buffer_top_inst/cfg_inst/MGT_do[23] ,
    MGT_DO[24] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[25] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[26] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[27] = \U0/buffer_top_inst/cfg_inst/MGT_do[27] ,
    MGT_DO[28] = \U0/buffer_top_inst/cfg_inst/MGT_do[28] ,
    MGT_DO[29] = \U0/buffer_top_inst/cfg_inst/MGT_do[29] ,
    MGT_DO[30] = \U0/buffer_top_inst/cfg_inst/MGT_do[30] ,
    MGT_DO[31] = \U0/buffer_top_inst/cfg_inst/MGT_do[31] ,
    LNK_TD[2] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [7],
    LNK_TD[3] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [8],
    LNK_TD[4] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [9],
    LNK_TD[5] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [10],
    LNK_TD[6] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [11],
    LNK_TD[7] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [12],
    LNK_TD[8] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [13],
    LNK_TD[9] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [14],
    LNK_TD[10] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [15],
    LNK_TD[11] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [16],
    LNK_TD[12] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [17],
    LNK_TD[13] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [18],
    LNK_TD[14] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [19],
    LNK_TD[15] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [20],
    LNK_TD[16] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [21],
    LNK_TD[17] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [22],
    LNK_TD[18] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [23],
    LNK_TD[19] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [24],
    LNK_TD[20] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [25],
    LNK_TD[21] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [26],
    LNK_TD[22] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [27],
    LNK_TD[23] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [28],
    LNK_TD[24] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [29],
    LNK_TD[25] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [30],
    LNK_TD[26] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [31],
    LNK_TD[27] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [32],
    LNK_TD[28] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [33],
    LNK_TD[29] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [34],
    LNK_TD[30] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [35],
    LNK_TD[31] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [36],
    LNK_TD[32] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [37],
    LNK_TD[33] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [38],
    LNK_TD[34] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [39],
    LNK_TD[35] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [40],
    LNK_TD[36] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [41],
    LNK_TD[37] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [42],
    LNK_TD[38] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [43],
    LNK_TD[39] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [44],
    LNK_TD[40] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [45],
    LNK_TD[41] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [46],
    LNK_TD[42] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [47],
    LNK_TD[43] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [48],
    LNK_TD[44] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [49],
    LNK_TD[45] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [50],
    LNK_TD[46] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [51],
    LNK_TD[47] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [52],
    LNK_TD[48] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [53],
    LNK_TD[49] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [54],
    LNK_TD[50] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [55],
    LNK_TD[51] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [56],
    LNK_TD[52] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [57],
    LNK_TD[53] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [58],
    LNK_TD[54] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [59],
    LNK_TD[55] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [60],
    LNK_TD[56] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [61],
    LNK_TD[57] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [62],
    LNK_TD[58] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [63],
    LNK_TD[59] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [64],
    LNK_TD[60] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [65],
    LNK_TD[61] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [66],
    LNK_TD[62] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [67],
    LNK_TD[63] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [68],
    RX_REM_I[0] = \U0/buffer_top_inst/rx_buffer_inst/RX_rem [0],
    RX_REM_I[1] = \U0/buffer_top_inst/rx_buffer_inst/RX_rem [1],
    RX_REM_I[2] = \U0/buffer_top_inst/rx_buffer_inst/RX_rem [2],
    LNK_BUF_STAT[0] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [0],
    LNK_BUF_STAT[1] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [1],
    LNK_BUF_STAT[2] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [2],
    LNK_BUF_STAT[3] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [3],
    LNK_BUF_STAT[4] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [4];
  GND   XST_GND (
    .G(NlwRenamedSig_OI_MGT_DO[26])
  );
  VCC   XST_VCC (
    .P(NlwRenamedSig_OI_CFG_IN[59])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_395 ),
    .D(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q_393 ),
    .Q(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq_394 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_395 ),
    .D(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_392 ),
    .Q(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q_393 )
  );
  FDR   \U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl_390 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc_265 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/pulse_wr_wm  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_395 ),
    .Q(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_392 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q  (
    .C(MGT_CLK),
    .D(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_337 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl_390 )
  );
  FD   \U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl_391 ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl_356 )
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [19]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [20]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [21]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [22]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [23]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [27]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [28]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [29]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [30]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [31]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [11]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [12]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [13]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [14]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [15]),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [4])
  );
  FDRE   \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_and0000 ),
    .D(MGT_DI[16]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_337 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/wm_wr_en_q  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_or0000 ),
    .Q(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_395 )
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_0  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm1_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [4]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_1  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm1_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [3]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_2  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm1_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [2]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_3  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm1_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_4  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm1_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [0]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_0  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [4]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_1  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [3]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_2  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [2]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_3  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_4  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm0_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [0]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_0  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm2_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [4]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_1  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm2_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [3]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_2  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm2_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [2]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_3  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm2_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_4  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/mgt_wm2_not0001 ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [0]),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_2  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[2] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[2] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_11  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[11] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[11] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_12  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[12] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[12] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_13  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[13] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[13] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_14  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[14] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[14] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_15  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[15] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[15] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_16  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[16] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[16] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_19  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[19] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[19] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_20  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[20] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[20] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_21  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[21] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[21] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_22  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[22] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[22] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_23  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[23] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[23] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_27  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[27] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[27] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_28  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[28] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[28] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_29  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[29] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[29] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_30  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[30] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[30] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_31  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[31] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[31] )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/first_rd  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/first_rd_and0001 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .S(\U0/buffer_top_inst/cfg_inst/first_rd_and0000 ),
    .Q(\U0/buffer_top_inst/cfg_inst/first_rd_340 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/MGT_rdy_n  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_rdy_n_not0001 ),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/mgt_rd_n_q  (
    .C(MGT_CLK),
    .D(MGT_RD_N),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/mgt_sel_n_q  (
    .C(MGT_CLK),
    .D(MGT_SEL_N),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_0  (
    .C(MGT_CLK),
    .D(MGT_A[0]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_1  (
    .C(MGT_CLK),
    .D(MGT_A[1]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_2  (
    .C(MGT_CLK),
    .D(MGT_A[2]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_3  (
    .C(MGT_CLK),
    .D(MGT_A[3]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_4  (
    .C(MGT_CLK),
    .D(MGT_A[4]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_5  (
    .C(MGT_CLK),
    .D(MGT_A[5]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_6  (
    .C(MGT_CLK),
    .D(MGT_A[6]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_7  (
    .C(MGT_CLK),
    .D(MGT_A[7]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_8  (
    .C(MGT_CLK),
    .D(MGT_A[8]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_9  (
    .C(MGT_CLK),
    .D(MGT_A[9]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9])
  );
  FD   \U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ),
    .Q(\U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl_391 )
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_68  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[68] ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [68])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_67  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[67] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [67])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_66  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[66] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [66])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_65  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[65] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [65])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_64  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[64] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [64])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[63] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [63])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[62] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [62])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[61] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [61])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[60] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [60])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[59] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [59])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[58] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [58])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[57] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [57])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[56] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [56])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[55] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [55])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[54] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [54])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[53] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [53])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[52] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [52])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[51] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [51])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[50] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [50])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[49] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [49])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[48] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [48])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[47] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [47])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[46] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [46])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[45] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [45])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[44] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [44])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[43] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [43])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[42] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [42])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[41] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [41])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[40] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [40])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[39] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [39])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[38] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [38])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[37] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [37])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[36] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [36])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[35] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [35])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[34] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [34])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[33] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [33])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[32] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [32])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[31] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [31])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[30] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [30])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[29] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [29])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[28] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [28])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[27] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [27])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[26] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [26])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[25] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [25])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[24] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [24])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[23] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [23])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[22] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [22])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[21] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [21])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[20] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [20])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[19] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [19])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[18] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [18])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[17] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [17])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[16] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [16])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[15] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [15])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[14] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [14])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[13] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [13])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[12] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [12])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[11] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [11])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[10] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [10])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[9] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [9])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[8] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [8])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[7] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [7])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[6] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [6])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[5] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [5])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[4] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[3] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[1] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[0] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [0])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [1])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a_0  (
    .C(LOG_CLK),
    .D(PCFG_MASTER_ENABLE),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [0])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000 [5]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [0])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_CFG_IN[59]),
    .R(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_or0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_1402 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_vld_window ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q_1861 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_eof_valid_q_or0000 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q_1860 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1475 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_1481 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_1498 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1588 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1849 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_1850 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1855 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_1856 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_1848 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1849 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1855 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_1854 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_1854 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1855 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1849 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_1848 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg_2  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg_1  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg_1  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg_0  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1526 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_1527 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1532 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_1533 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_1525 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1526 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1532 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_1531 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_1531 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_1532 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_1526 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_1525 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg_2  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg_1  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg_1  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg_0  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0003 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0003 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0003 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0003 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count4 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count3 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count1 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count2 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count3 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count2 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count1 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_1585 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count4 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count3 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [3])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count1 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count2 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [2])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count3 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count2 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [2])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count1 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [0])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [3])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [5]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [6]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [7]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [8]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [9]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [10]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [11]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [12]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [13]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [14]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [15]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [16]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [17]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [18]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [19]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [20]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [21]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [22]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [23]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [24]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [25]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [26]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [27]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [28]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [29]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [30]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [31]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [32]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [33]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [34]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [35]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [36]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [37]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [38]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [39]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [40]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [40])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [41]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [41])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [42]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [42])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [43]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [43])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [44]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [44])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [45]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [45])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [46]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [46])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [47]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [47])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [48]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [48])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [49]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [49])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [50]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [50])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [51]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [51])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [52]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [52])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [53]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [53])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [54]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [54])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [55]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [55])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [56]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [56])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [57]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [57])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [58]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [58])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [59]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [59])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [60]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [60])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [61]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [61])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [62]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [62])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [63]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [63])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_64  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [64]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [64])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_65  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [65]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [65])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_66  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [66]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [66])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_67  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [67]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [67])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_68  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [68]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [68])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_69  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [69]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [69])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_70  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [70]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [70])
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[50], TX_DATA_O[51]}),
    .DIB({TX_DATA_O[48], TX_DATA_O[49]}),
    .DIC({TX_DATA_O[46], TX_DATA_O[47]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [13], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [12]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [15], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [14]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [17], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [16]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[62], TX_DATA_O[63]}),
    .DIB({TX_DATA_O[60], TX_DATA_O[61]}),
    .DIC({TX_DATA_O[58], TX_DATA_O[59]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [0]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [2]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [5], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [4]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[56], TX_DATA_O[57]}),
    .DIB({TX_DATA_O[54], TX_DATA_O[55]}),
    .DIC({TX_DATA_O[52], TX_DATA_O[53]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [7], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [6]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [9], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [8]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [11], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [10]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[32], TX_DATA_O[33]}),
    .DIB({TX_DATA_O[30], TX_DATA_O[31]}),
    .DIC({TX_DATA_O[28], TX_DATA_O[29]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [31], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [30]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [33], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [32]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [35], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [34]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[44], TX_DATA_O[45]}),
    .DIB({TX_DATA_O[42], TX_DATA_O[43]}),
    .DIC({TX_DATA_O[40], TX_DATA_O[41]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [19], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [18]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [21], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [20]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [23], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [22]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[38], TX_DATA_O[39]}),
    .DIB({TX_DATA_O[36], TX_DATA_O[37]}),
    .DIC({TX_DATA_O[34], TX_DATA_O[35]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [25], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [24]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [27], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [26]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [29], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [28]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[14], TX_DATA_O[15]}),
    .DIB({TX_DATA_O[12], TX_DATA_O[13]}),
    .DIC({TX_DATA_O[10], TX_DATA_O[11]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [49], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [48]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [51], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [50]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [53], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [52]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[26], TX_DATA_O[27]}),
    .DIB({TX_DATA_O[24], TX_DATA_O[25]}),
    .DIC({TX_DATA_O[22], TX_DATA_O[23]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [37], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [36]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [39], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [38]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [41], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [40]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[20], TX_DATA_O[21]}),
    .DIB({TX_DATA_O[18], TX_DATA_O[19]}),
    .DIC({TX_DATA_O[16], TX_DATA_O[17]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [43], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [42]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [45], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [44]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [47], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [46]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[8], TX_DATA_O[9]}),
    .DIB({TX_DATA_O[6], TX_DATA_O[7]}),
    .DIC({TX_DATA_O[4], TX_DATA_O[5]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [55], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [54]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [57], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [56]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [59], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [58]}),
    .DOD({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<1>_UNCONNECTED , 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({TX_DATA_O[2], TX_DATA_O[3]}),
    .DIB({TX_DATA_O[0], TX_DATA_O[1]}),
    .DIC({TX_CRF_O, TX_RESPONSE_O}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [61], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [60]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [63], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [62]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [65], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [64]}),
    .DOD({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<1>_UNCONNECTED , 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<0>_UNCONNECTED })
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM123  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(TX_DSC_N_O),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM123_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [68])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM121  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(TX_REM_O[1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM121_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [66])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM122  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(TX_REM_O[0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM122_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [67])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM124  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(TX_EOF_N_O),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM124_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [69])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM125  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(TX_SOF_N_O),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM125_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_varindex0000 [70])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_70  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [70]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_69  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [69]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_68  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [68]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_67  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [67]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [67])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_66  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [66]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [66])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_65  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [65]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [65])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_64  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [64]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [64])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [63]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [63])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [62]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [62])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [61]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [61])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [60]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [60])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [59]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [59])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [58]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [58])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [57]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [57])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [56]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [56])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [55]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [55])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [54]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [54])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [53]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [53])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [52]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [52])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [51]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [51])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [50]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [50])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [49]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [49])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [48]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [48])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [47]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [47])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [46]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [46])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [45]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [45])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [44]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [44])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [43]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [43])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [42]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [42])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [41]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [41])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [40]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [40])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [39]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [38]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [37]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [36]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [35]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [34]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [33]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [32]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [31]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [30]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [29]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [28]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [27]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [26]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [25]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [24]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [23]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [22]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [21]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [20]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [19]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [18]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [17]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [16]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [15]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [14]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [13]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [12]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [11]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [10]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [9]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [8]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [7]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [6]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [5]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [0])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_1607 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 )
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>9 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>9 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>9 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>9 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>9 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>6 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>6 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>6 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>6 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>6 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [0])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [1])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [2])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [3])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [0])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [1])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [3])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/rd_priority [0])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [2])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/rd_priority [1])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [0])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [1])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [2])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [3])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [0])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [2])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [3])
  );
  RAM32X1D   \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [0])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [3])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1])
  );
  RAM32X1D #(
    .INIT ( 32'hFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [0])
  );
  RAM32X1D #(
    .INIT ( 32'hFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_search_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_search_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_search_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_search_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3])
  );
  FDRSE   \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_not0001_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_935 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [3])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/load_backup_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/load_backup_q_1025 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/tag_set  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_set_1251 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [64]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_1241 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/wr_priority_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [63]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/wr_priority_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [62]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [3])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/load_backup  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_1023 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/update_window_qq  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_1866 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_1169 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_cmp_eq0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_1254 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [4])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q_931 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_1141 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_1144 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_1138 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_mux0000 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 )
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_mux0000 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n )
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_mux0000 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n )
  );
  FDRSE   \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_not0001 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_and0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 )
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_mux0000 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n )
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_mux0000 [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_and0000 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/resp_retry  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_mux0000 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_1224 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/load_backup_d  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_CFG_IN[59]),
    .R(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_or0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_1023 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q_996 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q  (
    .C(PHY_CLK),
    .D(LNK_TDST_DSC_N),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [0]),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_CFG_IN[59]),
    .R(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_or0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_1169 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_1869 )
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_and0000 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/update_window_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_1866 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [4]),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [3]),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [2]),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [1]),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [0]),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_1171 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q  (
    .C(PHY_CLK),
    .D(PCFG_MASTER_ENABLE),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_1123 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_0  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_1  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_2  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_3  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_4  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [4])
  );
  FDRSE   \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0001_930 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_mux0000 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_not0001 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_mux0000 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1])
  );
  FDRSE   \U0/buffer_top_inst/tx_buffer_inst/tag_search  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_search_or0000 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/tag_search_and0000 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_search_1247 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/eof_event  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/eof_event_and0000 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/eof_event_992 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_1238 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_1239 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_5  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_598 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_4  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux0000 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00001 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00002 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00003 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux0000 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux00001 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux00002 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [4])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [3])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [2])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux0000 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00001 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00002 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00003 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [0])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux0000 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux00001 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux00002 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [5]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [4]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_rem_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_rem [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_rem_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_rem [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_rem_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_rem [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_crf  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_crf ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_426 )
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [3])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [4]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [4])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_5  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [5]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [5])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_6  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [6]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [6])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_7  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [7]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [7])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_8  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [8]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [8])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_9  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [9]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [9])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_10  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [10]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [10])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_11  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [11]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [11])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_12  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [12]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [12])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_13  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [13]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [13])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_14  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [14]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [14])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_15  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [15]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [15])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_16  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [16]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [16])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_17  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [17]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [17])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_18  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [18]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [18])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_19  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [19]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [19])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_20  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [20]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [20])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_21  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [21]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [21])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_22  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [22]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [22])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_23  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [23]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [23])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_24  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [24]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [24])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_25  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [25]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [25])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_26  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [26]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [26])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_27  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [27]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [27])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_28  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [28]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [28])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_29  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [29]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [29])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_30  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [30]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [30])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_31  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [31]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [31])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_32  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [32]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [32])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_33  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [33]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [33])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_34  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [34]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [34])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_35  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [35]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [35])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_36  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [36]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [36])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_37  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [37]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [37])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_38  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [38]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [38])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_39  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [39]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [39])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_40  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [40]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [40])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_41  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [41]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [41])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_42  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [42]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [42])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_43  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [43]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [43])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_44  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [44]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [44])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_45  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [45]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [45])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_46  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [46]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [46])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_47  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [47]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [47])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_48  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [48]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [48])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_49  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [49]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [49])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_50  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [50]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [50])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_51  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [51]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [51])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_52  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [52]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [52])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_53  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [53]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [53])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_54  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [54]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [54])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_55  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [55]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [55])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_56  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [56]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [56])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_57  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [57]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [57])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_58  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [58]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [58])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_59  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [59]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [59])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_60  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [60]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [60])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_61  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [61]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [61])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_62  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [62]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [62])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_63  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [63]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [63])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_605 )
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_576 )
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [4]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [0])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [1])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [2])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [3])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [4])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [4]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [0])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_lut [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>1 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [4])
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_and0000_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_mux0000 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n )
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_and0000_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_mux0000_494 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 )
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_and0000_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_mux0000_791 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_790 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_data_count [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_data_count [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1])
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_not0001 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_mux0000 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_792 )
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_not0001 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 )
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_not0001 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_mux0000 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_4  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_5  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_CFG_IN[59]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_or0000_600 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_599 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [4]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_4  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [4])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_we  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_we_and0000 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_622 )
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RCRF),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q_624 )
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RREM[0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RREM[1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RREM[2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [2])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n_or0000_406 ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n )
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_or0000 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_689 )
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RSOF_N),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q_695 )
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [3])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[4]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [4])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[5]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [5])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[6]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [6])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[7]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [7])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[8]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [8])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[9]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [9])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[10]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [10])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[11]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [11])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[12]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [12])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[13]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [13])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[14]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [14])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[15]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [15])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[16]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [16])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[17]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [17])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[18]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [18])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[19]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [19])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[20]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [20])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[21]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [21])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[22]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [22])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[23]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [23])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[24]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [24])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[25]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [25])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[26]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [26])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[27]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [27])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[28]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [28])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[29]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [29])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[30]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [30])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[31]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [31])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[32]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [32])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[33]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [33])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[34]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [34])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[35]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [35])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[36]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [36])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[37]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [37])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[38]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [38])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[39]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [39])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[40]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [40])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[41]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [41])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[42]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [42])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[43]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [43])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[44]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [44])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[45]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [45])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[46]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [46])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[47]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [47])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[48]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [48])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[49]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [49])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[50]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [50])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[51]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [51])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[52]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [52])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[53]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [53])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[54]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [54])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[55]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [55])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[56]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [56])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[57]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [57])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[58]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [58])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[59]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [59])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[60]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [60])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[61]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [61])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[62]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [62])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[63]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [63])
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_REOF_N),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_691 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_comb1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_1854 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_1856 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/wr_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_comb1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_1848 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_1850 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/rd_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_1531 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_1533 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_1525 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_1527 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000<4>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[11]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000<3>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[12]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000<2>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[13]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000<1>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[14]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000<0>1  (
    .I0(MGT_DI[15]),
    .I1(MGT_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000<4>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[19]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000<3>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[20]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000<2>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[21]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000<1>1  (
    .I0(MGT_DI[22]),
    .I1(MGT_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000<0>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[23]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000<4>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[27]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000<3>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[28]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000<2>1  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[29]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000<1>1  (
    .I0(MGT_DI[30]),
    .I1(MGT_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000<0>1  (
    .I0(MGT_DI[31]),
    .I1(MGT_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000<15>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [4]),
    .I1(PHY_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [15])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000<14>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [3]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [14])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000<13>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000<12>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000<11>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2_mux0000 [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000<23>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [4]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [23])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000<22>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [3]),
    .I1(PHY_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [22])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000<21>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [21])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000<20>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [20])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000<19>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1_mux0000 [19])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000<31>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [4]),
    .I1(PHY_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [31])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000<30>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [3]),
    .I1(PHY_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [30])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000<29>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [29])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000<28>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [28])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000<27>1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_mux0000 [27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0003_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0003 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0003_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0003 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux000031  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00003 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux000021  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux0000111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux00001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux000011  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_log_read_tag_gc_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux000021  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux00002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux0000111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux00001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux000011  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_lnk_write_tag_gc_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux000031  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00003 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<1>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [1])
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count2 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count2 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count2 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count2 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>1 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>3 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>2 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>4 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>6 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>7 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>5 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>9 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<2>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [2])
  );
  LUT4 #(
    .INIT ( 16'hC888 ))
  \U0/buffer_top_inst/tx_buffer_inst/transmit_enable_0_mux00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/load_backup_q_1025 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [0])
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue1 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue1 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue1 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue1 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count3 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count3 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count3 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count3 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>3 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>2 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>4 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>6 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>7 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>5 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>9 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<3>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [3])
  );
  LUT5 #(
    .INIT ( 32'hFFFF2EEE ))
  \U0/buffer_top_inst/cfg_inst/MGT_rdy_n_not00011  (
    .I0(\U0/buffer_top_inst/cfg_inst/first_rd_340 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 ),
    .I4(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_rdy_n_not0001 )
  );
  LUT5 #(
    .INIT ( 32'hBEFA1450 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue2 )
  );
  LUT5 #(
    .INIT ( 32'hBEFA1450 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue2 )
  );
  LUT5 #(
    .INIT ( 32'hBEFA1450 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue2 )
  );
  LUT5 #(
    .INIT ( 32'hBEFA1450 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue2 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count4 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count4 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>3 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [4])
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>2 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>4 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>6 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>7 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>5 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>9 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>8 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<4>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [4])
  );
  LUT6 #(
    .INIT ( 64'h1555555555555555 ))
  \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_mux00001  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc_265 ),
    .I1(LNK_RX_BUF_STAT[0]),
    .I2(LNK_RX_BUF_STAT[1]),
    .I3(LNK_RX_BUF_STAT[2]),
    .I4(LNK_RX_BUF_STAT[3]),
    .I5(LNK_RX_BUF_STAT[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue3 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue3 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue3 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue3 )
  );
  LUT6 #(
    .INIT ( 64'h6CCCCCCCCCCCCCCC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_xor<5>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [5])
  );
  LUT6 #(
    .INIT ( 64'h6CCCCCCCCCCCCCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<5>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [5])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ),
    .I1(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_and00001  (
    .I0(LNK_TDST_RDY_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_not0001_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/cfg_inst/first_rd_and00011  (
    .I0(\U0/buffer_top_inst/cfg_inst/first_rd_340 ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ),
    .O(\U0/buffer_top_inst/cfg_inst/first_rd_and0001 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not00011  (
    .I0(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq_394 ),
    .I1(PHY_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_not00011  (
    .I0(LNK_TDST_DSC_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I2(LNK_TDST_RDY_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_1241 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/eof_event_992 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_1241 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/eof_event_992 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_1241 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/eof_event_992 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_1241 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/eof_event_992 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux000021  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux00002 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \U0/buffer_top_inst/rx_buffer_inst/in_wpacket1  (
    .I0(LNK_RSOF_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_691 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_622 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux000021  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00002 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_search_and00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_set_1251 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_1224 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tag_search_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_691 ),
    .I1(PHY_RST_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_not0001_inv )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/cfg_inst/first_rd_and00001  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ),
    .O(\U0/buffer_top_inst/cfg_inst/first_rd_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_cmp_eq00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack1  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I1(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_and00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_and0000 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \U0/buffer_top_inst/rx_buffer_inst/in_rpacket1  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_teof_n1  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_935 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .O(NlwRenamedSig_OI_LNK_TEOF_N)
  );
  LUT6 #(
    .INIT ( 64'h02FF02FF02FF57FF ))
  \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_not00011  (
    .I0(LNK_TDST_RDY_N),
    .I1(LNK_TDST_DSC_N),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ),
    .I4(NlwRenamedSig_OI_LNK_TEOF_N),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h2220272F0200070F ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_not00011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 ),
    .I1(LNK_TDST_DSC_N),
    .I2(LNK_TDST_RDY_N),
    .I3(NlwRenamedSig_OI_LNK_TEOF_N),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/ram_wr_en_i1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_1498 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/ram_rd_en_i1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_1402 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1475 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h45EF ))
  \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_mux0000<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_priority [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_priority [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_mux0000 [0])
  );
  LUT5 #(
    .INIT ( 32'h7D7D7D28 ))
  \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_mux0000<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_priority [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_priority [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_addsub0000_cy<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_addsub0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<2>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl_339 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(\U0/buffer_top_inst/cfg_inst/N2 ),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[2] )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<27>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[27] )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<16>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_337 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(\U0/buffer_top_inst/cfg_inst/N2 ),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[16] )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<11>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[11] )
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_vld_window1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q_1860 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q_1861 ),
    .I2(TX_SOF_N_O),
    .I3(TX_DSC_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_vld_window )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \U0/buffer_top_inst/tx_buffer_inst/resp_retry_mux00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_cmp_eq0000 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_or00001  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/N2 ),
    .I2(LNK_REOF_N),
    .I3(LNK_RSRC_RDY_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_or0000 )
  );
  LUT5 #(
    .INIT ( 32'h44440040 ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and00011  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 ),
    .I2(LNK_TDST_RDY_N),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000026  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000026_1502 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000086  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000086_1503 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000126  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000126_1500 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000176  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000176_1501 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000026  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000026_1479 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000086  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000086_1480 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000126  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000126_1477 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000176  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000176_1478 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_dsc_n1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/N2 ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .I2(LNK_RSRC_RDY_N),
    .O(LNK_RDST_DSC_N)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_1_or000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N77 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_15_or000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N711 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_14_or000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N72 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_13_or000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N73 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_12_or000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N74 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_11_or000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N75 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000031  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N76 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000041  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N78 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n_or0000_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h00010011FFFFFFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n_or0000  (
    .I0(N14),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I4(LNK_REOF_N),
    .I5(PHY_RST_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n_or0000_406 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_or0000_SW0  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFEFFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_or0000  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0]),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I5(N16),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_or0000_600 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not000161  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd8 )
  );
  LUT5 #(
    .INIT ( 32'h2AFF2A2A ))
  \U0/buffer_top_inst/tx_buffer_inst/resp_retry_not00011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_cmp_eq0000 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q_931 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h01111101 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd4 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_or0000_inv )
  );
  LUT5 #(
    .INIT ( 32'h04444404 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not000111  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd4 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h04444404 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not000111  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd4 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h08888808 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not000111  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/backup_queue_update [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd4 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not000141  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd8 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_not0001_bdd4 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_and00001  (
    .I0(MGT_WR_N[2]),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 ),
    .I4(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I5(\U0/buffer_top_inst/cfg_inst/N2 ),
    .O(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/resp_retry_cmp_eq00005_SW0  (
    .I0(LNK_TNEXT_FM[0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I2(LNK_TNEXT_FM[1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I4(LNK_TNEXT_FM[2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'h00008421 ))
  \U0/buffer_top_inst/tx_buffer_inst/resp_retry_cmp_eq00005  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I2(LNK_TNEXT_FM[4]),
    .I3(LNK_TNEXT_FM[3]),
    .I4(N18),
    .O(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0000_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 )
  );
  LUT5 #(
    .INIT ( 32'h282828FF ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N39 ),
    .I1(TX_SOF_N_O),
    .I2(TX_DSC_N_O),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_1402 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_1481 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000044  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000044_1611 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000082  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000044_1611 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000082_1612 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000129  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000129_1610 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and00011  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_1254 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_cmp_gt0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_and00001  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_and0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and000111  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/N4 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFBBFBFBBB ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_or00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_1402 ),
    .I1(LOG_RST_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N39 ),
    .I3(TX_SOF_N_O),
    .I4(TX_DSC_N_O),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_1481 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_or0000 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr<4>1  (
    .I0(LNK_TNEXT_FM[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr<3>1  (
    .I0(LNK_TNEXT_FM[3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr<2>1  (
    .I0(LNK_TNEXT_FM[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr<1>1  (
    .I0(LNK_TNEXT_FM[1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr<0>1  (
    .I0(LNK_TNEXT_FM[0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0001_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h9009000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ),
    .I5(N20),
    .O(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0001_930 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_1_or000021  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N99 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_11_or000021  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N100 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000051  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N102 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000061  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/N101 )
  );
  LUT6 #(
    .INIT ( 64'hAAAACCCCF0F0FF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_read_tag<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [3])
  );
  LUT6 #(
    .INIT ( 64'hAAAACCCCF0F0FF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_read_tag<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAACCCCF0F0FF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_read_tag<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [1])
  );
  LUT6 #(
    .INIT ( 64'hAAAACCCCF0F0FF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_read_tag<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/r0_read_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/r2_read_tag [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/r1_read_tag [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [0])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d<0>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000090090000 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000118  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 ),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000118_809 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000134  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000119_810 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_cmp_gt0000 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and000037_811 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000 )
  );
  LUT5 #(
    .INIT ( 32'h08888888 ))
  \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_not00011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_search_1247 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_search_cmp_eq0000 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_928 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_not0001 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \U0/buffer_top_inst/tx_buffer_inst/load_backup_d_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_1023 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_SW0  (
    .I0(LNK_TLAST_ACK[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I2(LNK_TLAST_ACK[1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .I4(LNK_TLAST_ACK[0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .O(N22)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv  (
    .I0(LNK_TLAST_ACK[3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I2(LNK_TLAST_ACK[2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I4(N22),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_not0001_inv_1031 )
  );
  LUT6 #(
    .INIT ( 64'h08AA08AA88AA08AA ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>28  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [10]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [12]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [13]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [11]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list [14]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list [15]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>28_1114 )
  );
  LUT6 #(
    .INIT ( 64'h08AA08AA88AA08AA ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>81  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [5]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list [6]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list [7]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>81_1115 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>84  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>81_1115 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>84_1116 )
  );
  LUT6 #(
    .INIT ( 64'hCC0CAAAACC0C0000 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>125  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [8]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [9]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>28_1114 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag<3>84_1116 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_not000121  (
    .I0(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/N3 )
  );
  LUT6 #(
    .INIT ( 64'h5555755555555555 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm2_not00011  (
    .I0(MGT_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 ),
    .I3(\U0/buffer_top_inst/cfg_inst/N3 ),
    .I4(MGT_WR_N[1]),
    .I5(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h5555755555555555 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm1_not00011  (
    .I0(MGT_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 ),
    .I3(\U0/buffer_top_inst/cfg_inst/N3 ),
    .I4(MGT_WR_N[2]),
    .I5(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h5555755555555555 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_not00012  (
    .I0(MGT_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 ),
    .I3(\U0/buffer_top_inst/cfg_inst/N3 ),
    .I4(MGT_WR_N[3]),
    .I5(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_not00011_SW0  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [5]),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [4]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [6]),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_a_q [2]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/buffer_top_inst/cfg_inst/mgt_wm0_not00011  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [3]),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [1]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [0]),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_a_q [8]),
    .I4(\U0/buffer_top_inst/cfg_inst/mgt_a_q [7]),
    .I5(N28),
    .O(\U0/buffer_top_inst/cfg_inst/N2 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I1(LNK_TLAST_ACK[1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[3] )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [1])
  );
  LUT4 #(
    .INIT ( 16'h80FF ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1588 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [0])
  );
  LUT4 #(
    .INIT ( 16'h8A8E ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_1585 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_search_1247 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_search_cmp_eq0000 ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_search_cmp_eq00004_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [2]),
    .O(N30)
  );
  LUT5 #(
    .INIT ( 32'h00008421 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_search_cmp_eq00004  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I4(N30),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tag_search_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/RAM_REGOUT_EN1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_regout_en )
  );
  LUT6 #(
    .INIT ( 64'hA220A2A2FBBAFBFB ))
  \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_cmp_ge00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I4(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [4]),
    .I5(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_cmp_ge00001_1143 )
  );
  LUT6 #(
    .INIT ( 64'hF731FFFF7310FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/prio2_mask1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [1]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_cmp_ge00001_1143 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask )
  );
  LUT6 #(
    .INIT ( 64'hA220A2A2FBBAFBFB ))
  \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_cmp_ge00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I4(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [4]),
    .I5(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_cmp_ge00001_1140 )
  );
  LUT6 #(
    .INIT ( 64'hF731FFFF7310FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/prio1_mask1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [1]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_cmp_ge00001_1140 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask )
  );
  LUT6 #(
    .INIT ( 64'hA220A2A2FBBAFBFB ))
  \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_cmp_ge00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I4(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [4]),
    .I5(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_cmp_ge00001_1137 )
  );
  LUT6 #(
    .INIT ( 64'hF731FFFF7310FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/prio0_mask1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [1]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_cmp_ge00001_1137 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000349  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000349_1134 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000376  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000376_1135 )
  );
  LUT4 #(
    .INIT ( 16'hA800 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000393  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_1123 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000376_1135 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000349_1134 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list [3])
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000249  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000249_1132 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000276  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000276_1133 )
  );
  LUT4 #(
    .INIT ( 16'hA800 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000293  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_1123 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000276_1133 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000249_1132 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list [2])
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000149  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000149_1130 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000176  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000176_1131 )
  );
  LUT4 #(
    .INIT ( 16'hA800 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000193  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_1123 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000176_1131 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000149_1130 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFEFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000014  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000014_1127 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000064  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000064_1128 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list_and000091  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000091_1129 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I1(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I1(LNK_TLAST_ACK[2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[2] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I1(LNK_TLAST_ACK[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[0] )
  );
  LUT4 #(
    .INIT ( 16'h1555 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/RAM_RD_EN_FWFT1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1588 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h2020A220BABAFBBA ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_cmp_gt00001  (
    .I0(LNK_RX_BUF_STAT[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [3]),
    .I2(LNK_RX_BUF_STAT[3]),
    .I3(LNK_RX_BUF_STAT[4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[0] ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_cmp_gt00001_1006 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000044  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000044_1592 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000068  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I4
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000044_1592 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000068_1593 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000129  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000129_1590 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000153  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I4
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000129_1590 ),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000153_1591 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/N11 )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_mux0000_SW0  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 ),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFFFDEEEC33312220 ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_mux0000  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/N4 ),
    .I3(N32),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_790 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_mux0000_494 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we21  (
    .I0(LNK_RSRC_RDY_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<3>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/N3 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [3])
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d<1>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [1])
  );
  LUT6 #(
    .INIT ( 64'h8CEF08CE8CEF08CF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000  (
    .I0(LNK_RX_BUF_STAT[1]),
    .I1(LNK_RX_BUF_STAT[0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_cmp_gt00001_1006 ),
    .I5(N34),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_1012 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_xor<2>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h5F4C ))
  \U0/buffer_top_inst/tx_buffer_inst/update_window_raw1  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_1869 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_1169 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/set_update_window ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_xor<3>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [3])
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_xor<4>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [4])
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1  (
    .I0(LNK_TDST_DSC_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_1171 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_mux0000_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 ),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0A020FCF ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_mux0000  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/N4 ),
    .I3(N36),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_mux0000 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_mux0000_791 )
  );
  LUT6 #(
    .INIT ( 64'h6AAA0000AAAA0000 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_we ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<5>_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_605 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_576 ),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h5A9A9A9A00000000 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<5>  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I3(N38),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/N11 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5])
  );
  LUT4 #(
    .INIT ( 16'h60A0 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<4>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4])
  );
  LUT5 #(
    .INIT ( 32'h6A00AA00 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<3>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3])
  );
  LUT6 #(
    .INIT ( 64'h6CCC0000CCCC0000 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<2>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBUF_dst_rdy_n1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I1(LOG_RST_N),
    .O(TX_RDY_N_I)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d<4>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [4])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d<3>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [3])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d<2>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [2])
  );
  LUT5 #(
    .INIT ( 32'h7F5D2A08 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[1] ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[0] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[1] )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_SW0  (
    .I0(LNK_RSOF_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFD91 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .I2(LNK_RD[1]),
    .I3(LNK_RD[0]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I5(N40),
    .O(\U0/buffer_top_inst/rx_buffer_inst/N2 )
  );
  LUT3 #(
    .INIT ( 8'h0D ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_rd1  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_rd )
  );
  LUT6 #(
    .INIT ( 64'h575555555F555D55 ))
  \U0/buffer_top_inst/tx_buffer_inst/set_update_window1  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .I2(LNK_TDST_RDY_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/set_update_window )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/tx_buffer_inst/eof_event_and000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_we )
  );
  LUT6 #(
    .INIT ( 64'h80000000FFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet  (
    .I0(N42),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [15]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [14]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [13]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_1239 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_1238 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_full1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [6]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [5]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [4]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_full1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list [7]),
    .I5(N44),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<1>_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h6AAA0000AAAA0000 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<1>  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I3(N48),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<0>_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h6AAA0000AAAA0000 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l<0>  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I3(N50),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0])
  );
  LUT4 #(
    .INIT ( 16'hF3F7 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_eof_n1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_or00001  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/set_empty ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h3222 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000192  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000192_719 )
  );
  LUT6 #(
    .INIT ( 64'h800080808000C0C0 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and00011  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_599 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/N4 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/set_empty ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/set_empty_single ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0001 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_sof_n1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n )
  );
  FDS   \U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .S(\U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl_356 ),
    .Q(\U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl_339 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_4  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_CFG_IN[59]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<0>11 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [0])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<0>111  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<0>11 )
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<0>11 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [1])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<0>11 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [2])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<0>11 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_or000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I1(LNK_TDST_RDY_N),
    .I2(LNK_TDST_DSC_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_or00001 )
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_5  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<0>1 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<1>1 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<2>1 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<3>1 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<4>1 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1])
  );
  LUT6 #(
    .INIT ( 64'hFFDEFFED3FFFF3FF ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and000321_SW3  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Msub_log_count_diff_Madd_lut [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'h0002000001020100 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and000321  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_mux0000 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/N511 ),
    .I5(N60),
    .O(\U0/buffer_top_inst/rx_buffer_inst/set_empty_single )
  );
  LUT5 #(
    .INIT ( 32'h80204010 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0003131  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Msub_log_count_diff_Madd_lut [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/N511 )
  );
  LUT6 #(
    .INIT ( 64'h0054005400540000 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and00031  (
    .I0(RX_RDY_N_O),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1]),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/N14 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/set_empty_single ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0003 )
  );
  LUT6 #(
    .INIT ( 64'hAFAA0000AFAAABAB ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_599 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/N4 ),
    .I3(N62),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/set_empty ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_598 )
  );
  LUT4 #(
    .INIT ( 16'h669C ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count<0>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0003 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_data_count [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/buffer_top_inst/tx_buffer_inst/set_cond_0_and0000111  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [12]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [10]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [11]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list [8]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list [9]),
    .O(N42)
  );
  LUT5 #(
    .INIT ( 32'hACAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d<1>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3])
  );
  LUT5 #(
    .INIT ( 32'hCACCCCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d<3>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h98 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_and00031_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1]),
    .I1(RX_RDY_N_O),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0]),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'h55555555B8B8B8AA ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count<1>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1]),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(N64),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/N14 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/set_empty_single ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_and0001 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_data_count [1])
  );
  LUT6 #(
    .INIT ( 64'h0000000002000100 ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Msub_log_count_diff_Madd_lut [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .I5(N66),
    .O(\U0/buffer_top_inst/rx_buffer_inst/set_empty )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [15]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [14]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [13]),
    .O(N68)
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_first_read  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_15  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_rstpot_1075 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [15])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_14  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_rstpot_1072 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [14])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_12  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_rstpot_1066 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [12])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_11  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_rstpot_1063 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [11])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_13  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_rstpot_1069 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [13])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_10  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_rstpot_1060 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [10])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_9  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_rstpot_1101 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [9])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_8  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_rstpot_1098 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [8])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_7  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_rstpot_1095 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [7])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_5  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_rstpot_1089 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [5])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_rstpot_1086 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [4])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_6  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_rstpot_1092 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [6])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_rstpot_1083 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_rstpot_1080 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_rstpot_1077 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/master_list_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_rstpot_1056 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list [0])
  );
  LUT5 #(
    .INIT ( 32'h66699699 ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<4>12  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_d [1]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/N3 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [4])
  );
  LUT6 #(
    .INIT ( 64'h6C6C6CC6C66CC6C6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<5>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N5 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[4] ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[3] ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000 [5])
  );
  LUT5 #(
    .INIT ( 32'h00110013 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/N14 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000175_718 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_not00015_717 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000192_719 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and000011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I1(TX_VLD_N_O),
    .I2(LOG_RST_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/N39 )
  );
  LUT6 #(
    .INIT ( 64'hA5C3A5A5A5A5A5A5 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_log_count_diff_Madd_lut<2>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub_log_count_diff_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hEF000F000F000F00 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and00011  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_605 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_576 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/N11 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_and0001 )
  );
  LUT4 #(
    .INIT ( 16'hCACC ))
  \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d<3>1_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'h66FFFF666FF66FF6 ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty1_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I4(N70),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(N66)
  );
  LUT5 #(
    .INIT ( 32'h00130070 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_SW1  (
    .I0(LNK_RD[1]),
    .I1(LNK_RD[0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'h4000000040004000 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we2  (
    .I0(LNK_REOF_N),
    .I1(LNK_RSRC_DSC_N),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_689 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .I4(N40),
    .I5(N72),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we )
  );
  LUT5 #(
    .INIT ( 32'h8AEF80EA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[1] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[2] ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[3] )
  );
  LUT6 #(
    .INIT ( 64'hAAAA0000AA6A0000 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3])
  );
  LUT6 #(
    .INIT ( 64'hAA00AA00A600AA00 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_addsub0000_cy [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0])
  );
  LUT4 #(
    .INIT ( 16'hA090 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l<5>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5])
  );
  LUT5 #(
    .INIT ( 32'hAA00A600 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4])
  );
  LUT5 #(
    .INIT ( 32'hA0A090A0 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_addsub0000_cy [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1])
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_mux00001  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_mux0000 )
  );
  LUT5 #(
    .INIT ( 32'hFF555D55 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or00001  (
    .I0(PHY_RST_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/set_update_window ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hACAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d<4>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0])
  );
  LUT5 #(
    .INIT ( 32'hAAABAAA8 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3])
  );
  LUT5 #(
    .INIT ( 32'hAAAAABA8 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1])
  );
  LUT5 #(
    .INIT ( 32'hAAAAABA8 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0])
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \U0/buffer_top_inst/rx_buffer_inst/clr_empty_SW0_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .O(N78)
  );
  LUT4 #(
    .INIT ( 16'hC040 ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [10]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [11]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_1239 ),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'h0080000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [12]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [8]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [9]),
    .I3(N68),
    .I4(N80),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not0001210_SW0_SW1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0]),
    .O(N83)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N711 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'hD5D55555D5FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_7_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N88),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N99 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N72 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'hD5D55555D5FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_6_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N90),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N101 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N73 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_5_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N92),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N99 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N74 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N94)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_4_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N94),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N101 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW4  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N75 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N96)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_3_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N96),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N99 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW5  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N76 ),
    .O(N98)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_2_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N98),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N101 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW6  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N77 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N100)
  );
  LUT6 #(
    .INIT ( 64'h5757555557FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_1_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N100),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N99 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or000021_SW7  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N78 ),
    .O(N102)
  );
  LUT6 #(
    .INIT ( 64'h5757555557FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N102),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N101 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N77 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N104)
  );
  LUT6 #(
    .INIT ( 64'h5757555557FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_9_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N104),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N100 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFDFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N78 ),
    .O(N106)
  );
  LUT6 #(
    .INIT ( 64'h5757555557FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_8_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N106),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N102 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N711 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N108)
  );
  LUT6 #(
    .INIT ( 64'hD5D55555D5FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_15_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N108),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N100 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N72 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N110)
  );
  LUT6 #(
    .INIT ( 64'hD5D55555D5FF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_14_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N110),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N102 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW4  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N73 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N112)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_13_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N112),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N100 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW5  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N74 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N114)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_12_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I3(N114),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N102 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW6  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/N75 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N116)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_11_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N116),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N100 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFDFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or000011_SW7  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N76 ),
    .O(N118)
  );
  LUT6 #(
    .INIT ( 64'h5D5D55555DFF55FF ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_or00001  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_d [1]),
    .I3(N118),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/N102 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_or0000 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot_940 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot_942 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot_944 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot_946 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot_948 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot_938 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot_709 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_or0000 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000148  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_1023 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000136_1173 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h2828288282288282 ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_1012 ),
    .I1(LNK_RX_BUF_STAT[0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [3]),
    .I4(LNK_RX_BUF_STAT[1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [4])
  );
  LUT5 #(
    .INIT ( 32'hFFBF4000 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d<2>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/set_cond_15_and00001_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .O(N120)
  );
  LUT6 #(
    .INIT ( 64'h00000000EAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_15_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [15]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N120),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_rstpot_1075 )
  );
  LUT6 #(
    .INIT ( 64'h00000000BAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_14_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [14]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N120),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_rstpot_1072 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/set_cond_12_and00001_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'h00000000BAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_12_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [12]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N124),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_rstpot_1066 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAEAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_11_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [11]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N120),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_rstpot_1063 )
  );
  LUT6 #(
    .INIT ( 64'h00000000EAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_13_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [13]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N124),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_rstpot_1069 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AABAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [10]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N120),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_rstpot_1060 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAEAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_9_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [9]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N124),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_rstpot_1101 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AABAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_8_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [8]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N124),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_rstpot_1098 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/set_cond_7_and00001_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .O(N136)
  );
  LUT6 #(
    .INIT ( 64'h00000000EAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_7_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [7]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N136),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_rstpot_1095 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/set_cond_5_and00001_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .O(N138)
  );
  LUT6 #(
    .INIT ( 64'h00000000EAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_5_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [5]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N138),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_rstpot_1089 )
  );
  LUT6 #(
    .INIT ( 64'h00000000BAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_4_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N138),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_rstpot_1086 )
  );
  LUT6 #(
    .INIT ( 64'h00000000BAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_6_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [6]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N136),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_rstpot_1092 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAEAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_3_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N136),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_rstpot_1083 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AABAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_2_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N136),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_rstpot_1080 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAEAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_1_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N138),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_rstpot_1077 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AABAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [3]),
    .I2(N138),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag_not0001_inv ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_rstpot_1056 )
  );
  LUT6 #(
    .INIT ( 64'h1111FF111111F111 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not0001211  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_576 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_605 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/N161 )
  );
  LUT6 #(
    .INIT ( 64'h40000000C0000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<1>1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [7]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list [0]),
    .I5(N44),
    .O(N152)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [8]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [9]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [10]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [11]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .I5(N152),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [1])
  );
  LUT6 #(
    .INIT ( 64'h2020A220BABAFBBA ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I1(LNK_TLAST_ACK[3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I4(LNK_TLAST_ACK[4]),
    .I5(LNK_TLAST_ACK[2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2])
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not00015  (
    .I0(RX_RDY_N_O),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_599 ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_not00015_717 )
  );
  LUT4 #(
    .INIT ( 16'h2882 ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_1012 ),
    .I1(LNK_RX_BUF_STAT[4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I3(LNK_TLAST_ACK[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFC8 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_or00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000091_1129 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000014_1127 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000064_1128 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/pending_list [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h2228828822282228 ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_1012 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [1]),
    .I3(LNK_RX_BUF_STAT[3]),
    .I4(LNK_RX_BUF_STAT[4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[0] ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [2])
  );
  LUT6 #(
    .INIT ( 64'hFFF5AAA07F752A20 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_cy<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[0] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [1]),
    .I3(LNK_RX_BUF_STAT[3]),
    .I4(LNK_RX_BUF_STAT[2]),
    .I5(LNK_RX_BUF_STAT[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_cy [2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF90090000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000157  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000129_1610 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000082_1612 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 )
  );
  LUT5 #(
    .INIT ( 32'h66699699 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[2] ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[1] ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<3>1 )
  );
  LUT5 #(
    .INIT ( 32'h00006AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot_944 )
  );
  LUT6 #(
    .INIT ( 64'h000000006AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot_942 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000136_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[0] ),
    .I1(LNK_RX_BUF_STAT[4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [3]),
    .I3(LNK_RX_BUF_STAT[3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2]),
    .I5(LNK_RX_BUF_STAT[2]),
    .O(N154)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF66F6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000136  (
    .I0(LNK_RX_BUF_STAT[0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[3] ),
    .I4(LNK_RX_BUF_STAT[1]),
    .I5(N154),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_and0000136_1173 )
  );
  LUT6 #(
    .INIT ( 64'h78E17DF578E128A0 ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/update_window_and0000 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[1] ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 ),
    .I5(LNK_TNEXT_FM[1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [3])
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000119  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000118_809 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000119_810 )
  );
  LUT6 #(
    .INIT ( 64'hF7F7F7F7777777F7 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000175_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/N161 ),
    .O(N158)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF7E7FFF7E7E ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000175  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I5(N158),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_not000175_718 )
  );
  LUT6 #(
    .INIT ( 64'h697BA5FF6948A500 ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q ),
    .I5(LNK_TNEXT_FM[3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [1])
  );
  LUT5 #(
    .INIT ( 32'hE8FCFCFC ))
  \U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy<1>11  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I3(LNK_TDST_DSC_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[1] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00008421 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_search_or00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rs_read_tag [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I4(N30),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tag_search_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h11F11111FFFFFFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_and0000_inv1  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .I1(RX_RDY_N_O),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_792 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_and0000_inv )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<31>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [4]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[31] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<30>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [3]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[30] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<29>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[29] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<28>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[28] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<23>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [4]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[23] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<22>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [3]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[22] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<21>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[21] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<20>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[20] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<19>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[19] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<15>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [4]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[15] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<14>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [3]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[14] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<13>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[13] )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_mux0000<12>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I1(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_do_mux0000[12] )
  );
  LUT6 #(
    .INIT ( 64'h00009009FFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_or00001  (
    .I0(LNK_TLAST_ACK[3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I3(LNK_TLAST_ACK[2]),
    .I4(N22),
    .I5(PHY_RST_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hF777 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_not00011  (
    .I0(LNK_TDST_RDY_N),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_not00011  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_not0001 )
  );
  LUT5 #(
    .INIT ( 32'hFFBF4000 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d<0>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [0]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \U0/buffer_top_inst/tx_buffer_inst/eof_event_and00002  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_1586 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/eof_event_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0A08 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_mux00001  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_792 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_xor<0>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_mux00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_mux0000<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 ),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux0000111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux00001 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_eof_valid_q_or00001  (
    .I0(TX_EOF_N_O),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I2(LOG_RST_N),
    .I3(TX_VLD_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_eof_valid_q_or0000 )
  );
  LUT5 #(
    .INIT ( 32'h0AAA0888 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_and00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_1171 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/set_update_window ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_1169 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_1869 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h5555755555555555 ))
  \U0/buffer_top_inst/cfg_inst/wm_wr_en_q_or00001  (
    .I0(MGT_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(\U0/buffer_top_inst/cfg_inst/N2 ),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_354 ),
    .I4(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_355 ),
    .I5(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_353 ),
    .O(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q_996 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_1023 ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_1016 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux0000111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux00001 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux000011  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LOG_write_tag_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000158  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1588 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .I2
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000068_1593 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I5
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000153_1591 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h69A5A5A5A5A5A5A5 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut<3>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [3])
  );
  LUT5 #(
    .INIT ( 32'hFCFCA8FC ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_SW3  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_605 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_576 ),
    .O(N62)
  );
  LUT5 #(
    .INIT ( 32'hFFFF0020 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not00011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_not0001 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0020 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not00011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_not0001 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF2000 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not00011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h222FAAAF ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_or00001  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 ),
    .I2(RX_RDY_N_O),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_not0001_inv )
  );
  LUT5 #(
    .INIT ( 32'h1131FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_mux00001  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_935 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_mux0000 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux000011  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mrom_LNK_read_tag_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h9999696969996669 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<2>11  (
    .I0(LNK_TLAST_ACK[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I4(LNK_TLAST_ACK[3]),
    .I5(LNK_TLAST_ACK[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2])
  );
  LUT4 #(
    .INIT ( 16'h96A5 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<1>11  (
    .I0(LNK_TLAST_ACK[3]),
    .I1(LNK_TLAST_ACK[4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [3])
  );
  LUT5 #(
    .INIT ( 32'h9669A55A ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut<1>1  (
    .I0(LNK_TLAST_ACK[3]),
    .I1(LNK_TLAST_ACK[4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I3(LNK_RX_BUF_STAT[3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFF0100 ))
  \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not00011  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h10001111 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_we_and00001  (
    .I0(LNK_RSRC_RDY_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_691 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_622 ),
    .I4(LNK_RSOF_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_we_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h5565A5A695A5A9AA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[4] ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[2] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_cy[1] ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<4>1 )
  );
  LUT6 #(
    .INIT ( 64'h5555555556555555 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I2(TX_VLD_N_O),
    .I3(LOG_RST_N),
    .I4(TX_DSC_N_O),
    .I5(TX_SOF_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[1] )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FEF0F0F010F0 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u<3>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FEF0F0F010F0 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u<2>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FEF0F0F010F0 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u<1>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1])
  );
  LUT6 #(
    .INIT ( 64'hF0F0FEF0F0F010F0 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u<0>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u_q [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_lut [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0])
  );
  LUT4 #(
    .INIT ( 16'h32FA ))
  \U0/buffer_top_inst/rx_buffer_inst/log_in_packet1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/N161 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet )
  );
  LUT5 #(
    .INIT ( 32'h69669969 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I1(LNK_TLAST_ACK[0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I3(LNK_TLAST_ACK[1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut<3>1  (
    .I0(LNK_RX_BUF_STAT[1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I2(LNK_TLAST_ACK[1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [3])
  );
  LUT5 #(
    .INIT ( 32'h00001000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/ram_wr_en_i1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_1607 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I2(LOG_RST_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit_vld_window ),
    .I4(TX_VLD_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h00000000F0F0FD20 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Result<4>8 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot_940 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCCCFD08 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Result [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot_938 )
  );
  LUT6 #(
    .INIT ( 64'hAEBF043704370437 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_not00011  (
    .I0(LNK_TDST_DSC_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I3(NlwRenamedSig_OI_LNK_TEOF_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_1170 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h3700370037373700 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000091_1129 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000014_1127 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000064_1128 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/pending_list [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [1])
  );
  LUT6 #(
    .INIT ( 64'h0000373700003700 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000091_1129 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000014_1127 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list_and000064_1128 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/pending_list [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select [0])
  );
  LUT6 #(
    .INIT ( 64'h697BA5FF6948A500 ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[3] ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 ),
    .I4(LNK_TDST_DSC_N),
    .I5(LNK_TNEXT_FM[0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [4])
  );
  LUT6 #(
    .INIT ( 64'h3C3C1E3C3C3CB43C ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_xor<1>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_add_add0000_cy [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_add0000 [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFF200020002000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000193  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_1121 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_1498 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000026_1502 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or000086_1503 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000176_1501 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000126_1500 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF200020002000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000193  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_1402 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_1475 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000026_1479 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or000086_1480 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000176_1478 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000126_1477 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h9999696969996669 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut<2>1  (
    .I0(LNK_RX_BUF_STAT[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut[2] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I4(LNK_TLAST_ACK[3]),
    .I5(LNK_TLAST_ACK[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [2])
  );
  LUT5 #(
    .INIT ( 32'h22228228 ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_1012 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_lut [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I3(LNK_TLAST_ACK[4]),
    .I4(LNK_RX_BUF_STAT[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'h000055553F007F55 ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_not00011  (
    .I0(RX_RDY_N_O),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_620 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_788 ),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_mux0000 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h9599A6AA5559666A ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[2] ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[1] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[0] ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<2>1 )
  );
  LUT5 #(
    .INIT ( 32'h01000507 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td_cmp_gt00001  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [5]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [6]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_1138 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_1144 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_1141 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_cmp_gt0000 )
  );
  LUT6 #(
    .INIT ( 64'hBBBF1115AAAE0004 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0001 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_1141 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_1138 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [5]),
    .O(LNK_TD[0])
  );
  LUT5 #(
    .INIT ( 32'h697B6948 ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_and0000 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[1] ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 ),
    .I4(LNK_TNEXT_FM[2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/buffer_top_inst/tx_buffer_inst/update_window_and00001  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I2(LNK_TDST_DSC_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/update_window_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[1] ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<1>1 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0001_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 )
  );
  LUT5 #(
    .INIT ( 32'h8778E11E ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<1>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0002_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0003_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_xor0003 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0003_Result1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_xor0003 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAA6AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I1(TX_DSC_N_O),
    .I2(TX_SOF_N_O),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I4(LOG_RST_N),
    .I5(TX_VLD_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[0] )
  );
  LUT6 #(
    .INIT ( 64'h5555555556555555 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I2(TX_VLD_N_O),
    .I3(LOG_RST_N),
    .I4(TX_DSC_N_O),
    .I5(TX_SOF_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[2] )
  );
  LUT6 #(
    .INIT ( 64'h5555555556555555 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I2(TX_VLD_N_O),
    .I3(LOG_RST_N),
    .I4(TX_DSC_N_O),
    .I5(TX_SOF_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Maddsub_outstanding_packets_share0000_lut[4] )
  );
  LUT6 #(
    .INIT ( 64'h0000000090090000 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I5(N78),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot_709 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I1(LNK_TLAST_ACK[1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFAEAA ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not00011  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I2(LNK_TDST_RDY_N),
    .I3(LNK_TDST_DSC_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h00000000F0F02DF0 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_or0000 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot_946 )
  );
  LUT6 #(
    .INIT ( 64'h11E1111111011111 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_not00011  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h8228288228828228 ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_1012 ),
    .I1(LNK_RX_BUF_STAT[1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I3(LNK_TLAST_ACK[1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Msub_link_free_buffer_addsub0000_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'h505050FF404040FF ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_and0000_inv1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_786 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I3(RX_RDY_N_O),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_and0000_inv )
  );
  LUT6 #(
    .INIT ( 64'h50501050FAFAFEFA ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_and0001 ),
    .I1(LNK_TDST_DSC_N),
    .I2(LNK_TNEXT_FM[4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I4(LNK_TDST_RDY_N),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFAE2FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td_and000037  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_1141 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_1144 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_1254 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_1138 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and000037_811 )
  );
  LUT5 #(
    .INIT ( 32'h00001000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and00001  (
    .I0(TX_SOF_N_O),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_1608 ),
    .I2(LOG_RST_N),
    .I3(TX_DSC_N_O),
    .I4(TX_VLD_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h19000C0019001900 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/set_update_window ),
    .I3(PHY_RST_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_1867 ),
    .I5(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot_948 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFEB7D7DBEFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_or0000_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I1(LNK_TLAST_ACK[2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I3(LNK_TLAST_ACK[3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I5(LNK_TLAST_ACK[4]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFAABF3F3F2A ))
  \U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[1] ),
    .I5(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Maddsub_local_next_acked_share0000_cy[3] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_or00001 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_rstpot_1168 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_rstpot_1168 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/phy_reset1_INV_0  (
    .I(PHY_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv1_INV_0  (
    .I(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv )
  );
  INV   \U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv1_INV_0  (
    .I(LNK_RSOF_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Mcount_count )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Mcount_count )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>1 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>3 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [0])
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>2 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>4 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>6 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>7 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>5 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>9 )
  );
  INV   \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [0])
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/LOG_rst_n_inv1_INV_0  (
    .I(LOG_RST_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv )
  );
  INV   \U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv1_INV_0  (
    .I(MGT_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv1_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv )
  );
  INV   \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in_not00011_INV_0  (
    .I(\U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q_695 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in [0])
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<0>12_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_mux0000<0>1 )
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not0001210  (
    .I0(N162),
    .I1(N163),
    .S(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/N14 )
  );
  LUT6 #(
    .INIT ( 64'h00080000F0F8F0F0 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not0001210_F  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0]),
    .I1(N83),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I3(N66),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/rbuf_bram_rd_q_787 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_599 ),
    .O(N162)
  );
  LUT6 #(
    .INIT ( 64'h0100010001000F0F ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_not0001210_G  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_576 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_605 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_599 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_707 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_716 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_722 ),
    .O(N163)
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<2>  (
    .I0(N164),
    .I1(N165),
    .S(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_write_tag [2])
  );
  LUT6 #(
    .INIT ( 64'h8888088808880888 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<2>_F  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list [5]),
    .O(N164)
  );
  LUT6 #(
    .INIT ( 64'h8888088808880888 ))
  \U0/buffer_top_inst/tx_buffer_inst/next_write_tag<2>_G  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list [9]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list [8]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list [11]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list [10]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list [13]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list [12]),
    .O(N165)
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/update_window1  (
    .I0(N166),
    .I1(N167),
    .S(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/update_window )
  );
  LUT6 #(
    .INIT ( 64'h8DFF8CFF8CFF8CFF ))
  \U0/buffer_top_inst/tx_buffer_inst/update_window1_F  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_1866 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I3(LNK_TDST_DSC_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 ),
    .O(N166)
  );
  LUT6 #(
    .INIT ( 64'h8CFF8DFF8CFF8CFF ))
  \U0/buffer_top_inst/tx_buffer_inst/update_window1_G  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_1866 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_1166 ),
    .I3(LNK_TDST_DSC_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_1013 ),
    .O(N167)
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<4>111  (
    .I0(N168),
    .I1(N169),
    .S(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/N3 )
  );
  LUT6 #(
    .INIT ( 64'h2020A220BABAFBBA ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<4>111_F  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2]),
    .O(N168)
  );
  LUT6 #(
    .INIT ( 64'h00486C7E404C7C7F ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<4>111_G  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .O(N169)
  );
  RAMB36_EXP #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP  (
    .ENAU(NlwRenamedSig_OI_CFG_IN[59]),
    .ENAL(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBU(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .ENBL(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .SSRAU(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRAL(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRBU(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .SSRBL(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .CLKAU(PHY_CLK),
    .CLKAL(PHY_CLK),
    .CLKBU(PHY_CLK),
    .CLKBL(PHY_CLK),
    .REGCLKAU(PHY_CLK),
    .REGCLKAL(PHY_CLK),
    .REGCLKBU(PHY_CLK),
    .REGCLKBL(PHY_CLK),
    .REGCEAU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAL(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBL(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTLATA
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED )
,
    .CASCADEOUTLATB
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED )
,
    .CASCADEOUTREGA
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED )
,
    .CASCADEOUTREGB
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED )
,
    .DIA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [67], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [66], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69], 
\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [65], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [63], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [62], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [61], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [60], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [59], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [58], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [57], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [56], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [55], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [54], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [53], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [52], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [51], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [50], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [49], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [48], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [47], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [46], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [45], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [43], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [42], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [41], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [40], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [39], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [38], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [37], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [36]}),
    .DIPA({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [44]}),
    .DIB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAU({\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBU({\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEAU({\U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , 
\U0/buffer_top_inst/tx_buffer_inst/bram_we }),
    .WEAL({\U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , 
\U0/buffer_top_inst/tx_buffer_inst/bram_we }),
    .WEBU({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEBL({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOA({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED 
}),
    .DOPA({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED 
}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[0] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[1] , \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[3] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[4] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[5] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[6] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[7] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[8] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[9] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[10] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[11] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[12] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[13] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[14] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[15] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[16] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[17] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[18] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[19] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[20] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[21] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[22] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[23] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[25] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[26] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[27] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[28] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[29] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[30] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[31] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[32] }),
    .DOPB({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED 
, \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[24] })
  );
  RAMB36_EXP #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP  (
    .ENAU(NlwRenamedSig_OI_CFG_IN[59]),
    .ENAL(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBU(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .ENBL(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .SSRAU(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRAL(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRBU(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .SSRBL(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .CLKAU(PHY_CLK),
    .CLKAL(PHY_CLK),
    .CLKBU(PHY_CLK),
    .CLKBL(PHY_CLK),
    .REGCLKAU(PHY_CLK),
    .REGCLKAL(PHY_CLK),
    .REGCLKBU(PHY_CLK),
    .REGCLKBL(PHY_CLK),
    .REGCEAU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAL(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBL(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTLATA
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED )
,
    .CASCADEOUTLATB
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED )
,
    .CASCADEOUTREGA
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED )
,
    .CASCADEOUTREGB
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED )
,
    .DIA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [34], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [33], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [32], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [31], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [30], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [29], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [28], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [27], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [25], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [24], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [23], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [22], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [21], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [20], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [19], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [18], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [16], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [15], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [14], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [13], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [12], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [11], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [10], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [9], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [7], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [6], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [5], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [4], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [0]}),
    .DIPA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [35], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [17], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [8]}),
    .DIB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAU({\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBU({\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEAU({\U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , 
\U0/buffer_top_inst/tx_buffer_inst/bram_we }),
    .WEAL({\U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , 
\U0/buffer_top_inst/tx_buffer_inst/bram_we }),
    .WEBU({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEBL({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOA({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED 
}),
    .DOPA({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED 
}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[34] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[35] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[36] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[37] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[38] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[39] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[40] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[41] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[43] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[44] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[45] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[46] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[47] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[48] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[49] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[50] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[52] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[53] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[54] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[55] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[56] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[57] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[58] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[59] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[61] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[62] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[63] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[64] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[65] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[66] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[67] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[68] }),
    .DOPB({\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[33] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[42] , \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[51] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out[60] })
  );
  RAMB36_EXP #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP  (
    .ENAU(NlwRenamedSig_OI_CFG_IN[59]),
    .ENAL(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBU(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_598 ),
    .ENBL(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_598 ),
    .SSRAU(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRAL(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRBU(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .SSRBL(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .CLKAU(PHY_CLK),
    .CLKAL(PHY_CLK),
    .CLKBU(LOG_CLK),
    .CLKBL(LOG_CLK),
    .REGCLKAU(PHY_CLK),
    .REGCLKAL(PHY_CLK),
    .REGCLKBU(LOG_CLK),
    .REGCLKBL(LOG_CLK),
    .REGCEAU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAL(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBL(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTLATA
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED )
,
    .CASCADEOUTLATB
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED )
,
    .CASCADEOUTREGA
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED )
,
    .CASCADEOUTREGB
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED )
,
    .DIA({\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in [0], \U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_691 , 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [0], \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [1], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [2], \U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q_624 , \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [0]
, \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [1], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [3], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [4], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [5], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [6], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [7], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [8], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [9], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [10], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [11], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [12], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [13], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [14], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [15], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [16], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [17], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [18], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [20], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [21], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [22], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [23], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [24], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [25], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [26], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [27]}),
    .DIPA({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [2], NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [19]}),
    .DIB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAU({\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBU({\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEAU({\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , 
\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 }),
    .WEAL({\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , 
\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 }),
    .WEBU({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEBL({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOA({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED 
}),
    .DOPA({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED 
}),
    .DOB({\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [0], 
\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_out [1], \U0/buffer_top_inst/rx_buffer_inst/bram_rrem [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [1], \U0/buffer_top_inst/rx_buffer_inst/bram_rrem [2], \U0/buffer_top_inst/rx_buffer_inst/bram_crf , 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [0], \U0/buffer_top_inst/rx_buffer_inst/bram_data [1], \U0/buffer_top_inst/rx_buffer_inst/bram_data [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [4], \U0/buffer_top_inst/rx_buffer_inst/bram_data [5], \U0/buffer_top_inst/rx_buffer_inst/bram_data [6], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [7], \U0/buffer_top_inst/rx_buffer_inst/bram_data [8], \U0/buffer_top_inst/rx_buffer_inst/bram_data [9], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [10], \U0/buffer_top_inst/rx_buffer_inst/bram_data [11], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [12], \U0/buffer_top_inst/rx_buffer_inst/bram_data [13], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [14], \U0/buffer_top_inst/rx_buffer_inst/bram_data [15], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [16], \U0/buffer_top_inst/rx_buffer_inst/bram_data [17], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [18], \U0/buffer_top_inst/rx_buffer_inst/bram_data [20], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [21], \U0/buffer_top_inst/rx_buffer_inst/bram_data [22], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [23], \U0/buffer_top_inst/rx_buffer_inst/bram_data [24], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [25], \U0/buffer_top_inst/rx_buffer_inst/bram_data [26], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [27]}),
    .DOPB({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<3>_UNCONNECTED 
, \U0/buffer_top_inst/rx_buffer_inst/bram_data [2], 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPB<1>_UNCONNECTED 
, \U0/buffer_top_inst/rx_buffer_inst/bram_data [19]})
  );
  RAMB36_EXP #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_MODE ( "SAFE" ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP  (
    .ENAU(NlwRenamedSig_OI_CFG_IN[59]),
    .ENAL(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBU(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_598 ),
    .ENBL(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_598 ),
    .SSRAU(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRAL(NlwRenamedSig_OI_MGT_DO[26]),
    .SSRBU(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .SSRBL(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .CLKAU(PHY_CLK),
    .CLKAL(PHY_CLK),
    .CLKBU(LOG_CLK),
    .CLKBL(LOG_CLK),
    .REGCLKAU(PHY_CLK),
    .REGCLKAL(PHY_CLK),
    .REGCLKBU(LOG_CLK),
    .REGCLKBL(LOG_CLK),
    .REGCEAU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAL(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBU(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEBL(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINLATB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTLATA
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATA_UNCONNECTED )
,
    .CASCADEOUTLATB
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTLATB_UNCONNECTED )
,
    .CASCADEOUTREGA
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGA_UNCONNECTED )
,
    .CASCADEOUTREGB
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_CASCADEOUTREGB_UNCONNECTED )
,
    .DIA({\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [29], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [30], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [31], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [32], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [33], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [34], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [35], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [36], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [38], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [39], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [40], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [41], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [42], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [43], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [44], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [45], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [47], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [48], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [49], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [50], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [51], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [52], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [53], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [54], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [56], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [57], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [58], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [59], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [60], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [61], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [62], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [63]})
,
    .DIPA({\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [28], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [37], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [46], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [55]}),
    .DIB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPB({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRAU({\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBL({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBU({\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEAU({\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , 
\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 }),
    .WEAL({\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , 
\U0/buffer_top_inst/rx_buffer_inst/bram_we_617 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_617 }),
    .WEBU({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .WEBL({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOA({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOA<0>_UNCONNECTED 
}),
    .DOPA({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM36.TDP_DOPA<0>_UNCONNECTED 
}),
    .DOB({\U0/buffer_top_inst/rx_buffer_inst/bram_data [29], \U0/buffer_top_inst/rx_buffer_inst/bram_data [30], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [31], \U0/buffer_top_inst/rx_buffer_inst/bram_data [32], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [33], \U0/buffer_top_inst/rx_buffer_inst/bram_data [34], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [35], \U0/buffer_top_inst/rx_buffer_inst/bram_data [36], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [38], \U0/buffer_top_inst/rx_buffer_inst/bram_data [39], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [40], \U0/buffer_top_inst/rx_buffer_inst/bram_data [41], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [42], \U0/buffer_top_inst/rx_buffer_inst/bram_data [43], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [44], \U0/buffer_top_inst/rx_buffer_inst/bram_data [45], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [47], \U0/buffer_top_inst/rx_buffer_inst/bram_data [48], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [49], \U0/buffer_top_inst/rx_buffer_inst/bram_data [50], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [51], \U0/buffer_top_inst/rx_buffer_inst/bram_data [52], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [53], \U0/buffer_top_inst/rx_buffer_inst/bram_data [54], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [56], \U0/buffer_top_inst/rx_buffer_inst/bram_data [57], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [58], \U0/buffer_top_inst/rx_buffer_inst/bram_data [59], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [60], \U0/buffer_top_inst/rx_buffer_inst/bram_data [61], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [62], \U0/buffer_top_inst/rx_buffer_inst/bram_data [63]}),
    .DOPB({\U0/buffer_top_inst/rx_buffer_inst/bram_data [28], \U0/buffer_top_inst/rx_buffer_inst/bram_data [37], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [46], \U0/buffer_top_inst/rx_buffer_inst/bram_data [55]})
  );
  LUT6 #(
    .INIT ( 64'h0888888888888888 ))
  \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .I1(PHY_RST_N),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>11_404 )
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>1_f7  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>11_404 ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_921 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_mux0000<4>1 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>1 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>12  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>11_853 )
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>1_f7  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>11_853 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>1 ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue4 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>1 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>12  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>11_846 )
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>1_f7  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>11_846 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>1 ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue4 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>1 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>12  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>11_839 )
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>1_f7  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>11_839 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>1 ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue4 )
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>1 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>12  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_1022 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>11_832 )
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>1_f7  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>11_832 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>1 ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue4 )
  );
  LUT6 #(
    .INIT ( 64'hFEEEEEEEEEEEEEEE ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TX_resp_only1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TX_resp_only )
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TX_resp_only_f7  (
    .I0(NlwRenamedSig_OI_CFG_IN[59]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TX_resp_only ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [1]),
    .O(TX_RESP_ONLY_I)
  );
  LUT6 #(
    .INIT ( 64'hBAAB1001FFFF5555 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_1138 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_1144 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_1141 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0001 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>1 )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAAAE04000004 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>12  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0000 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/LNK_td_and0001 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_1138 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_1141 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_1144 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>11_807 )
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>1_f7  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>11_807 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/LNK_td<1>1 ),
    .S(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [6]),
    .O(LNK_TD[1])
  );
  LUT6 #(
    .INIT ( 64'h965A5A5AA5A5965A ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>11 )
  );
  LUT6 #(
    .INIT ( 64'hA5A596A55AA55A96 ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>112  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>111_416 )
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>11_f7  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>111_416 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Madd_write_status_cct_sub0000_xor<2>11 ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct_sub0000 [2])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
