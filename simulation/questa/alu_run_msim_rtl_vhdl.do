transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/peter/Code/ALU/alu.vhd}
vcom -93 -work work {/home/peter/Code/ALU/au.vhd}
vcom -93 -work work {/home/peter/Code/ALU/lu.vhd}

