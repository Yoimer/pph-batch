@echo off
echo.
echo Hello %username% ,you are currently logged in at %computername% 
echo It is %time% on %date%
ver
echo The IP Address on your system is:
ipconfig/all|find /I "DHCP"
pause

:: another example
REM @echo off
REM set ip_address_string="IP Address"
REM Uncomment the following line when using Windows 7 (with removing "rem")!
REM set ip_address_string="IPv4"
REM echo Network Connection Test
REM echo The IP Address on this computer is:
REM for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo Your IP Address is: %%f
REM pause