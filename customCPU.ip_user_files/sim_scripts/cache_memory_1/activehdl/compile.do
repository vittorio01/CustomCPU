transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../../customCPU.gen/sources_1/ip/cache_memory_1/cache_memory_sim_netlist.vhdl" \

