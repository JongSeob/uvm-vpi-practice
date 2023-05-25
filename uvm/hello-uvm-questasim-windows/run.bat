@echo off

call clean.bat

vlog -writetoplevels questa.tops -timescale 1ns/1ns design.sv testbench.sv
echo "-- Compiling module tb"
vsim tb -batch -do "vsim -voptargs=+acc=npr; run -all; exit" -voptargs="+acc=npr"