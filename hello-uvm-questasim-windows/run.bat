@echo off

vlog -writetoplevels questa.tops -timescale 1ns/1ns -L /usr/share/questa/questasim/uvm-1.1d design.sv testbench.sv
echo "-- Compiling module tb"
vsim tb -batch -do "vsim -voptargs=+acc=npr; run -all; exit" -voptargs="+acc=npr"