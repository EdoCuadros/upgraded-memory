transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Contador/Contador.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Contador/Contador_F.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Contador/XS3_alg.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Contador/div_frec.vhd}

