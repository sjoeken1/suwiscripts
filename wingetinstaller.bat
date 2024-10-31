@echo off
curl -LO https://github.com/microsoft/winget-cli/releases/download/v1.8.1911/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
ren Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle wingetinstall.msixbundle
start wingetinstall.msixbundle
pause