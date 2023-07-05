transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/vittorio/GitHub/CustomCPU/customCPU.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../../customCPU.gen/sources_1/ip/register_array/register_array_sim_netlist.vhdl" \


