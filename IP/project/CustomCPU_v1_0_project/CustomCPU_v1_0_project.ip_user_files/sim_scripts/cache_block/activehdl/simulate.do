transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cache_block  -L xil_defaultlib -L secureip -O2 xil_defaultlib.cache_block

do {cache_block.udo}

run

endsim

quit -force
