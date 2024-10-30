@echo off
mkdir gitinstaller
cd gitinstaller
curl -LO https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.2/Git-2.47.0.2-64-bit.exe
start Git-2.47.0.2-64-bit.exe
exit /b
