@ECHO OFF

copy setup-darkhorizons.exe _weidu.exe
_weidu.exe --remove-biff data\dhare.bif
del /f /q data\dhare.bif
del _weidu.exe