@echo off

REM /S: Sub-directories(=recursive), /Q: No question before remove
del /S /Q *.o *.dll work *.tops
rmdir /S /Q work