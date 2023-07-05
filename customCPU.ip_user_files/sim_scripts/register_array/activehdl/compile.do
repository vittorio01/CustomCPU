transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../../customCPU.gen/sources_1/ip/register_array/register_array_sim_netlist.vhdl" \


