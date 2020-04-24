
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name UartWithFifo -dir "E:/GitHub/UartWithFIFO/FPGAtester/planAhead_run_2" -part xc6slx9tqg144-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "E:/GitHub/UartWithFIFO/FPGAtester/UARTecho.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/GitHub/UartWithFIFO/FPGAtester} {ipcore_dir} }
add_files [list {ipcore_dir/Blockram.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "BPC3011-Papilio_Pro-general.ucf" [current_fileset -constrset]
add_files [list {BPC3011-Papilio_Pro-general.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "E:/GitHub/UartWithFIFO/FPGAtester/UARTecho.ncd"
if {[catch {read_twx -name results_1 -file "E:/GitHub/UartWithFIFO/FPGAtester/UARTecho.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"E:/GitHub/UartWithFIFO/FPGAtester/UARTecho.twx\": $eInfo"
}
