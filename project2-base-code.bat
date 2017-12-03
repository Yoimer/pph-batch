@echo off
echo.
echo Hello %username% ,you are currently logged in at %computername% 
echo It is %time% on %date%
ver
echo The IP Address on your system is:
:: spanish windows version
::for /f %%a in ('ipconfig/all^|find /I /C "DHCP habilitado . . . . . . . . . . . . . : s"') do set count=%%a
::echo %count%

:: english windows version
::for /f %%a in ('ipconfig/all^|find /I /C "DHCP Enabled. . . . . . . . . . . : Yes"') do set count=%%a
::echo %count%
pause