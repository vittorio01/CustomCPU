transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/vittorio/GitHub/CustomCPU/IP/project/CustomCPU_v1_0_project/CustomCPU_v1_0_project.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l xil_defaultlib \
"/opt/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"

