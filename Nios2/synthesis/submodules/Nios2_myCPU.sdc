# Legal Notice: (C)2021 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	Nios2_myCPU 	Nios2_myCPU:*
set 	Nios2_myCPU_oci 	Nios2_myCPU_nios2_oci:the_Nios2_myCPU_nios2_oci
set 	Nios2_myCPU_oci_break 	Nios2_myCPU_nios2_oci_break:the_Nios2_myCPU_nios2_oci_break
set 	Nios2_myCPU_ocimem 	Nios2_myCPU_nios2_ocimem:the_Nios2_myCPU_nios2_ocimem
set 	Nios2_myCPU_oci_debug 	Nios2_myCPU_nios2_oci_debug:the_Nios2_myCPU_nios2_oci_debug
set 	Nios2_myCPU_wrapper 	Nios2_myCPU_jtag_debug_module_wrapper:the_Nios2_myCPU_jtag_debug_module_wrapper
set 	Nios2_myCPU_jtag_tck 	Nios2_myCPU_jtag_debug_module_tck:the_Nios2_myCPU_jtag_debug_module_tck
set 	Nios2_myCPU_jtag_sysclk 	Nios2_myCPU_jtag_debug_module_sysclk:the_Nios2_myCPU_jtag_debug_module_sysclk
set 	Nios2_myCPU_oci_path 	 [format "%s|%s" $Nios2_myCPU $Nios2_myCPU_oci]
set 	Nios2_myCPU_oci_break_path 	 [format "%s|%s" $Nios2_myCPU_oci_path $Nios2_myCPU_oci_break]
set 	Nios2_myCPU_ocimem_path 	 [format "%s|%s" $Nios2_myCPU_oci_path $Nios2_myCPU_ocimem]
set 	Nios2_myCPU_oci_debug_path 	 [format "%s|%s" $Nios2_myCPU_oci_path $Nios2_myCPU_oci_debug]
set 	Nios2_myCPU_jtag_tck_path 	 [format "%s|%s|%s" $Nios2_myCPU_oci_path $Nios2_myCPU_wrapper $Nios2_myCPU_jtag_tck]
set 	Nios2_myCPU_jtag_sysclk_path 	 [format "%s|%s|%s" $Nios2_myCPU_oci_path $Nios2_myCPU_wrapper $Nios2_myCPU_jtag_sysclk]
set 	Nios2_myCPU_jtag_sr 	 [format "%s|*sr" $Nios2_myCPU_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$Nios2_myCPU_oci_break_path|break_readreg*] -to [get_keepers *$Nios2_myCPU_jtag_sr*]
set_false_path -from [get_keepers *$Nios2_myCPU_oci_debug_path|*resetlatch]     -to [get_keepers *$Nios2_myCPU_jtag_sr[33]]
set_false_path -from [get_keepers *$Nios2_myCPU_oci_debug_path|monitor_ready]  -to [get_keepers *$Nios2_myCPU_jtag_sr[0]]
set_false_path -from [get_keepers *$Nios2_myCPU_oci_debug_path|monitor_error]  -to [get_keepers *$Nios2_myCPU_jtag_sr[34]]
set_false_path -from [get_keepers *$Nios2_myCPU_ocimem_path|*MonDReg*] -to [get_keepers *$Nios2_myCPU_jtag_sr*]
set_false_path -from *$Nios2_myCPU_jtag_sr*    -to *$Nios2_myCPU_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$Nios2_myCPU_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$Nios2_myCPU_oci_debug_path|monitor_go
