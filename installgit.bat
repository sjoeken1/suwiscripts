@echo off
curl -LO https://raw.githubusercontent.com/sjoeken1/suwiscripts/refs/heads/main/gitinstaller.bat
rename gitinstaller.bat.txt gitinstaller.git
cls
gitinstaller.bat
echo git installer will start
timeout /t 3
exit