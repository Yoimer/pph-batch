@echo off
echo.
echo Hello %username% ,you are currently logged in at %computername% 
echo It is %time% on %date%
ver
echo The IP Address on your system is:
:: spanish windows version
for /f %%a in ('ipconfig/all^|find /I /C "DHCP habilitado . . . . . . . . . . . . . : s"') do set count=%%a
echo %count%
if %count% GEQ 1 (
for /f "tokens=17 delims= " %%a in ('ipconfig/all^|find /I "IPv4"') do echo %%a
)
::for /f "tokens=14 delims= " %a in ('ipconfig/all^|find /I "IPv4"') do echo %)
pause



:: english windows version
::for /f %%a in ('ipconfig/all^|find /I /C "DHCP Enabled. . . . . . . . . . . : Yes"') do set count=%%a
::echo %count%
::pause

::if %count% GEQ 1 (echo "DHCP is enabled") else (echo "DHCP is disabled")
