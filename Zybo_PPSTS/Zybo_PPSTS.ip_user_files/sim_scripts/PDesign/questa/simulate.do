onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib PDesign_opt

do {wave.do}

view wave
view structure
view signals

do {PDesign.udo}

run -all

quit -force
