reg import nettime.reg # updates MaxPosPhaseOffset and MaxNegPhaseOffset

net start w32time
w32tm.exe /config /manualpeerlist:"ad.eri.sci.eg",0x8 /syncfromflags:manual /reliable:no /update  
w32tm.exe /query /configuration
w32tm.exe /resync /rediscover
w32tm.exe /resync /force
tzutil /s "Egypt Standard Time"
@echo off
SET SCRIPT=addtodomain.ps1
SET PATH="%~dp0%SCRIPT%"
@echo on
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -File %path%
pause
