@echo off
SET SCRIPT=SW_DVD9_Win_Pro_10_20H2.4_64BIT_English_Pro_Ent_EDU_N_MLF_X22-52712.ISO
SET PATH="%~dp0%SCRIPT%"
@echo on
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe Mount-DiskImage -ImagePath %path%
F:
setup.exe /auto upgrade  /dynamicupdate disable

pause