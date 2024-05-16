# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\vi\z702_advanced\ddr\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\vi\z702_advanced\ddr\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ddr}\
-hw {C:\va\z702\axi4_ddr\project_1\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/vi/z702_advanced}

platform write
platform generate -domains 
platform active {ddr}
platform generate
bsp reload
platform generate -domains 
platform config -updatehw {C:/va/z702/axi4_ddr/project_1/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/va/z702/axi4_ddr/project_1/design_1_wrapper.xsa}
platform generate -domains 
