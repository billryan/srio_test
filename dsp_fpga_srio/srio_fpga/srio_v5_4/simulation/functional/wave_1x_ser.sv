# SimVision Command Script (Wed Dec 15 10:37:27 MST 2004)

#
# databases
#
if {[database find -match exact -name ep_top-1] == {}} {
    database open ./ep_top-1-1.trn -name ep_top-1
}

#
# groups
#

if {[group find -match exact -name {Group 1}] == {}} {
    group new -name {Group 1} -overlay 0
} else {
    group using {Group 1}
    group set -overlay 0
    group clear 0 end
}
group insert \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_addr_o[0:33]}

if {[group find -match exact -name {User Sim Interface}] == {}} {
    group new -name {User Sim Interface} -overlay 0
} else {
    group using {User Sim Interface}
    group set -overlay 0
    group clear 0 end
}
group insert \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.clk} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_sof_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_eof_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_data_o[0:63]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_byte_count_o[0:8]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_byte_en_n_o[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_vld_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_rdy_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_dsc_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_ftype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_ttype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_dest_id_o[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_tid_o[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_sof_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_eof_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_data_i[0:63]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_vld_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_rdy_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_ftype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_ttype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_dest_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_tid_i[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_prio_i[0:1]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_src_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.iresp_status_i[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.clk} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_sof_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_eof_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_addr_i[0:33]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_data_i[0:63]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_byte_count_i[0:8]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_byte_en_n_i[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_vld_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_rdy_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_ftype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_ttype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_dest_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_tid_i[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.treq_src_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.clk} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_sof_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_eof_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_data_o[0:63]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_rdy_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_vld_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_dsc_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_ftype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_ttype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_dest_id_o[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_tid_o[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.tresp_status_o[0:3]}

if {[group find -match exact -name {Group 3}] == {}} {
    group new -name {Group 3} -overlay 0
} else {
    group using {Group 3}
    group set -overlay 0
    group clear 0 end
}
group insert \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.clk} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_sof_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_eof_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_data_o[0:63]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_byte_count_o[0:8]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_byte_en_n_o[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_vld_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_rdy_n_i} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_dsc_n_o} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_ftype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_ttype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_dest_id_o[0:7]} \
    {"ep_top-1"::ep_tb.ep_sim.user_sim_host.ireq_tid_o[0:7]}

if {[group find -match exact -name {Top Level Interface}] == {}} {
    group new -name {Top Level Interface} -overlay 0
} else {
    group using {Top Level Interface}
    group set -overlay 0
    group clear 0 end
}
group insert \
    {"ep_top-1"::ep_tb.sys_reset_n} \
    {"ep_top-1"::ep_tb.sys_clk} \
    {"ep_top-1"::ep_tb.sys_clk_sim} \
    {"ep_top-1"::ep_tb.srio_txp0} \
    {"ep_top-1"::ep_tb.srio_txn0} \
    {"ep_top-1"::ep_tb.srio_txp0_sim} \
    {"ep_top-1"::ep_tb.srio_txn0_sim} \
    {"ep_top-1"::ep_tb.srio_rxp0} \
    {"ep_top-1"::ep_tb.srio_rxn0} \
    {"ep_top-1"::ep_tb.srio_rxp0_sim} \
    {"ep_top-1"::ep_tb.srio_rxn0_sim}

if {[group find -match exact -name {User Target Interface}] == {}} {
    group new -name {User Target Interface} -overlay 0
} else {
    group using {User Target Interface}
    group set -overlay 0
    group clear 0 end
}
group insert \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.lnk_reset_n} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.sys_clk} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_sof_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_eof_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_addr_o[0:33]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_data_o[0:63]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_byte_count_o[0:8]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_byte_en_n_o[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_rdy_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_vld_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_dsc_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_ftype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_ttype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_dest_id_o[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.ireq_tid_o[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.sys_clk} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_sof_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_eof_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_data_i[0:63]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_rdy_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_vld_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_ftype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_ttype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_dest_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_tid_i[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_src_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.iresp_status_i[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.sys_clk} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_sof_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_eof_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_addr_i[0:33]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_data_i[0:63]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_byte_count_i[0:8]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_byte_en_n_i[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_rdy_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_vld_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_ftype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_ttype_i[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_dest_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_tid_i[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.treq_src_id_i[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.sys_clk} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_sof_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_eof_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_data_o[0:63]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_rdy_n_i} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_dsc_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_vld_n_o} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_ftype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_ttype_o[0:3]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_dest_id_o[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_tid_o[0:7]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_prio_o[0:1]} \
    {"ep_top-1"::ep_tb.ep.user_top.target_user.tresp_status_o[0:3]}

#
# mmaps
#
mmap new -reuse -name {Example Map} -contents {
{%b=11???? -bgcolor orange -label REG:%x -linecolor yellow -shape bus}
{%x=1F -bgcolor red -label ERROR -linecolor white -shape EVENT}
{%x=2C -bgcolor red -label ERROR -linecolor white -shape EVENT}
{%x=* -label %x -linecolor gray -shape bus}
}

#
# Design Browser windows
#
if {[window find -match exact -name "Design Browser 1"] == {}} {
    window new DesignBrowser -name "Design Browser 1" -geometry 700x500+623+347
} else {
    window geometry "Design Browser 1" 700x500+623+347
}
window target "Design Browser 1" on
browser using {Design Browser 1}
browser set \
    -scope {"ep_top-1"::ep_tb.ep.user}
browser yview see {"ep_top-1"::ep_tb.ep.user}

#
# Waveform windows
#
if {[window find -match exact -name "Waveform 1"] == {}} {
    window new WaveWindow -name "Waveform 1" -geometry 1448x952+32+95
} else {
    window geometry "Waveform 1" 1448x952+32+95
}
window target "Waveform 1" on
waveform using {Waveform 1}
waveform sidebar visibility partial
waveform set \
    -primarycursor TimeA \
    -signalnames name \
    -signalwidth 285 \
    -units ns \
    -valuewidth 33
cursor set -using TimeA -time 0
waveform baseline set -time 0

set groupId [waveform add -groups {{Top Level Interface}}]
foreach id [waveform hierarchy contents $groupId] attrs {
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
} {
    eval waveform format $id $attrs
}

set groupId [waveform add -groups {{User Sim Interface}}]
foreach id [waveform hierarchy contents $groupId] attrs {
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
} {
    eval waveform format $id $attrs
}
waveform hierarchy collapse $groupId

set groupId [waveform add -groups {{User Target Interface}}]
foreach id [waveform hierarchy contents $groupId] attrs {
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-radix %b -trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
    {-trace digital -color #00ff00 -symbol {}}
} {
    eval waveform format $id $attrs
}
waveform hierarchy collapse $groupId


waveform xview limits 0 42014ns

#
# preferences
#
preferences set ams-show-flow 1
preferences set ams-show-potential 1
preferences set analog-height 5
preferences set color-verilog-by-value 1
preferences set create-cursor-for-new-window 0
preferences set cv-num-lines 25
preferences set cv-show-only 1
preferences set db-scope-gen-compnames 0
preferences set db-scope-gen-icons 1
preferences set db-scope-gen-sort name
preferences set db-scope-gen-tracksb 0
preferences set db-scope-systemc-processes 1
preferences set db-scope-verilog-cells 1
preferences set db-scope-verilog-functions 1
preferences set db-scope-verilog-namedbegins 1
preferences set db-scope-verilog-namedforks 1
preferences set db-scope-verilog-tasks 1
preferences set db-scope-vhdl-assertions 1
preferences set db-scope-vhdl-assignments 1
preferences set db-scope-vhdl-blocks 1
preferences set db-scope-vhdl-breakstatements 1
preferences set db-scope-vhdl-calls 1
preferences set db-scope-vhdl-generates 1
preferences set db-scope-vhdl-processstatements 1
preferences set db-scope-vhdl-unnamedprocesses 1
preferences set db-show-editbuf 0
preferences set db-show-modnames 0
preferences set db-show-values simulator
preferences set db-signal-filter-constants 1
preferences set db-signal-filter-generics 1
preferences set db-signal-filter-other 1
preferences set db-signal-filter-quantities 1
preferences set db-signal-filter-signals 1
preferences set db-signal-filter-terminals 1
preferences set db-signal-filter-variables 1
preferences set db-signal-gen-radix default
preferences set db-signal-gen-showdetail 0
preferences set db-signal-gen-showstrength 0
preferences set db-signal-gen-sort name
preferences set db-signal-show-assertions 1
preferences set db-signal-show-errorsignals 1
preferences set db-signal-show-fibers 1
preferences set db-signal-show-inouts 1
preferences set db-signal-show-inputs 1
preferences set db-signal-show-internal 1
preferences set db-signal-show-live 1
preferences set db-signal-show-mutexes 1
preferences set db-signal-show-outputs 1
preferences set db-signal-show-semaphores 1
preferences set db-signal-vlogfilter-branches 1
preferences set db-signal-vlogfilter-memories 1
preferences set db-signal-vlogfilter-parameters 1
preferences set db-signal-vlogfilter-registers 1
preferences set db-signal-vlogfilter-variables 1
preferences set db-signal-vlogfilter-wires 1
preferences set default-ams-formatting potential
preferences set default-time-units ns
preferences set delete-unused-cursors-on-exit 1
preferences set delete-unused-groups-on-exit 1
preferences set enable-toolnet 0
preferences set initial-zoom-out-full 0
preferences set key-bindings {
	Edit>Undo "Ctrl+Z"
	Edit>Redo "Ctrl+Y"
	Edit>Copy "Ctrl+C"
	Edit>Cut "Ctrl+X"
	Edit>Paste "Ctrl+V"
	Edit>Delete "Del"
	openDB "Ctrl+O"
	View>Zoom>InX "Alt+I"
	View>Zoom>OutX "Alt+O"
	View>Zoom>FullX "Alt+="
	View>Zoom>InX_widget "I"
	View>Zoom>OutX_widget "O"
	View>Zoom>FullX_widget "="
	View>Zoom>Cursor-Baseline "Alt+Z"
	View>Center "Alt+C"
	View>ExpandSequenceTime>AtCursor "Alt+X"
	View>CollapseSequenceTime>AtCursor "Alt+S"
	Edit>Create>Group "Ctrl+G"
	Edit>Ungroup "Ctrl+Shift+G"
	Edit>Create>Marker "Ctrl+M"
	Edit>Create>Condition "Ctrl+E"
	Edit>Create>Bus "Ctrl+W"
	Explore>NextEdge "Ctrl+\]"
	Explore>PreviousEdge "Ctrl+\["
	ScrollRight "Right arrow"
	ScrollLeft "Left arrow"
	ScrollUp "Up arrow"
	ScrollDown "Down arrow"
	PageUp "PageUp"
	PageDown "PageDown"
	TopOfPage "Home"
	BottomOfPage "End"
}
preferences set marching-waveform 1
preferences set prompt-exit 1
preferences set prompt-on-reinvoke 1
preferences set register-print-colors {Black on white}
preferences set register-print-fittopage 0
preferences set register-print-orientation Portrait
preferences set register-print-paper {Letter (8.5 x 11)}
preferences set respond-to-simvision-command 1
preferences set restore-state-on-startup 0
preferences set save-state-on-startup 0
preferences set sb-double-click-command @goto-definition
preferences set sb-editor-command {xterm -e /usr/dt/bin/dtpad +%L %F}
preferences set sb-history-size 10
preferences set sb-module-only 0
preferences set sb-radix default
preferences set sb-show-strength 1
preferences set sb-syntax-highlight 0
preferences set sb-syntax-types {
    {
	-name "VHDL/VHDL-AMS" -dacname "vhdl" -extensions {.vhd .vhdl}
	-ignorecase 1 -multiline {} -singleline {--} -singlechar {} -onechar {'}
	-keywords {
	    \{ abs access after alias all 
	    and architecture array assert attribute 
	    begin block body buffer bus 
	    case component configuration constant disconnect 
	    downto else elsif end entity 
	    exit file for function generate
	    generic group guarded if impure 
	    in inertial inout is label 
	    library linkage literal loop map
	    mod nand new next nor
	    not null of on open
	    or others out package port
	    postponed procedure process pure range
	    record register reject rem report
	    return rol ror select severity
	    signal shared sla sll sra 
	    srl subtype then to transport
	    type unaffected units until use
	    variable wait when while xnor 
	    xor `base `left `right `high 
	    `low `ascending `image `value `pos 
	    `val `succ `pred `leftof `rightof
	    `range `reverse_range `length `delayed `stable 
	    `quiet `transaction `event `last_event `last_active 
	    `last_value `driving `driving_value `simple_name `instance_name 
	    `path_name
            across break nature noise quantity procedural
            reference spectrum subnature terminal through
            tolerance \}
	}
    }
    {
	-name "Verilog/Verilog-AMS" -dacname "verilog" -extensions {.v .vams .vms .va}
	-multiline {/* */} -singleline {//} -singlechar {}
	-keywords {
	    \{ always and assign attribute begin 
	    buf bufif0 bufif1 case casex
	    casez cmos deassign default defparam 
	    disable edge else end endattribute 
	    endcase endmodule endfunction endprimitive endspecify 
	    endtable endtask event for force 
	    forever fork function highz0 highz1 
	    if initial inout input integer 
	    join large macromodule medium module 
	    nand negedge nmos nor not 
	    notif0 notif1 or output parameter 
	    pmos posedge primitive pull0 pull1 
	    pullup pulldown rcmos reg release 
	    repeat rnmos rpmos rtran rtranif0 
	    rtranif1 scalared small specify specparam 
	    strength strong0 strong1 supply0 supply1 
	    table task time tran tranif0 
	    tranif1 tri tri0 tri1 triand 
	    trior trireg use vectored wait
	    wand weak0 weak1 while wire
	    wor xnor xor 
            nature endnature abstol access ddt_nature idt_nature
            units flow potential discipline enddiscipline domain
            discrete continuous branch genvar analog generate
            cross above timer initial_step final_step ddt
            idt idtmod absdelay transition slew laplace_zd
            laplace_zp laplace_nd laplace_np last_crossing zi_zp
            zi_zd zi_np zi_nd ac_stim white_noise flicker_noise
            noise_table analysis ln log exp sqrt min max abs pow
            ceil floor sin cos tan asin acos atan atan2 sinh cosh
            tanh asinh acosh atanh hypot driver_update connectrules
            endconnectrules connectmodule connect resolveto split
            merged inf from exclude ground wreal dynamicparam \}
	}
    }
    {
	-name "C" -dacname "c" -extensions {.c}
	-multiline {/* */} -singleline {}
	-keywords {
	    \{ asm auto break case catch
	    cdecl char class const continue 
	    default define delete do double 
	    else enum extern far float 
	    for goto huge if include 
	    inline int interrupt long near 
	    operator pascal register return short 
	    signed sizeof static struct switch 
	    typedef union unsigned void volatile 
	    while \}
	}
    }
    {
	-name "C++" -dacname "c++" -extensions {.h .hpp .cc .cpp .CC}
	-multiline {/* */} -singleline {//}  
	-keywords {
	    \{ asm auto break case catch 
	    cdecl char class const continue 
	    default define delete do double 
	    else enum extern far float 
	    for friend goto huge if 
	    include inline int interrupt long 
	    near new operator pascal private 
	    protected public register return short 
	    signed sizeof static struct switch 
	    template this typedef union unsigned 
	    virtual void volatile while \}
	}
    }
    {
	-name "SystemC" -dacname "systemc" -extensions {.h .hpp .cc .cpp .CC} 
	-multiline {/* */} -singleline {//} 
	-keywords {
	    \{ asm auto break case catch 
	    cdecl char class const continue 
	    default define delete do double 
	    else enum extern far float 
	    for friend goto huge if 
	    include inline int interrupt long 
	    near new operator pascal private 
	    protected public register return short 
	    signed sizeof static struct switch 
	    template this typedef union unsigned 
	    virtual void volatile while \}
	}
    }
}
preferences set sb-tab-size 8
preferences set schematic-show-values simulator
preferences set search-toolbar 1
preferences set seq-time-width 30
preferences set sfb-colors {
	register #beded1
	variable #beded1
	assignStmt gray85
	force #faa385
}
preferences set sfb-default-tree 0
preferences set sfb-max-cell-width 40
preferences set sfb-print-colors {Black on white}
preferences set sfb-print-fittopage false
preferences set sfb-print-margin-x 1i
preferences set sfb-print-margin-y 1i
preferences set sfb-print-orientation Portrait
preferences set sfb-print-paper {Letter (8.5 x 11)}
preferences set show-database-names 0
preferences set show-full-signal-names 0
preferences set show-strength 0
preferences set show-times-on-cursors 1
preferences set show-times-on-markers 1
preferences set signal-type-colors {
	group #FF0000
	overlay #FF0000
	input #FFFF00
	output #FFA500
	inout #00FFFF
	internal #00FF00
	fiber #FF99FF
	unknown #FFFFFF
}
preferences set snap-to-edge 1
preferences set toolbars-style icon
preferences set transaction-height 3
preferences set txe-locate-add-fibers yes
preferences set txe-locate-create-waveform sometimes
preferences set txe-locate-pop-waveform yes
preferences set txe-locate-scroll-x yes
preferences set txe-locate-scroll-y yes
preferences set txe-man-doubleclick-search edit
preferences set txe-navigate-search-locate no
preferences set txe-navigate-waveform-locate yes
preferences set txe-navigate-waveform-next-child no
preferences set txe-search-default-form built_in.basic
preferences set txe-search-result-limit 200
preferences set txe-search-reuse-window never
preferences set txe-search-show-linenumbers yes
preferences set txe-search-style form
preferences set txe-view-hold off
preferences set undo-add-signal 0
preferences set use-signal-type-colors 0
preferences set use-signal-type-icons 1
preferences set verilog-colors {
	HiZ #ff9900
	Sm #00ff99
	Me #0000ff
	We #00ffff
	La #ff00ff
	Pu #9900ff
	St #00ff00
	Su #ff0099
	0 #00ff00
	1 #00ff00
	X #ff0000
	Z #ff9900
	other #ffff00
}
preferences set vhdl-colors {
	U #9900ff
	X #ff0000
	0 #00ff00
	1 #00ff00
	Z #ff9900
	W #ff0000
	L #00ffff
	H #00ffff
	- #0000ff
}
preferences set waveform-banding 1
preferences set waveform-height 14
preferences set waveform-print-colors {Black on white}
preferences set waveform-print-orientation Landscape
preferences set waveform-print-paper {Letter (8.5 x 11)}
preferences set waveform-print-time visible
preferences set waveform-print-variables visible
preferences set waveform-space 4
