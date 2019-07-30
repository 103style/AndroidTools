@echo off
for /f  "tokens=2 delims= " %%i in ('getpid.bat') do adb logcat *:E > logcat.txt
pause

