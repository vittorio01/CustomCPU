transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../../CustomCPU_v1_0_project.gen/sources_1/ip/cache_block/cache_block_sim_netlist.vhdl" \


