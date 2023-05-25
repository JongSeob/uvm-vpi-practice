@echo off

call clean.bat

echo -----------------------------------------
echo   Create "libvpi.dll" with MinGW gcc
echo -----------------------------------------
REM Define common C Compiler options & Linker Directives for VPI
set "CC=-D__MINGW32__ -g -c -m64 -Wall -D__USE_MINGW_ANSI_STDIO=1 -I. -IC:\questasim64_2021.1\include "
set "LD=-shared -lm -m64 -Wl,-Bsymbolic -Wl,-export-all-symbols "

REM Iterates all C files in the current directory
for %%F in (*.c) do (
    REM Compile each C file
    echo -- Compiling %%F...
    gcc %CC% -c %%F -o %%~nF.o
)

echo -- Linking...
gcc %LD% -o libvpi.dll *.o C:\questasim64_2021.1\win64\mtipli.lib

echo -----------------------------------------
echo   Run VPI Sim using "libvpi.dll"
echo -----------------------------------------
vlog -writetoplevels questa.tops -timescale 1ns/1ns design.sv testbench.sv
echo -- Running simulation
vsim tb -batch -do "vsim -voptargs=+acc=npr; run -all; exit" -voptargs="+acc=npr" -pli libvpi.dll