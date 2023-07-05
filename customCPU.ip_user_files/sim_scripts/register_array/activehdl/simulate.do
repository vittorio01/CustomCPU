transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+register_array  -L xil_defaultlib -L secureip -O2 xil_defaultlib.register_array

do {register_array.udo}

run

endsim

quit -force
