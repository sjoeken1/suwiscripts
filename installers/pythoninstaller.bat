@echo off
curl -LO https://www.python.org/ftp/python/3.10.10/python-3.10.10-amd64.exe
cls
echo python installer downloaded...
rename python-3.10.10-amd64.exe python_3_10_10.exe > nul
timeout /t 2 > nul
cls
echo running python installer...
powershell -Command "Start-Sleep -Milliseconds 200"
color 4
powershell -Command "Start-Sleep -Milliseconds 200"
color 6
powershell -Command "Start-Sleep -Milliseconds 200"
color 2
powershell -Command "Start-Sleep -Milliseconds 200"
color 1
powershell -Command "Start-Sleep -Milliseconds 200"
start python_3_10_10.exe
powershell -Command "Start-Sleep -miliseconds 400"
color 7
cls
echo Press a key if you have installed python...
pause > nul
exit /b