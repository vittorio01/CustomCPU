vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../../customCPU.gen/sources_1/ip/register_array/register_array_sim_netlist.vhdl" \


