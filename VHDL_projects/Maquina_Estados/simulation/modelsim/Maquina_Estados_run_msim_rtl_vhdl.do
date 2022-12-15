transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/div_frec.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/JK.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/Memoria.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/Multiplexor.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/Selector.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/Deco.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/Principal.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/Maquina_Estados.vhd}
vcom -93 -work work {C:/intelFPGA_lite/20.1/projects/Maquina_Estados/anti_rebote.vhd}

