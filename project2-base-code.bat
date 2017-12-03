REM[ this is welcome note]
@echo off
echo.
echo Hello %username% ,you are currently logged in at %computername% 
echo It is %time% on %date%
ver
echo The IP Address on your system is:
ipconfig|find /I "IPV4"
pause