@echo off
REM http://www.pldworld.com/_hdl/2/_ref/se_html/manual_html/c_vlog45.html
REM https://www.microsemi.com/document-portal/doc_view/131619-modelsim-user, 662 page
echo "============================================"
echo "run.bash started!!!"
echo "============================================"
del *.o *.dll

echo "============================================"
echo "run gcc to create \"libvpi.dll\""
echo "============================================"
set "CC=-g -c -m64 -Wall -D__USE_MINGW_ANSI_STDIO=1 -I. -IC:\questasim64_2021.1\include "
REM set "LD=-shared -lm -m64 $tclflags -Wl,-Bsymbolic -Wl,-export-all-symbols -o "
set "LD=-shared -lm -m64 -Wl,-Bsymbolic -Wl,-export-all-symbols -o "

gcc %CC% -c vpi_user.c -o vpi_user.o
gcc %CC% -c hello_vpi.c -o hello_vpi.o
gcc %LD% libvpi.dll

vlog -writetoplevels questa.tops -timescale 1ns/1ns -L /usr/share/questa/questasim/uvm-1.1d design.sv testbench.sv
echo "-- Compiling module tb"
vsim tb -batch -do "vsim -voptargs=+acc=npr; run -all; exit" -voptargs="+acc=npr" -pli libvpi.dll