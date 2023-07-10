vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../../customCPU.gen/sources_1/ip/cache_memory_1/cache_memory_sim_netlist.vhdl" \


