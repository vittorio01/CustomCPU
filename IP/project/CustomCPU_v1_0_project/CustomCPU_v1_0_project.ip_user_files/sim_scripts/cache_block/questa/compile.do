vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../../CustomCPU_v1_0_project.gen/sources_1/ip/cache_block/cache_block_sim_netlist.vhdl" \


