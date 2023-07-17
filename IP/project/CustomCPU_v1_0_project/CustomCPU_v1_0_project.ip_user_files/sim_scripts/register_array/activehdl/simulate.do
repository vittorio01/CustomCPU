transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+register_array  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.register_array xil_defaultlib.glbl

do {register_array.udo}

run

endsim

quit -force
