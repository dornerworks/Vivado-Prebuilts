set board [lindex [split $::env(PLATFORM) -] end]
set build_dir $::env(WRKDIR)
set project_name rocket_system_$board 
set project_dir $build_dir/$project_name
set output_bit $build_dir/$project_name/$project_name.bit
set output_psu_init $build_dir/$project_name/psu_init.tcl

switch $board { 
    zcu104 {
        set part xczu7ev-ffvc1156-2-e
        set board_part xilinx.com:zcu104:part0:1.1
    }
    zcu102 {
        set part xczu9eg-ffvb1156-2-e
        set board_part xilinx.com:zcu102:part0:3.1
    }
    default {
        puts "Platform not supported!\n"
        exit -1
    }
}