@echo off

:main
echo 连接过的WiFi:
netsh wlan show profile | findstr "所有"
echo.
set /p name=想要查询的WiFi:
netsh wlan show profile name="%name%" key=clear | findstr "关键"
echo.
echo 你想要再次查询吗？
set /p input=y or n:
if %input%==y goto main
if %input%==n goto exit

:exit
exit

pause>nul