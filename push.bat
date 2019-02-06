@echo off
setlocal disableDelayedExpansion

set dirip=ipaddress.txt #directory ip address list
set port=22 #port ssh
set user= #your username
set pass= #your password
set progs=plink.exe #directory location plink.exe
set comm=-C -m script-upgrade-mikrotik.txt #directory location script to push
set report=Report.log #directory log

FOR /F %%A in (%dirip%) DO echo y|%progs% -ssh -2 -4 %%A -P %port% -l %user% -pw %pass% %comm% >> %report% 2>&1

pause
