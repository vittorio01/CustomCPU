transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cache_block  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.cache_block xil_defaultlib.glbl

do {cache_block.udo}

run

endsim

quit -force
