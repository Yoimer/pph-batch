@echo off
echo.
echo Hello %username% ,you are currently logged in at %computername% 
echo It is %time% on %date%
ver
echo The IP Address on your system is: 
:: spanish windows version
::for /f %%a in ('ipconfig/all^|find /I /C "DHCP habilitado . . . . . . . . . . . . . : s"') do set count=%%a
::set count=%%ipconfig/all|find /I "Servidor DHCP"
::echo %count%

for /f "tokens=17 delims= " %%a in ('ipconfig/all^|find /I "IPv4"') do echo %%a

::for /f %%a in ('ipconfig/all^|find /I "Servidor DHCP"') do set count=%%a
::echo %count%
:: english windows version

::for /f %%a in ('ipconfig/all^|find /I /C "DHCP Enabled . . . . . . . . . . . . . : YES"') do set count=%%a
::echo %count%

:: check whether DHCP is enabled or not
::if %count% GEQ 1 (echo "DHCP is enabled") else (echo "DHCP is disabled")
pause


::ipconfig/all|find /I "IPv4"

::FOR /f "tokens=2 delims= " %%a IN (MyFile.txt) DO ECHO %%a