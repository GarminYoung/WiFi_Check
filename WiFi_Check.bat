@echo off

:main
echo ���ӹ���WiFi:
netsh wlan show profile | findstr "����"
echo.
set /p name=��Ҫ��ѯ��WiFi:
netsh wlan show profile name="%name%" key=clear | findstr "�ؼ�"
echo.
echo ����Ҫ�ٴβ�ѯ��
set /p input=y or n:
if %input%==y goto main
if %input%==n goto exit

:exit
exit

pause>nul