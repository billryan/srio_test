////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2009 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: L.54
//  \   \         Application: netgen
//  /   /         Filename: fifo_16x190.v
// /___/   /\     Timestamp: Tue Aug 11 15:03:54 2009
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg/fifo_16x190.ngc ./tmp/_cg/fifo_16x190.v 
// Device	: 5vlx50tff1136-1
// Input file	: ./tmp/_cg/fifo_16x190.ngc
// Output file	: ./tmp/_cg/fifo_16x190.v
// # of Modules	: 1
// Design Name	: fifo_16x190
// Xilinx        : /build/xfndry/L.54/rtf
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

module fifo_16x190 (
  rd_en, almost_full, wr_en, full, empty, wr_clk, rst, rd_clk, dout, din
)/* synthesis syn_black_box syn_noprune=1 */;
  input rd_en;
  output almost_full;
  input wr_en;
  output full;
  output empty;
  input wr_clk;
  input rst;
  input rd_clk;
  output [189 : 0] dout;
  input [189 : 0] din;
  
  // synthesis translate_off
  
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_189_rstpot_1072 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_188_rstpot_1071 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_187_rstpot_1070 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_186_rstpot_1069 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_185_rstpot_1068 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_184_rstpot_1067 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_183_rstpot_1066 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_182_rstpot_1065 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_181_rstpot_1064 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_180_rstpot_1063 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_179_rstpot_1062 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_178_rstpot_1061 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_177_rstpot_1060 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_176_rstpot_1059 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_175_rstpot_1058 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_174_rstpot_1057 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_173_rstpot_1056 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_172_rstpot_1055 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_171_rstpot_1054 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_170_rstpot_1053 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_169_rstpot_1052 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_168_rstpot_1051 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_167_rstpot_1050 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_166_rstpot_1049 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_165_rstpot_1048 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_164_rstpot_1047 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_163_rstpot_1046 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_162_rstpot_1045 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_161_rstpot_1044 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_160_rstpot_1043 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_159_rstpot_1042 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_158_rstpot_1041 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_157_rstpot_1040 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_156_rstpot_1039 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_155_rstpot_1038 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_154_rstpot_1037 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_153_rstpot_1036 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_152_rstpot_1035 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_151_rstpot_1034 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_150_rstpot_1033 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_149_rstpot_1032 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_148_rstpot_1031 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_147_rstpot_1030 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_146_rstpot_1029 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_145_rstpot_1028 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_144_rstpot_1027 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_143_rstpot_1026 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_142_rstpot_1025 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_141_rstpot_1024 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_140_rstpot_1023 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_139_rstpot_1022 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_138_rstpot_1021 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_137_rstpot_1020 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_136_rstpot_1019 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_135_rstpot_1018 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_134_rstpot_1017 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_133_rstpot_1016 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_132_rstpot_1015 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_131_rstpot_1014 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_130_rstpot_1013 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_129_rstpot_1012 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_128_rstpot_1011 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_127_rstpot_1010 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_126_rstpot_1009 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_125_rstpot_1008 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_124_rstpot_1007 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_123_rstpot_1006 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_122_rstpot_1005 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_121_rstpot_1004 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_120_rstpot_1003 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_119_rstpot_1002 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_118_rstpot_1001 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_117_rstpot_1000 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_116_rstpot_999 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_115_rstpot_998 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_114_rstpot_997 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_113_rstpot_996 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_112_rstpot_995 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_111_rstpot_994 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_110_rstpot_993 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_109_rstpot_992 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_108_rstpot_991 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_107_rstpot_990 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_106_rstpot_989 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_105_rstpot_988 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_104_rstpot_987 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_103_rstpot_986 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_102_rstpot_985 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_101_rstpot_984 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_100_rstpot_983 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_99_rstpot_982 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_98_rstpot_981 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_97_rstpot_980 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_96_rstpot_979 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_95_rstpot_978 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_94_rstpot_977 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_93_rstpot_976 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_92_rstpot_975 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_91_rstpot_974 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_90_rstpot_973 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_89_rstpot_972 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_88_rstpot_971 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_87_rstpot_970 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_86_rstpot_969 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_85_rstpot_968 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_84_rstpot_967 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_83_rstpot_966 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_82_rstpot_965 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_81_rstpot_964 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_80_rstpot_963 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_79_rstpot_962 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_78_rstpot_961 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_77_rstpot_960 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_76_rstpot_959 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_75_rstpot_958 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_74_rstpot_957 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_73_rstpot_956 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_72_rstpot_955 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_71_rstpot_954 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_70_rstpot_953 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_69_rstpot_952 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_68_rstpot_951 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_67_rstpot_950 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_66_rstpot_949 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_65_rstpot_948 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_64_rstpot_947 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_63_rstpot_946 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_62_rstpot_945 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_61_rstpot_944 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_60_rstpot_943 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_59_rstpot_942 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_58_rstpot_941 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_57_rstpot_940 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_56_rstpot_939 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_55_rstpot_938 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_54_rstpot_937 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_53_rstpot_936 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_52_rstpot_935 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_51_rstpot_934 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_50_rstpot_933 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_49_rstpot_932 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_48_rstpot_931 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_47_rstpot_930 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_46_rstpot_929 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_45_rstpot_928 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_44_rstpot_927 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_43_rstpot_926 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_42_rstpot_925 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_41_rstpot_924 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_40_rstpot_923 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_39_rstpot_922 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_38_rstpot_921 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_37_rstpot_920 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_36_rstpot_919 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_35_rstpot_918 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_34_rstpot_917 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_33_rstpot_916 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_32_rstpot_915 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_31_rstpot_914 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_30_rstpot_913 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_29_rstpot_912 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_28_rstpot_911 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_27_rstpot_910 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_26_rstpot_909 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_25_rstpot_908 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_24_rstpot_907 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_23_rstpot_906 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_22_rstpot_905 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_21_rstpot_904 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_20_rstpot_903 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_19_rstpot_902 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_18_rstpot_901 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_17_rstpot_900 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_16_rstpot_899 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_15_rstpot_898 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_14_rstpot_897 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_13_rstpot_896 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_12_rstpot_895 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_11_rstpot_894 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_10_rstpot_893 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_9_rstpot_892 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_8_rstpot_891 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_7_rstpot_890 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_6_rstpot_889 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_5_rstpot_888 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_4_rstpot_887 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_3_rstpot_886 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_2_rstpot_885 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_1_rstpot_884 ;
  wire \BU2/U0/grf.rf/mem/gdm.dm/dout_i_0_rstpot_883 ;
  wire \BU2/N22 ;
  wire \BU2/N20 ;
  wire \BU2/N19 ;
  wire \BU2/N18 ;
  wire \BU2/N16 ;
  wire \BU2/N14 ;
  wire \BU2/N12 ;
  wire \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000135_875 ;
  wire \BU2/N10 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000_873 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not0001 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_871 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_870 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000_869 ;
  wire \BU2/U0/grf.rf/mem/dout_i_not0001 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ;
  wire \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_463 ;
  wire \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ;
  wire \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_comb ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_comb ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_397 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_396 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_395 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_394 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_393 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_392 ;
  wire \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ;
  wire \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM324_SPO_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM323_SPO_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM322_SPO_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM321_SPO_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM31_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM31_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM30_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM30_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM29_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM29_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM28_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM28_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM27_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM27_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM26_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM26_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM25_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM25_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM24_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM24_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM23_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM23_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM22_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM22_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM21_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM21_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM20_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM20_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM19_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM19_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM18_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM18_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM17_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM17_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM16_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM16_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM15_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM15_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM14_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM14_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM13_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM13_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<0>_UNCONNECTED ;
  wire [189 : 0] din_2;
  wire [189 : 0] dout_3;
  wire [189 : 0] \BU2/U0/grf.rf/mem/gdm.dm/dout_i ;
  wire [189 : 0] \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 ;
  wire [3 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 ;
  wire [3 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 ;
  wire [3 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 ;
  wire [3 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count ;
  wire [1 : 0] \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state ;
  wire [1 : 0] \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 ;
  wire [3 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 ;
  wire [3 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/count ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin ;
  wire [3 : 0] \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin ;
  wire [1 : 0] \BU2/U0/grf.rf/rstblk/wr_rst_reg ;
  wire [2 : 0] \BU2/U0/grf.rf/rstblk/rd_rst_reg ;
  wire [0 : 0] \BU2/rd_data_count ;
  assign
    dout[189] = dout_3[189],
    dout[188] = dout_3[188],
    dout[187] = dout_3[187],
    dout[186] = dout_3[186],
    dout[185] = dout_3[185],
    dout[184] = dout_3[184],
    dout[183] = dout_3[183],
    dout[182] = dout_3[182],
    dout[181] = dout_3[181],
    dout[180] = dout_3[180],
    dout[179] = dout_3[179],
    dout[178] = dout_3[178],
    dout[177] = dout_3[177],
    dout[176] = dout_3[176],
    dout[175] = dout_3[175],
    dout[174] = dout_3[174],
    dout[173] = dout_3[173],
    dout[172] = dout_3[172],
    dout[171] = dout_3[171],
    dout[170] = dout_3[170],
    dout[169] = dout_3[169],
    dout[168] = dout_3[168],
    dout[167] = dout_3[167],
    dout[166] = dout_3[166],
    dout[165] = dout_3[165],
    dout[164] = dout_3[164],
    dout[163] = dout_3[163],
    dout[162] = dout_3[162],
    dout[161] = dout_3[161],
    dout[160] = dout_3[160],
    dout[159] = dout_3[159],
    dout[158] = dout_3[158],
    dout[157] = dout_3[157],
    dout[156] = dout_3[156],
    dout[155] = dout_3[155],
    dout[154] = dout_3[154],
    dout[153] = dout_3[153],
    dout[152] = dout_3[152],
    dout[151] = dout_3[151],
    dout[150] = dout_3[150],
    dout[149] = dout_3[149],
    dout[148] = dout_3[148],
    dout[147] = dout_3[147],
    dout[146] = dout_3[146],
    dout[145] = dout_3[145],
    dout[144] = dout_3[144],
    dout[143] = dout_3[143],
    dout[142] = dout_3[142],
    dout[141] = dout_3[141],
    dout[140] = dout_3[140],
    dout[139] = dout_3[139],
    dout[138] = dout_3[138],
    dout[137] = dout_3[137],
    dout[136] = dout_3[136],
    dout[135] = dout_3[135],
    dout[134] = dout_3[134],
    dout[133] = dout_3[133],
    dout[132] = dout_3[132],
    dout[131] = dout_3[131],
    dout[130] = dout_3[130],
    dout[129] = dout_3[129],
    dout[128] = dout_3[128],
    dout[127] = dout_3[127],
    dout[126] = dout_3[126],
    dout[125] = dout_3[125],
    dout[124] = dout_3[124],
    dout[123] = dout_3[123],
    dout[122] = dout_3[122],
    dout[121] = dout_3[121],
    dout[120] = dout_3[120],
    dout[119] = dout_3[119],
    dout[118] = dout_3[118],
    dout[117] = dout_3[117],
    dout[116] = dout_3[116],
    dout[115] = dout_3[115],
    dout[114] = dout_3[114],
    dout[113] = dout_3[113],
    dout[112] = dout_3[112],
    dout[111] = dout_3[111],
    dout[110] = dout_3[110],
    dout[109] = dout_3[109],
    dout[108] = dout_3[108],
    dout[107] = dout_3[107],
    dout[106] = dout_3[106],
    dout[105] = dout_3[105],
    dout[104] = dout_3[104],
    dout[103] = dout_3[103],
    dout[102] = dout_3[102],
    dout[101] = dout_3[101],
    dout[100] = dout_3[100],
    dout[99] = dout_3[99],
    dout[98] = dout_3[98],
    dout[97] = dout_3[97],
    dout[96] = dout_3[96],
    dout[95] = dout_3[95],
    dout[94] = dout_3[94],
    dout[93] = dout_3[93],
    dout[92] = dout_3[92],
    dout[91] = dout_3[91],
    dout[90] = dout_3[90],
    dout[89] = dout_3[89],
    dout[88] = dout_3[88],
    dout[87] = dout_3[87],
    dout[86] = dout_3[86],
    dout[85] = dout_3[85],
    dout[84] = dout_3[84],
    dout[83] = dout_3[83],
    dout[82] = dout_3[82],
    dout[81] = dout_3[81],
    dout[80] = dout_3[80],
    dout[79] = dout_3[79],
    dout[78] = dout_3[78],
    dout[77] = dout_3[77],
    dout[76] = dout_3[76],
    dout[75] = dout_3[75],
    dout[74] = dout_3[74],
    dout[73] = dout_3[73],
    dout[72] = dout_3[72],
    dout[71] = dout_3[71],
    dout[70] = dout_3[70],
    dout[69] = dout_3[69],
    dout[68] = dout_3[68],
    dout[67] = dout_3[67],
    dout[66] = dout_3[66],
    dout[65] = dout_3[65],
    dout[64] = dout_3[64],
    dout[63] = dout_3[63],
    dout[62] = dout_3[62],
    dout[61] = dout_3[61],
    dout[60] = dout_3[60],
    dout[59] = dout_3[59],
    dout[58] = dout_3[58],
    dout[57] = dout_3[57],
    dout[56] = dout_3[56],
    dout[55] = dout_3[55],
    dout[54] = dout_3[54],
    dout[53] = dout_3[53],
    dout[52] = dout_3[52],
    dout[51] = dout_3[51],
    dout[50] = dout_3[50],
    dout[49] = dout_3[49],
    dout[48] = dout_3[48],
    dout[47] = dout_3[47],
    dout[46] = dout_3[46],
    dout[45] = dout_3[45],
    dout[44] = dout_3[44],
    dout[43] = dout_3[43],
    dout[42] = dout_3[42],
    dout[41] = dout_3[41],
    dout[40] = dout_3[40],
    dout[39] = dout_3[39],
    dout[38] = dout_3[38],
    dout[37] = dout_3[37],
    dout[36] = dout_3[36],
    dout[35] = dout_3[35],
    dout[34] = dout_3[34],
    dout[33] = dout_3[33],
    dout[32] = dout_3[32],
    dout[31] = dout_3[31],
    dout[30] = dout_3[30],
    dout[29] = dout_3[29],
    dout[28] = dout_3[28],
    dout[27] = dout_3[27],
    dout[26] = dout_3[26],
    dout[25] = dout_3[25],
    dout[24] = dout_3[24],
    dout[23] = dout_3[23],
    dout[22] = dout_3[22],
    dout[21] = dout_3[21],
    dout[20] = dout_3[20],
    dout[19] = dout_3[19],
    dout[18] = dout_3[18],
    dout[17] = dout_3[17],
    dout[16] = dout_3[16],
    dout[15] = dout_3[15],
    dout[14] = dout_3[14],
    dout[13] = dout_3[13],
    dout[12] = dout_3[12],
    dout[11] = dout_3[11],
    dout[10] = dout_3[10],
    dout[9] = dout_3[9],
    dout[8] = dout_3[8],
    dout[7] = dout_3[7],
    dout[6] = dout_3[6],
    dout[5] = dout_3[5],
    dout[4] = dout_3[4],
    dout[3] = dout_3[3],
    dout[2] = dout_3[2],
    dout[1] = dout_3[1],
    dout[0] = dout_3[0],
    din_2[189] = din[189],
    din_2[188] = din[188],
    din_2[187] = din[187],
    din_2[186] = din[186],
    din_2[185] = din[185],
    din_2[184] = din[184],
    din_2[183] = din[183],
    din_2[182] = din[182],
    din_2[181] = din[181],
    din_2[180] = din[180],
    din_2[179] = din[179],
    din_2[178] = din[178],
    din_2[177] = din[177],
    din_2[176] = din[176],
    din_2[175] = din[175],
    din_2[174] = din[174],
    din_2[173] = din[173],
    din_2[172] = din[172],
    din_2[171] = din[171],
    din_2[170] = din[170],
    din_2[169] = din[169],
    din_2[168] = din[168],
    din_2[167] = din[167],
    din_2[166] = din[166],
    din_2[165] = din[165],
    din_2[164] = din[164],
    din_2[163] = din[163],
    din_2[162] = din[162],
    din_2[161] = din[161],
    din_2[160] = din[160],
    din_2[159] = din[159],
    din_2[158] = din[158],
    din_2[157] = din[157],
    din_2[156] = din[156],
    din_2[155] = din[155],
    din_2[154] = din[154],
    din_2[153] = din[153],
    din_2[152] = din[152],
    din_2[151] = din[151],
    din_2[150] = din[150],
    din_2[149] = din[149],
    din_2[148] = din[148],
    din_2[147] = din[147],
    din_2[146] = din[146],
    din_2[145] = din[145],
    din_2[144] = din[144],
    din_2[143] = din[143],
    din_2[142] = din[142],
    din_2[141] = din[141],
    din_2[140] = din[140],
    din_2[139] = din[139],
    din_2[138] = din[138],
    din_2[137] = din[137],
    din_2[136] = din[136],
    din_2[135] = din[135],
    din_2[134] = din[134],
    din_2[133] = din[133],
    din_2[132] = din[132],
    din_2[131] = din[131],
    din_2[130] = din[130],
    din_2[129] = din[129],
    din_2[128] = din[128],
    din_2[127] = din[127],
    din_2[126] = din[126],
    din_2[125] = din[125],
    din_2[124] = din[124],
    din_2[123] = din[123],
    din_2[122] = din[122],
    din_2[121] = din[121],
    din_2[120] = din[120],
    din_2[119] = din[119],
    din_2[118] = din[118],
    din_2[117] = din[117],
    din_2[116] = din[116],
    din_2[115] = din[115],
    din_2[114] = din[114],
    din_2[113] = din[113],
    din_2[112] = din[112],
    din_2[111] = din[111],
    din_2[110] = din[110],
    din_2[109] = din[109],
    din_2[108] = din[108],
    din_2[107] = din[107],
    din_2[106] = din[106],
    din_2[105] = din[105],
    din_2[104] = din[104],
    din_2[103] = din[103],
    din_2[102] = din[102],
    din_2[101] = din[101],
    din_2[100] = din[100],
    din_2[99] = din[99],
    din_2[98] = din[98],
    din_2[97] = din[97],
    din_2[96] = din[96],
    din_2[95] = din[95],
    din_2[94] = din[94],
    din_2[93] = din[93],
    din_2[92] = din[92],
    din_2[91] = din[91],
    din_2[90] = din[90],
    din_2[89] = din[89],
    din_2[88] = din[88],
    din_2[87] = din[87],
    din_2[86] = din[86],
    din_2[85] = din[85],
    din_2[84] = din[84],
    din_2[83] = din[83],
    din_2[82] = din[82],
    din_2[81] = din[81],
    din_2[80] = din[80],
    din_2[79] = din[79],
    din_2[78] = din[78],
    din_2[77] = din[77],
    din_2[76] = din[76],
    din_2[75] = din[75],
    din_2[74] = din[74],
    din_2[73] = din[73],
    din_2[72] = din[72],
    din_2[71] = din[71],
    din_2[70] = din[70],
    din_2[69] = din[69],
    din_2[68] = din[68],
    din_2[67] = din[67],
    din_2[66] = din[66],
    din_2[65] = din[65],
    din_2[64] = din[64],
    din_2[63] = din[63],
    din_2[62] = din[62],
    din_2[61] = din[61],
    din_2[60] = din[60],
    din_2[59] = din[59],
    din_2[58] = din[58],
    din_2[57] = din[57],
    din_2[56] = din[56],
    din_2[55] = din[55],
    din_2[54] = din[54],
    din_2[53] = din[53],
    din_2[52] = din[52],
    din_2[51] = din[51],
    din_2[50] = din[50],
    din_2[49] = din[49],
    din_2[48] = din[48],
    din_2[47] = din[47],
    din_2[46] = din[46],
    din_2[45] = din[45],
    din_2[44] = din[44],
    din_2[43] = din[43],
    din_2[42] = din[42],
    din_2[41] = din[41],
    din_2[40] = din[40],
    din_2[39] = din[39],
    din_2[38] = din[38],
    din_2[37] = din[37],
    din_2[36] = din[36],
    din_2[35] = din[35],
    din_2[34] = din[34],
    din_2[33] = din[33],
    din_2[32] = din[32],
    din_2[31] = din[31],
    din_2[30] = din[30],
    din_2[29] = din[29],
    din_2[28] = din[28],
    din_2[27] = din[27],
    din_2[26] = din[26],
    din_2[25] = din[25],
    din_2[24] = din[24],
    din_2[23] = din[23],
    din_2[22] = din[22],
    din_2[21] = din[21],
    din_2[20] = din[20],
    din_2[19] = din[19],
    din_2[18] = din[18],
    din_2[17] = din[17],
    din_2[16] = din[16],
    din_2[15] = din[15],
    din_2[14] = din[14],
    din_2[13] = din[13],
    din_2[12] = din[12],
    din_2[11] = din[11],
    din_2[10] = din[10],
    din_2[9] = din[9],
    din_2[8] = din[8],
    din_2[7] = din[7],
    din_2[6] = din[6],
    din_2[5] = din[5],
    din_2[4] = din[4],
    din_2[3] = din[3],
    din_2[2] = din[2],
    din_2[1] = din[1],
    din_2[0] = din[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  INV   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<0>11_INV_0  (
    .I(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count )
  );
  INV   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<0>11_INV_0  (
    .I(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_189_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [189]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [189]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_189_rstpot_1072 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_188_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [188]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [188]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_188_rstpot_1071 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_187_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [187]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [187]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_187_rstpot_1070 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_186_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [186]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [186]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_186_rstpot_1069 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_185_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [185]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [185]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_185_rstpot_1068 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_184_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [184]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [184]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_184_rstpot_1067 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_183_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [183]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [183]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_183_rstpot_1066 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_182_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [182]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [182]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_182_rstpot_1065 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_181_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [181]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [181]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_181_rstpot_1064 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_180_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [180]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [180]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_180_rstpot_1063 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_179_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [179]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [179]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_179_rstpot_1062 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_178_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [178]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [178]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_178_rstpot_1061 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_177_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [177]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [177]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_177_rstpot_1060 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_176_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [176]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [176]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_176_rstpot_1059 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_175_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [175]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [175]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_175_rstpot_1058 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_174_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [174]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [174]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_174_rstpot_1057 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_173_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [173]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [173]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_173_rstpot_1056 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_172_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [172]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [172]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_172_rstpot_1055 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_171_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [171]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [171]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_171_rstpot_1054 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_170_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [170]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [170]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_170_rstpot_1053 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_169_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [169]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [169]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_169_rstpot_1052 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_168_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [168]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [168]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_168_rstpot_1051 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_167_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [167]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [167]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_167_rstpot_1050 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_166_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [166]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [166]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_166_rstpot_1049 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_165_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [165]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [165]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_165_rstpot_1048 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_164_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [164]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [164]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_164_rstpot_1047 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_163_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [163]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [163]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_163_rstpot_1046 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_162_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [162]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [162]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_162_rstpot_1045 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_161_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [161]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [161]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_161_rstpot_1044 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_160_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [160]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [160]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_160_rstpot_1043 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_159_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [159]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [159]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_159_rstpot_1042 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_158_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [158]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [158]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_158_rstpot_1041 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_157_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [157]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [157]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_157_rstpot_1040 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_156_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [156]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [156]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_156_rstpot_1039 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_155_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [155]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [155]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_155_rstpot_1038 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_154_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [154]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [154]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_154_rstpot_1037 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_153_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [153]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [153]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_153_rstpot_1036 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_152_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [152]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [152]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_152_rstpot_1035 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_151_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [151]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [151]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_151_rstpot_1034 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_150_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [150]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [150]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_150_rstpot_1033 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_149_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [149]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [149]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_149_rstpot_1032 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_148_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [148]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [148]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_148_rstpot_1031 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_147_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [147]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [147]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_147_rstpot_1030 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_146_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [146]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [146]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_146_rstpot_1029 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_145_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [145]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [145]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_145_rstpot_1028 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_144_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [144]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [144]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_144_rstpot_1027 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_143_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [143]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [143]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_143_rstpot_1026 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_142_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [142]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [142]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_142_rstpot_1025 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_141_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [141]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [141]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_141_rstpot_1024 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_140_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [140]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [140]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_140_rstpot_1023 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_139_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [139]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [139]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_139_rstpot_1022 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_138_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [138]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [138]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_138_rstpot_1021 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_137_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [137]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [137]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_137_rstpot_1020 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_136_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [136]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [136]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_136_rstpot_1019 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_135_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [135]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [135]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_135_rstpot_1018 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_134_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [134]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [134]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_134_rstpot_1017 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_133_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [133]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [133]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_133_rstpot_1016 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_132_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [132]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [132]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_132_rstpot_1015 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_131_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [131]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [131]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_131_rstpot_1014 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_130_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [130]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [130]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_130_rstpot_1013 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_129_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [129]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [129]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_129_rstpot_1012 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_128_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [128]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [128]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_128_rstpot_1011 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_127_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [127]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [127]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_127_rstpot_1010 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_126_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [126]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [126]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_126_rstpot_1009 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_125_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [125]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [125]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_125_rstpot_1008 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_124_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [124]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [124]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_124_rstpot_1007 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_123_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [123]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [123]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_123_rstpot_1006 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_122_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [122]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [122]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_122_rstpot_1005 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_121_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [121]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [121]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_121_rstpot_1004 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_120_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [120]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [120]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_120_rstpot_1003 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_119_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [119]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [119]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_119_rstpot_1002 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_118_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [118]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [118]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_118_rstpot_1001 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_117_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [117]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [117]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_117_rstpot_1000 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_116_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [116]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [116]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_116_rstpot_999 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_115_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [115]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [115]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_115_rstpot_998 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_114_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [114]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [114]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_114_rstpot_997 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_113_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [113]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [113]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_113_rstpot_996 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_112_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [112]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [112]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_112_rstpot_995 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_111_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [111]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [111]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_111_rstpot_994 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_110_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [110]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [110]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_110_rstpot_993 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_109_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [109]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [109]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_109_rstpot_992 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_108_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [108]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [108]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_108_rstpot_991 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_107_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [107]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [107]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_107_rstpot_990 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_106_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [106]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [106]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_106_rstpot_989 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_105_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [105]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [105]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_105_rstpot_988 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_104_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [104]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [104]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_104_rstpot_987 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_103_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [103]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [103]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_103_rstpot_986 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_102_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [102]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [102]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_102_rstpot_985 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_101_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [101]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [101]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_101_rstpot_984 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_100_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [100]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [100]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_100_rstpot_983 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_99_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [99]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [99]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_99_rstpot_982 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_98_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [98]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [98]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_98_rstpot_981 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_97_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [97]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [97]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_97_rstpot_980 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_96_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [96]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [96]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_96_rstpot_979 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_95_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [95]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [95]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_95_rstpot_978 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_94_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [94]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [94]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_94_rstpot_977 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_93_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [93]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [93]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_93_rstpot_976 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_92_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [92]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [92]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_92_rstpot_975 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_91_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [91]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [91]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_91_rstpot_974 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_90_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [90]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [90]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_90_rstpot_973 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_89_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [89]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [89]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_89_rstpot_972 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_88_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [88]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [88]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_88_rstpot_971 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_87_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [87]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [87]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_87_rstpot_970 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_86_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [86]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [86]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_86_rstpot_969 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_85_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [85]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [85]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_85_rstpot_968 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_84_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [84]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [84]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_84_rstpot_967 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_83_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [83]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [83]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_83_rstpot_966 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_82_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [82]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [82]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_82_rstpot_965 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_81_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [81]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [81]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_81_rstpot_964 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_80_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [80]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [80]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_80_rstpot_963 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_79_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [79]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [79]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_79_rstpot_962 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_78_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [78]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [78]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_78_rstpot_961 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_77_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [77]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [77]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_77_rstpot_960 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_76_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [76]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [76]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_76_rstpot_959 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_75_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [75]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [75]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_75_rstpot_958 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_74_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [74]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [74]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_74_rstpot_957 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_73_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [73]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [73]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_73_rstpot_956 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_72_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [72]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [72]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_72_rstpot_955 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_71_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [71]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [71]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_71_rstpot_954 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_70_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [70]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [70]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_70_rstpot_953 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_69_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [69]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [69]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_69_rstpot_952 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_68_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [68]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [68]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_68_rstpot_951 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_67_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [67]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [67]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_67_rstpot_950 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_66_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [66]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [66]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_66_rstpot_949 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_65_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [65]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [65]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_65_rstpot_948 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_64_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [64]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [64]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_64_rstpot_947 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_63_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [63]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [63]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_63_rstpot_946 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_62_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [62]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [62]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_62_rstpot_945 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_61_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [61]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [61]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_61_rstpot_944 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_60_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [60]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [60]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_60_rstpot_943 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_59_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [59]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [59]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_59_rstpot_942 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_58_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [58]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [58]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_58_rstpot_941 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_57_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [57]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [57]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_57_rstpot_940 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_56_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [56]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [56]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_56_rstpot_939 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_55_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [55]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [55]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_55_rstpot_938 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_54_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [54]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [54]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_54_rstpot_937 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_53_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [53]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [53]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_53_rstpot_936 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_52_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [52]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [52]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_52_rstpot_935 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_51_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [51]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [51]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_51_rstpot_934 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_50_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [50]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [50]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_50_rstpot_933 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_49_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [49]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [49]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_49_rstpot_932 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_48_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [48]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [48]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_48_rstpot_931 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_47_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [47]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [47]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_47_rstpot_930 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_46_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [46]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [46]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_46_rstpot_929 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_45_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [45]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [45]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_45_rstpot_928 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_44_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [44]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [44]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_44_rstpot_927 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_43_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [43]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [43]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_43_rstpot_926 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_42_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [42]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [42]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_42_rstpot_925 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_41_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [41]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [41]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_41_rstpot_924 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_40_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [40]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [40]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_40_rstpot_923 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_39_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [39]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [39]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_39_rstpot_922 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_38_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [38]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [38]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_38_rstpot_921 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_37_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [37]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [37]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_37_rstpot_920 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_36_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [36]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [36]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_36_rstpot_919 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_35_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [35]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [35]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_35_rstpot_918 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_34_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [34]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [34]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_34_rstpot_917 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_33_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [33]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [33]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_33_rstpot_916 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_32_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [32]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [32]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_32_rstpot_915 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_31_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [31]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [31]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_31_rstpot_914 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_30_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [30]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [30]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_30_rstpot_913 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_29_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [29]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [29]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_29_rstpot_912 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_28_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [28]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [28]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_28_rstpot_911 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_27_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [27]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [27]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_27_rstpot_910 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_26_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [26]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [26]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_26_rstpot_909 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_25_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [25]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [25]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_25_rstpot_908 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_24_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [24]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [24]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_24_rstpot_907 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_23_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [23]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [23]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_23_rstpot_906 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_22_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [22]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [22]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_22_rstpot_905 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_21_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [21]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [21]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_21_rstpot_904 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_20_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [20]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [20]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_20_rstpot_903 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_19_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [19]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [19]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_19_rstpot_902 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_18_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [18]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [18]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_18_rstpot_901 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_17_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [17]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [17]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_17_rstpot_900 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_16_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [16]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [16]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_16_rstpot_899 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_15_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [15]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [15]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_15_rstpot_898 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_14_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [14]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [14]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_14_rstpot_897 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_13_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [13]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [13]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_13_rstpot_896 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_12_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [12]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [12]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_12_rstpot_895 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_11_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [11]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [11]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_11_rstpot_894 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_10_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [10]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [10]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_10_rstpot_893 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_9_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [9]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [9]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_9_rstpot_892 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_8_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [8]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [8]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_8_rstpot_891 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_7_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [7]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [7]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_7_rstpot_890 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_6_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [6]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [6]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_6_rstpot_889 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_5_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [5]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [5]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_5_rstpot_888 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_4_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [4]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [4]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_4_rstpot_887 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_3_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [3]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [3]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_3_rstpot_886 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_2_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [2]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [2]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_2_rstpot_885 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_1_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [1]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [1]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_1_rstpot_884 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFF7FF000800 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_0_rstpot  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [0]),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .I5(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [0]),
    .O(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_0_rstpot_883 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_189  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_189_rstpot_1072 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [189])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_188  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_188_rstpot_1071 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [188])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_187  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_187_rstpot_1070 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [187])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_186  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_186_rstpot_1069 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [186])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_185  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_185_rstpot_1068 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [185])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_184  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_184_rstpot_1067 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [184])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_183  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_183_rstpot_1066 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [183])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_182  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_182_rstpot_1065 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [182])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_181  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_181_rstpot_1064 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [181])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_180  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_180_rstpot_1063 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [180])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_179  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_179_rstpot_1062 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [179])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_178  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_178_rstpot_1061 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [178])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_177  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_177_rstpot_1060 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [177])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_176  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_176_rstpot_1059 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [176])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_175  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_175_rstpot_1058 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [175])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_174  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_174_rstpot_1057 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [174])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_173  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_173_rstpot_1056 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [173])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_172  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_172_rstpot_1055 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [172])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_171  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_171_rstpot_1054 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [171])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_170  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_170_rstpot_1053 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [170])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_169  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_169_rstpot_1052 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [169])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_168  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_168_rstpot_1051 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [168])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_167  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_167_rstpot_1050 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [167])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_166  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_166_rstpot_1049 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [166])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_165  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_165_rstpot_1048 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [165])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_164  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_164_rstpot_1047 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [164])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_163  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_163_rstpot_1046 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [163])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_162  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_162_rstpot_1045 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [162])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_161  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_161_rstpot_1044 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [161])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_160  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_160_rstpot_1043 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [160])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_159  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_159_rstpot_1042 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [159])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_158  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_158_rstpot_1041 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [158])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_157  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_157_rstpot_1040 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [157])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_156  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_156_rstpot_1039 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [156])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_155  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_155_rstpot_1038 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [155])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_154  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_154_rstpot_1037 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [154])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_153  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_153_rstpot_1036 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [153])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_152  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_152_rstpot_1035 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [152])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_151  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_151_rstpot_1034 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [151])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_150  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_150_rstpot_1033 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [150])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_149  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_149_rstpot_1032 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [149])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_148  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_148_rstpot_1031 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [148])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_147  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_147_rstpot_1030 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [147])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_146  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_146_rstpot_1029 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [146])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_145  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_145_rstpot_1028 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [145])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_144  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_144_rstpot_1027 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [144])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_143  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_143_rstpot_1026 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [143])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_142  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_142_rstpot_1025 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [142])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_141  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_141_rstpot_1024 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [141])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_140  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_140_rstpot_1023 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [140])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_139  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_139_rstpot_1022 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [139])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_138  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_138_rstpot_1021 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [138])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_137  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_137_rstpot_1020 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [137])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_136  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_136_rstpot_1019 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [136])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_135  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_135_rstpot_1018 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [135])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_134  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_134_rstpot_1017 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [134])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_133  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_133_rstpot_1016 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [133])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_132  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_132_rstpot_1015 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [132])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_131  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_131_rstpot_1014 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [131])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_130  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_130_rstpot_1013 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [130])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_129  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_129_rstpot_1012 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [129])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_128  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_128_rstpot_1011 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [128])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_127  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_127_rstpot_1010 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [127])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_126  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_126_rstpot_1009 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [126])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_125  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_125_rstpot_1008 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [125])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_124  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_124_rstpot_1007 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [124])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_123  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_123_rstpot_1006 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [123])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_122  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_122_rstpot_1005 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [122])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_121  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_121_rstpot_1004 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [121])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_120  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_120_rstpot_1003 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [120])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_119  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_119_rstpot_1002 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [119])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_118  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_118_rstpot_1001 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [118])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_117  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_117_rstpot_1000 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [117])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_116  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_116_rstpot_999 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [116])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_115  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_115_rstpot_998 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [115])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_114  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_114_rstpot_997 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [114])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_113  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_113_rstpot_996 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [113])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_112  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_112_rstpot_995 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [112])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_111  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_111_rstpot_994 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [111])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_110  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_110_rstpot_993 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [110])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_109  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_109_rstpot_992 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [109])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_108  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_108_rstpot_991 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [108])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_107  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_107_rstpot_990 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [107])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_106  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_106_rstpot_989 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [106])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_105  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_105_rstpot_988 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [105])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_104  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_104_rstpot_987 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [104])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_103  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_103_rstpot_986 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [103])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_102  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_102_rstpot_985 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [102])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_101  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_101_rstpot_984 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [101])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_100  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_100_rstpot_983 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [100])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_99  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_99_rstpot_982 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [99])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_98  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_98_rstpot_981 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [98])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_97  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_97_rstpot_980 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [97])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_96  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_96_rstpot_979 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [96])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_95  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_95_rstpot_978 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [95])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_94  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_94_rstpot_977 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [94])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_93  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_93_rstpot_976 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [93])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_92  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_92_rstpot_975 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [92])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_91  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_91_rstpot_974 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [91])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_90  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_90_rstpot_973 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [90])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_89  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_89_rstpot_972 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [89])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_88  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_88_rstpot_971 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [88])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_87  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_87_rstpot_970 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [87])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_86  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_86_rstpot_969 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [86])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_85  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_85_rstpot_968 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [85])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_84  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_84_rstpot_967 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [84])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_83  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_83_rstpot_966 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [83])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_82  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_82_rstpot_965 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [82])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_81  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_81_rstpot_964 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [81])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_80  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_80_rstpot_963 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [80])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_79  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_79_rstpot_962 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [79])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_78  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_78_rstpot_961 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [78])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_77  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_77_rstpot_960 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [77])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_76  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_76_rstpot_959 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [76])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_75  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_75_rstpot_958 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [75])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_74  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_74_rstpot_957 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [74])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_73  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_73_rstpot_956 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [73])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_72  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_72_rstpot_955 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [72])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_71  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_71_rstpot_954 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [71])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_70  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_70_rstpot_953 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [70])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_69  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_69_rstpot_952 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [69])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_68  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_68_rstpot_951 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [68])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_67  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_67_rstpot_950 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [67])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_66  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_66_rstpot_949 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [66])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_65  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_65_rstpot_948 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [65])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_64  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_64_rstpot_947 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [64])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_63  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_63_rstpot_946 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [63])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_62  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_62_rstpot_945 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [62])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_61  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_61_rstpot_944 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [61])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_60  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_60_rstpot_943 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [60])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_59  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_59_rstpot_942 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [59])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_58  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_58_rstpot_941 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [58])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_57  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_57_rstpot_940 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [57])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_56  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_56_rstpot_939 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [56])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_55  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_55_rstpot_938 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [55])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_54  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_54_rstpot_937 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [54])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_53  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_53_rstpot_936 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [53])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_52  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_52_rstpot_935 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [52])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_51  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_51_rstpot_934 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [51])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_50  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_50_rstpot_933 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [50])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_49  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_49_rstpot_932 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [49])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_48  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_48_rstpot_931 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [48])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_47  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_47_rstpot_930 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [47])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_46  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_46_rstpot_929 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [46])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_45  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_45_rstpot_928 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [45])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_44  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_44_rstpot_927 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [44])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_43  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_43_rstpot_926 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [43])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_42  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_42_rstpot_925 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [42])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_41  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_41_rstpot_924 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [41])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_40  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_40_rstpot_923 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [40])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_39  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_39_rstpot_922 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [39])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_38  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_38_rstpot_921 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [38])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_37  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_37_rstpot_920 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [37])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_36  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_36_rstpot_919 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [36])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_35  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_35_rstpot_918 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [35])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_34  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_34_rstpot_917 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [34])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_33  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_33_rstpot_916 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [33])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_32  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_32_rstpot_915 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [32])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_31  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_31_rstpot_914 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [31])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_30  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_30_rstpot_913 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [30])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_29  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_29_rstpot_912 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [29])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_28  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_28_rstpot_911 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [28])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_27  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_27_rstpot_910 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [27])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_26  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_26_rstpot_909 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [26])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_25  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_25_rstpot_908 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [25])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_24  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_24_rstpot_907 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [24])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_23  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_23_rstpot_906 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [23])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_22  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_22_rstpot_905 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [22])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_21  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_21_rstpot_904 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [21])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_20  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_20_rstpot_903 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [20])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_19  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_19_rstpot_902 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [19])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_18  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_18_rstpot_901 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [18])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_17  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_17_rstpot_900 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [17])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_16  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_16_rstpot_899 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [16])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_15  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_15_rstpot_898 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [15])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_14  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_14_rstpot_897 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [14])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_13  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_13_rstpot_896 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [13])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_12  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_12_rstpot_895 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_11  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_11_rstpot_894 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_10  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_10_rstpot_893 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_9  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_9_rstpot_892 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_8  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_8_rstpot_891 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_7  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_7_rstpot_890 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_6  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_6_rstpot_889 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_5  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_5_rstpot_888 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_4  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_4_rstpot_887 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_3_rstpot_886 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_2_rstpot_885 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_1_rstpot_884 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/gdm.dm/dout_i_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i_0_rstpot_883 ),
    .Q(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [0])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0002_Result1  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0002_Result1  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0001_Result1  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0001_Result1  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 )
  );
  LUT6 #(
    .INIT ( 64'h99000000BDA5A5A5 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000153  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .I4(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000135_875 ),
    .I5(\BU2/N22 ),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000153_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I4(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I5(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\BU2/N22 )
  );
  LUT6 #(
    .INIT ( 64'h20252A2F000F000F ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .I1(\BU2/N20 ),
    .I2(\BU2/N10 ),
    .I3(\BU2/N18 ),
    .I4(\BU2/N19 ),
    .I5(\BU2/N14 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000_873 )
  );
  LUT3 #(
    .INIT ( 8'hF6 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/dout_i_SW4  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_871 ),
    .O(\BU2/N20 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF3348FFFF12CC ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/dout_i_SW3  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .I4(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_871 ),
    .I5(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .O(\BU2/N19 )
  );
  LUT5 #(
    .INIT ( 32'hF6FFFFF6 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/dout_i_SW2  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_871 ),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I4(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .O(\BU2/N18 )
  );
  LUT6 #(
    .INIT ( 64'hA5A5A5E7000000C3 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I3(\BU2/N10 ),
    .I4(\BU2/N16 ),
    .I5(\BU2/N12 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000_869 )
  );
  LUT4 #(
    .INIT ( 16'hDFFD ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/dout_i_SW1  (
    .I0(wr_en),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_870 ),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .O(\BU2/N16 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000_SW0  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I4(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .I5(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .O(\BU2/N14 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000_SW0  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .I2(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .I4(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I5(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .O(\BU2/N12 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000135  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I4(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I5(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000135_875 )
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/c2/dout_i_SW0  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .I3(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .O(\BU2/N10 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_bin_xor0000_Result1  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_bin_xor0000_Result1  (
    .I0(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1  (
    .I0(wr_en),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_870 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h00BF ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/RAM_RD_EN_FWFT1  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I3(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hB0 ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/RAM_REGOUT_EN1  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .O(\BU2/U0/grf.rf/mem/dout_i_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not00011  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_871 ),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_870 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<3>11  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<3>11  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 )
  );
  LUT4 #(
    .INIT ( 16'h8E8A ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_463 ),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I3(rd_en),
    .O(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h08FF ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001<0>1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I2(rd_en),
    .I3(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 ),
    .O(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<2>11  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<2>11  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001<1>1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0000_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0001_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_rd_pntr_gc_xor0002_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .O(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0000_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0001_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gcx.clkx/Mxor_wr_pntr_gc_xor0002_Result1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .O(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<1>11  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<1>11  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_comb1  (
    .I0(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_393 ),
    .I1(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_396 ),
    .O(\BU2/U0/grf.rf/rstblk/rd_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_comb1  (
    .I0(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_395 ),
    .I1(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_397 ),
    .O(\BU2/U0/grf.rf/rstblk/wr_rst_comb )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000_869 ),
    .Q(full)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_almost_full_i_mux0000_873 ),
    .Q(almost_full)
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1  (
    .C(wr_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/wr_rst_d1_871 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_i_or0000_869 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_870 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_0  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [0]),
    .Q(dout_3[0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_1  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [1]),
    .Q(dout_3[1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_2  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [2]),
    .Q(dout_3[2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_3  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [3]),
    .Q(dout_3[3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_4  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [4]),
    .Q(dout_3[4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_5  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [5]),
    .Q(dout_3[5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_6  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [6]),
    .Q(dout_3[6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_7  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [7]),
    .Q(dout_3[7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_8  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [8]),
    .Q(dout_3[8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_9  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [9]),
    .Q(dout_3[9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_10  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [10]),
    .Q(dout_3[10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_11  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [11]),
    .Q(dout_3[11])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_12  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [12]),
    .Q(dout_3[12])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_13  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [13]),
    .Q(dout_3[13])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_14  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [14]),
    .Q(dout_3[14])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_15  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [15]),
    .Q(dout_3[15])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_16  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [16]),
    .Q(dout_3[16])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_17  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [17]),
    .Q(dout_3[17])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_18  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [18]),
    .Q(dout_3[18])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_19  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [19]),
    .Q(dout_3[19])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_20  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [20]),
    .Q(dout_3[20])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_21  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [21]),
    .Q(dout_3[21])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_22  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [22]),
    .Q(dout_3[22])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_23  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [23]),
    .Q(dout_3[23])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_24  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [24]),
    .Q(dout_3[24])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_25  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [25]),
    .Q(dout_3[25])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_26  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [26]),
    .Q(dout_3[26])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_27  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [27]),
    .Q(dout_3[27])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_28  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [28]),
    .Q(dout_3[28])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_29  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [29]),
    .Q(dout_3[29])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_30  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [30]),
    .Q(dout_3[30])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_31  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [31]),
    .Q(dout_3[31])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_32  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [32]),
    .Q(dout_3[32])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_33  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [33]),
    .Q(dout_3[33])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_34  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [34]),
    .Q(dout_3[34])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_35  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [35]),
    .Q(dout_3[35])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_36  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [36]),
    .Q(dout_3[36])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_37  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [37]),
    .Q(dout_3[37])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_38  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [38]),
    .Q(dout_3[38])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_39  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [39]),
    .Q(dout_3[39])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_40  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [40]),
    .Q(dout_3[40])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_41  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [41]),
    .Q(dout_3[41])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_42  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [42]),
    .Q(dout_3[42])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_43  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [43]),
    .Q(dout_3[43])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_44  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [44]),
    .Q(dout_3[44])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_45  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [45]),
    .Q(dout_3[45])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_46  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [46]),
    .Q(dout_3[46])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_47  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [47]),
    .Q(dout_3[47])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_48  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [48]),
    .Q(dout_3[48])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_49  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [49]),
    .Q(dout_3[49])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_50  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [50]),
    .Q(dout_3[50])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_51  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [51]),
    .Q(dout_3[51])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_52  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [52]),
    .Q(dout_3[52])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_53  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [53]),
    .Q(dout_3[53])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_54  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [54]),
    .Q(dout_3[54])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_55  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [55]),
    .Q(dout_3[55])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_56  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [56]),
    .Q(dout_3[56])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_57  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [57]),
    .Q(dout_3[57])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_58  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [58]),
    .Q(dout_3[58])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_59  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [59]),
    .Q(dout_3[59])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_60  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [60]),
    .Q(dout_3[60])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_61  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [61]),
    .Q(dout_3[61])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_62  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [62]),
    .Q(dout_3[62])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_63  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [63]),
    .Q(dout_3[63])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_64  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [64]),
    .Q(dout_3[64])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_65  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [65]),
    .Q(dout_3[65])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_66  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [66]),
    .Q(dout_3[66])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_67  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [67]),
    .Q(dout_3[67])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_68  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [68]),
    .Q(dout_3[68])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_69  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [69]),
    .Q(dout_3[69])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_70  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [70]),
    .Q(dout_3[70])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_71  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [71]),
    .Q(dout_3[71])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_72  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [72]),
    .Q(dout_3[72])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_73  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [73]),
    .Q(dout_3[73])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_74  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [74]),
    .Q(dout_3[74])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_75  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [75]),
    .Q(dout_3[75])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_76  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [76]),
    .Q(dout_3[76])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_77  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [77]),
    .Q(dout_3[77])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_78  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [78]),
    .Q(dout_3[78])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_79  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [79]),
    .Q(dout_3[79])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_80  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [80]),
    .Q(dout_3[80])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_81  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [81]),
    .Q(dout_3[81])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_82  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [82]),
    .Q(dout_3[82])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_83  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [83]),
    .Q(dout_3[83])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_84  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [84]),
    .Q(dout_3[84])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_85  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [85]),
    .Q(dout_3[85])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_86  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [86]),
    .Q(dout_3[86])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_87  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [87]),
    .Q(dout_3[87])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_88  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [88]),
    .Q(dout_3[88])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_89  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [89]),
    .Q(dout_3[89])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_90  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [90]),
    .Q(dout_3[90])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_91  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [91]),
    .Q(dout_3[91])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_92  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [92]),
    .Q(dout_3[92])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_93  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [93]),
    .Q(dout_3[93])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_94  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [94]),
    .Q(dout_3[94])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_95  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [95]),
    .Q(dout_3[95])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_96  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [96]),
    .Q(dout_3[96])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_97  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [97]),
    .Q(dout_3[97])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_98  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [98]),
    .Q(dout_3[98])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_99  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [99]),
    .Q(dout_3[99])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_100  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [100]),
    .Q(dout_3[100])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_101  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [101]),
    .Q(dout_3[101])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_102  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [102]),
    .Q(dout_3[102])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_103  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [103]),
    .Q(dout_3[103])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_104  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [104]),
    .Q(dout_3[104])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_105  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [105]),
    .Q(dout_3[105])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_106  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [106]),
    .Q(dout_3[106])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_107  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [107]),
    .Q(dout_3[107])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_108  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [108]),
    .Q(dout_3[108])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_109  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [109]),
    .Q(dout_3[109])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_110  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [110]),
    .Q(dout_3[110])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_111  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [111]),
    .Q(dout_3[111])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_112  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [112]),
    .Q(dout_3[112])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_113  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [113]),
    .Q(dout_3[113])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_114  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [114]),
    .Q(dout_3[114])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_115  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [115]),
    .Q(dout_3[115])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_116  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [116]),
    .Q(dout_3[116])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_117  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [117]),
    .Q(dout_3[117])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_118  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [118]),
    .Q(dout_3[118])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_119  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [119]),
    .Q(dout_3[119])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_120  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [120]),
    .Q(dout_3[120])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_121  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [121]),
    .Q(dout_3[121])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_122  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [122]),
    .Q(dout_3[122])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_123  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [123]),
    .Q(dout_3[123])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_124  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [124]),
    .Q(dout_3[124])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_125  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [125]),
    .Q(dout_3[125])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_126  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [126]),
    .Q(dout_3[126])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_127  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [127]),
    .Q(dout_3[127])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_128  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [128]),
    .Q(dout_3[128])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_129  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [129]),
    .Q(dout_3[129])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_130  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [130]),
    .Q(dout_3[130])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_131  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [131]),
    .Q(dout_3[131])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_132  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [132]),
    .Q(dout_3[132])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_133  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [133]),
    .Q(dout_3[133])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_134  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [134]),
    .Q(dout_3[134])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_135  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [135]),
    .Q(dout_3[135])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_136  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [136]),
    .Q(dout_3[136])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_137  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [137]),
    .Q(dout_3[137])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_138  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [138]),
    .Q(dout_3[138])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_139  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [139]),
    .Q(dout_3[139])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_140  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [140]),
    .Q(dout_3[140])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_141  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [141]),
    .Q(dout_3[141])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_142  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [142]),
    .Q(dout_3[142])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_143  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [143]),
    .Q(dout_3[143])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_144  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [144]),
    .Q(dout_3[144])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_145  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [145]),
    .Q(dout_3[145])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_146  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [146]),
    .Q(dout_3[146])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_147  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [147]),
    .Q(dout_3[147])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_148  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [148]),
    .Q(dout_3[148])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_149  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [149]),
    .Q(dout_3[149])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_150  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [150]),
    .Q(dout_3[150])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_151  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [151]),
    .Q(dout_3[151])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_152  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [152]),
    .Q(dout_3[152])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_153  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [153]),
    .Q(dout_3[153])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_154  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [154]),
    .Q(dout_3[154])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_155  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [155]),
    .Q(dout_3[155])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_156  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [156]),
    .Q(dout_3[156])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_157  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [157]),
    .Q(dout_3[157])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_158  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [158]),
    .Q(dout_3[158])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_159  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [159]),
    .Q(dout_3[159])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_160  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [160]),
    .Q(dout_3[160])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_161  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [161]),
    .Q(dout_3[161])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_162  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [162]),
    .Q(dout_3[162])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_163  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [163]),
    .Q(dout_3[163])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_164  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [164]),
    .Q(dout_3[164])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_165  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [165]),
    .Q(dout_3[165])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_166  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [166]),
    .Q(dout_3[166])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_167  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [167]),
    .Q(dout_3[167])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_168  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [168]),
    .Q(dout_3[168])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_169  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [169]),
    .Q(dout_3[169])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_170  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [170]),
    .Q(dout_3[170])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_171  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [171]),
    .Q(dout_3[171])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_172  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [172]),
    .Q(dout_3[172])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_173  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [173]),
    .Q(dout_3[173])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_174  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [174]),
    .Q(dout_3[174])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_175  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [175]),
    .Q(dout_3[175])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_176  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [176]),
    .Q(dout_3[176])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_177  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [177]),
    .Q(dout_3[177])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_178  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [178]),
    .Q(dout_3[178])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_179  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [179]),
    .Q(dout_3[179])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_180  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [180]),
    .Q(dout_3[180])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_181  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [181]),
    .Q(dout_3[181])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_182  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [182]),
    .Q(dout_3[182])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_183  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [183]),
    .Q(dout_3[183])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_184  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [184]),
    .Q(dout_3[184])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_185  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [185]),
    .Q(dout_3[185])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_186  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [186]),
    .Q(dout_3[186])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_187  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [187]),
    .Q(dout_3[187])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_188  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [188]),
    .Q(dout_3[188])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/mem/dout_i_189  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/mem/dout_i_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0]),
    .D(\BU2/U0/grf.rf/mem/gdm.dm/dout_i [189]),
    .Q(dout_3[189])
  );
  RAM32X1D   \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM324  (
    .A0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(\BU2/rd_data_count [0]),
    .D(din_2[189]),
    .DPRA0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(\BU2/rd_data_count [0]),
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM324_SPO_UNCONNECTED ),
    .DPO(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [189])
  );
  RAM32X1D   \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM323  (
    .A0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(\BU2/rd_data_count [0]),
    .D(din_2[188]),
    .DPRA0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(\BU2/rd_data_count [0]),
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM323_SPO_UNCONNECTED ),
    .DPO(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [188])
  );
  RAM32X1D   \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM322  (
    .A0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(\BU2/rd_data_count [0]),
    .D(din_2[187]),
    .DPRA0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(\BU2/rd_data_count [0]),
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM322_SPO_UNCONNECTED ),
    .DPO(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [187])
  );
  RAM32X1D   \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM321  (
    .A0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]),
    .A1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1]),
    .A2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2]),
    .A3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .A4(\BU2/rd_data_count [0]),
    .D(din_2[186]),
    .DPRA0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .DPRA1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .DPRA2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .DPRA3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .DPRA4(\BU2/rd_data_count [0]),
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .SPO(\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM321_SPO_UNCONNECTED ),
    .DPO(\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [186])
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM31  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[181], din_2[180]}),
    .DIB({din_2[183], din_2[182]}),
    .DIC({din_2[185], din_2[184]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [181], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [180]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [183], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [182]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [185], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [184]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM31_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM31_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM30  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[175], din_2[174]}),
    .DIB({din_2[177], din_2[176]}),
    .DIC({din_2[179], din_2[178]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [175], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [174]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [177], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [176]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [179], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [178]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM30_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM30_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM29  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[169], din_2[168]}),
    .DIB({din_2[171], din_2[170]}),
    .DIC({din_2[173], din_2[172]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [169], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [168]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [171], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [170]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [173], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [172]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM29_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM29_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM28  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[163], din_2[162]}),
    .DIB({din_2[165], din_2[164]}),
    .DIC({din_2[167], din_2[166]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [163], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [162]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [165], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [164]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [167], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [166]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM28_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM28_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM27  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[157], din_2[156]}),
    .DIB({din_2[159], din_2[158]}),
    .DIC({din_2[161], din_2[160]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [157], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [156]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [159], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [158]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [161], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [160]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM27_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM27_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM26  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[151], din_2[150]}),
    .DIB({din_2[153], din_2[152]}),
    .DIC({din_2[155], din_2[154]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [151], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [150]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [153], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [152]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [155], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [154]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM26_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM26_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM25  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[145], din_2[144]}),
    .DIB({din_2[147], din_2[146]}),
    .DIC({din_2[149], din_2[148]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [145], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [144]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [147], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [146]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [149], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [148]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM25_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM25_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM24  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[139], din_2[138]}),
    .DIB({din_2[141], din_2[140]}),
    .DIC({din_2[143], din_2[142]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [139], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [138]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [141], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [140]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [143], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [142]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM24_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM24_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM23  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[133], din_2[132]}),
    .DIB({din_2[135], din_2[134]}),
    .DIC({din_2[137], din_2[136]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [133], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [132]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [135], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [134]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [137], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [136]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM23_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM23_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM22  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[127], din_2[126]}),
    .DIB({din_2[129], din_2[128]}),
    .DIC({din_2[131], din_2[130]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [127], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [126]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [129], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [128]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [131], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [130]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM22_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM22_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM21  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[121], din_2[120]}),
    .DIB({din_2[123], din_2[122]}),
    .DIC({din_2[125], din_2[124]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [121], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [120]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [123], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [122]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [125], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [124]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM21_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM21_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM20  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[115], din_2[114]}),
    .DIB({din_2[117], din_2[116]}),
    .DIC({din_2[119], din_2[118]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [115], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [114]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [117], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [116]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [119], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [118]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM20_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM20_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM19  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[109], din_2[108]}),
    .DIB({din_2[111], din_2[110]}),
    .DIC({din_2[113], din_2[112]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [109], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [108]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [111], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [110]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [113], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [112]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM19_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM19_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM18  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[103], din_2[102]}),
    .DIB({din_2[105], din_2[104]}),
    .DIC({din_2[107], din_2[106]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [103], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [102]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [105], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [104]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [107], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [106]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM18_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM18_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM17  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[97], din_2[96]}),
    .DIB({din_2[99], din_2[98]}),
    .DIC({din_2[101], din_2[100]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [97], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [96]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [99], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [98]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [101], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [100]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM17_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM17_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM16  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[91], din_2[90]}),
    .DIB({din_2[93], din_2[92]}),
    .DIC({din_2[95], din_2[94]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [91], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [90]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [93], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [92]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [95], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [94]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM16_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM16_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM15  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[85], din_2[84]}),
    .DIB({din_2[87], din_2[86]}),
    .DIC({din_2[89], din_2[88]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [85], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [84]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [87], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [86]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [89], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [88]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM15_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM15_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM14  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[79], din_2[78]}),
    .DIB({din_2[81], din_2[80]}),
    .DIC({din_2[83], din_2[82]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [79], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [78]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [81], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [80]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [83], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [82]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM14_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM14_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM13  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[73], din_2[72]}),
    .DIB({din_2[75], din_2[74]}),
    .DIC({din_2[77], din_2[76]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [73], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [72]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [75], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [74]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [77], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [76]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM13_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM13_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM12  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[67], din_2[66]}),
    .DIB({din_2[69], din_2[68]}),
    .DIC({din_2[71], din_2[70]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [67], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [66]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [69], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [68]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [71], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [70]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM11  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[61], din_2[60]}),
    .DIB({din_2[63], din_2[62]}),
    .DIC({din_2[65], din_2[64]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [61], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [60]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [63], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [62]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [65], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [64]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM10  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[55], din_2[54]}),
    .DIB({din_2[57], din_2[56]}),
    .DIC({din_2[59], din_2[58]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [55], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [54]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [57], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [56]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [59], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [58]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM9  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[49], din_2[48]}),
    .DIB({din_2[51], din_2[50]}),
    .DIC({din_2[53], din_2[52]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [49], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [48]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [51], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [50]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [53], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [52]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM8  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[43], din_2[42]}),
    .DIB({din_2[45], din_2[44]}),
    .DIC({din_2[47], din_2[46]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [43], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [42]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [45], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [44]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [47], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [46]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM7  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[37], din_2[36]}),
    .DIB({din_2[39], din_2[38]}),
    .DIC({din_2[41], din_2[40]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [37], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [36]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [39], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [38]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [41], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [40]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM6  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[31], din_2[30]}),
    .DIB({din_2[33], din_2[32]}),
    .DIC({din_2[35], din_2[34]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [31], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [30]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [33], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [32]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [35], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [34]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM5  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[25], din_2[24]}),
    .DIB({din_2[27], din_2[26]}),
    .DIC({din_2[29], din_2[28]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [25], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [24]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [27], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [26]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [29], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [28]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM4  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[19], din_2[18]}),
    .DIB({din_2[21], din_2[20]}),
    .DIC({din_2[23], din_2[22]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [19], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [18]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [21], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [20]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [23], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [22]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM3  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[13], din_2[12]}),
    .DIB({din_2[15], din_2[14]}),
    .DIC({din_2[17], din_2[16]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [13], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [12]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [15], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [14]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [17], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [16]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM2  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[7], din_2[6]}),
    .DIB({din_2[9], din_2[8]}),
    .DIC({din_2[11], din_2[10]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [7], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [6]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [9], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [8]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [11], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [10]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ),
    .INIT_A ( 64'h0000000000000000 ))
  \BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM1  (
    .WCLK(wr_clk),
    .WE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .DIA({din_2[1], din_2[0]}),
    .DIB({din_2[3], din_2[2]}),
    .DIC({din_2[5], din_2[4]}),
    .DID({\BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .ADDRA({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRB({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRC({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .ADDRD({\BU2/rd_data_count [0], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0]}),
    .DOA({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [1], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [0]}),
    .DOB({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [3], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [2]}),
    .DOC({\BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [5], \BU2/U0/grf.rf/mem/gdm.dm/_varindex0000 [4]}),
    .DOD({\NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<1>_UNCONNECTED , \NLW_BU2/U0/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<0>_UNCONNECTED })
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d3_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_0  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_1  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_2  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_3  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/gl0.wr/wpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [1]),
    .Q(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_mux0001 [0]),
    .Q(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state [1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(empty)
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_mux0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_463 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_0  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_1  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_2  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_3  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_0  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_1  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_2  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_3  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/rpntr/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_0  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0002 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_1  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d3 [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0002 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_0  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [0]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_1  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [1]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [0]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [1]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_0  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_1  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_0  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0002 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_1  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_2  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin_3  (
    .C(rd_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/wr_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_0  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0002 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_1  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0001 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_2  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_xor0000 ),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin_3  (
    .C(wr_clk),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0]),
    .D(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .Q(\BU2/U0/grf.rf/gcx.clkx/rd_pntr_bin [3])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_reg_0  (
    .C(wr_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_reg [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_reg_1  (
    .C(wr_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_0  (
    .C(rd_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_1  (
    .C(rd_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_2  (
    .C(rd_clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2])
  );
  FDPE   \BU2/U0/grf.rf/rstblk/rd_rst_asreg  (
    .C(rd_clk),
    .CE(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_392 ),
    .D(\BU2/rd_data_count [0]),
    .PRE(rst),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_396 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1  (
    .C(wr_clk),
    .D(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_397 ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_394 )
  );
  FDPE   \BU2/U0/grf.rf/rstblk/wr_rst_asreg  (
    .C(wr_clk),
    .CE(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_394 ),
    .D(\BU2/rd_data_count [0]),
    .PRE(rst),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_397 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_396 ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_392 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2  (
    .C(wr_clk),
    .D(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_394 ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_395 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_392 ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_393 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i  (
    .C(rd_clk),
    .D(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_or0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_391 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/rd_data_count [0])
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
