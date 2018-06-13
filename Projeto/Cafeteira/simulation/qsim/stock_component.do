onerror {exit -code 1}
vlib work
vcom -work work stock_component.vho
vcom -work work receipt_controller.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.receipt_controller_vhd_vec_tst
vcd file -direction stock_component.msim.vcd
vcd add -internal receipt_controller_vhd_vec_tst/*
vcd add -internal receipt_controller_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
