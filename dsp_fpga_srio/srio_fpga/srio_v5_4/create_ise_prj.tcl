

# 
# Project automation script for create_ise_prj
# 
# Created for ISE version 11.3
# 
# This file contains several Tcl procedures (procs) that you can use to automate
# your project by running from xtclsh or the Project Navigator Tcl console.
# If you load this file (using the Tcl command: source srio_v5_4_ise.tcl, then you can
# run any of the procs included here.
# You may also edit any of these procs to customize them. See comments in each
# proc for more instructions.
# 
# This file contains the following procedures:
# 
# Top Level procs (meant to be called directly by the user):
#    build_project: you can alternatively use this top-level procedure
#        to recreate your entire project, and the run selected processes.
# 
# Lower Level (helper) procs (called under in various cases by the top level procs):
#    show_help: print some basic information describing how this script works
#    add_source_files: adds the listed source files to your project.
#    set_project_props: sets the project properties that were in effect when this
#        script was generated.
#    set_process_props: set the process properties as they were set for your project
#        when this script was generated.
# 

# How to Use:
# 1. Run the command prompt using start -> run -> "cmd"
# 2. Navigate to the directory where this tcl script is located.
# 3. Run the command xtclsh create_ise_prj.tcl build_project
# 4. An ISE project file will be created in the current directory and 
#    can now be opened for use with Project Navigator



set myProject "srio_v5_4_ise_prj"
set myScript "srio_v5_4_ise_prj.tcl"

# 
# Main (top-level) routines
# 

# 
# build_project
# 
# This procedure creates the project. It then sets project properties and adds 
# project sources as specified by the set_project_props and add_source_files support 
# procs. It recreates VHDL libraries and partitions as they existed at the time this 
# script was generated.
# 

proc build_project {} {

   global myScript
   global myProject

   project close
   ## put out a 'heartbeat' - so we know something's happening.
   puts "\n$myScript: Building ($myProject)..."

   set proj_exts [ list ise xise gise ]
   foreach ext $proj_exts {
      set proj_name "${myProject}.$ext"
      if { [ file exists $proj_name ] } { 
         file delete $proj_name
      }
   }

   puts "$myScript: Rebuilding project $myProject"
   project new $myProject
   set_project_props
   add_source_files
   set_process_props
   project save
   puts "$myScript: project rebuild completed."


}

# 
# Support Routines
# 

# 
# show_help: print information to help users understand the options available when
#            running this script.
# 
proc show_help {} {

   global myScript

   puts ""
   puts "usage: xtclsh $myScript <options>"
   puts "       or you can run xtclsh and then enter 'source $myScript'."
   puts ""
   puts "options:"
   puts "   build_project   - rebuild the project from scratch and run processes."
   puts "   set_project_props - set project properties (device, speed, etc.)"
   puts "   add_source_files  - add source files"
   puts "   set_process_props - set process property values"
   puts "   show_help         - print this message"
   puts ""
}

proc open_project {} {

   global myScript
   global myProject

   if { ! [ file exists ${myProject}.xise ] } { 
      ## project file isn't there, rebuild it.
      puts "Project $myProject not found. Use ${myProject}_rebuild to recreate it."
      return false
   }

   project open $myProject

   return true

}
# 
# set_project_props
# 
# This procedure sets the project properties as they were set in the project
# at the time this script was generated.
# 
proc set_project_props {} {

   global myScript

   if { ! [ open_project ] } {
      return false
   }

   puts "$myScript: Setting project properties..."

   project set family "virtex5"
   project set device "xc5vlx50t"
   project set package "ff1136"
   project set speed "-1"

   project set top_level_module_type "HDL"
   project set synthesis_tool "XST (VHDL/Verilog)"
   project set simulator "ISim (VHDL/Verilog)"
   project set "Preferred Language" "Verilog"
   project set "Enable Message Filtering" "false"
   project set "Display Incremental Messages" "false"

}


# 
# add_source_files
# 
# This procedure add the source files that were known to the project at the
# time this script was generated.
# 
proc add_source_files {} {

   global myScript

   if { ! [ open_project ] } {
      return false
   }

   puts "$myScript: Adding sources to project..."

   xfile add "example_design/gtp_wrapper_tile.v"
   xfile add "example_design/gtp_wrapper.v"
   xfile add "example_design/phy_wrapper.v"
   xfile add "example_design/reg_manager/reg_manager.v"
   xfile add "example_design/rio_reset.v"
   xfile add "example_design/rio_wrapper.v"
   xfile add "example_design/srio_gt_wrapper_v5_1x.v"
   xfile add "example_design/srio_v5_4_clk.v"
   xfile add "example_design/srio_v5_4_top.ucf"
   xfile add "example_design/srio_v5_4_top.v"
   xfile add "example_design/user/fifo_16x190.v"
   xfile add "example_design/user/history_bram.v"
   xfile add "example_design/user/initiator_bram.v"
   xfile add "example_design/user/initiator_user.v"
   xfile add "example_design/user/ireq_generator.v"
   xfile add "example_design/user/iresp_handler.v"
   xfile add "example_design/user/target_user.v"
   xfile add "example_design/user/tickler.v"
   xfile add "example_design/user/tid_bram.v"
   xfile add "example_design/user/user_top.v"
   xfile add "rio_buffer.v"
   xfile add "rio_log_io_v5_4.v"
   xfile add "srio_phy_v5_4.v"

   # Set the Top Module as well...
   project set top "srio_v5_4_top"
   puts "$myScript: project sources reloaded."

} ; # end add_source_files

# 
# set_process_props
# 
# This procedure sets properties as requested during script generation (either
# all of the properties, or only those modified from their defaults).
# 
proc set_process_props {} {

   global myScript

   if { ! [ open_project ] } {
      return false
   }

   puts "$myScript: setting process properties..."

   project set "Macro Search Path" "netlists/" -process "Translate"

   puts "$myScript: project property values set."

} ; # end set_process_props

proc main {} {

   if { [llength $::argv] == 0 } {
      show_help
      return true
   }

   foreach option $::argv {
      switch $option {
         "show_help"           { show_help }
         "build_project"       { build_project }
         "set_project_props"   { set_project_props }
         "add_source_files"    { add_source_files }
         "set_process_props"   { set_process_props }
         default               { puts "unrecognized option: $option"; show_help }
      }
   }
}

if { $tcl_interactive } {
   show_help
} else {
   if {[catch {main} result]} {
      puts "$myScript failed: $result."
   }
}

