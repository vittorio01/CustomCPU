transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+page_list  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.page_list xil_defaultlib.glbl

do {page_list.udo}

run

endsim

quit -force
