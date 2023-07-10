transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cache_memory  -L xil_defaultlib -L secureip -O2 xil_defaultlib.cache_memory

do {cache_memory.udo}

run

endsim

quit -force
