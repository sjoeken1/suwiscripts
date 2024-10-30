@echo off

:begin
echo Do you have git installed?
echo 1. Yes
echo 2. No
git --version
set /p gitkeuze="Typ 'yes' of 'no': "

if /i "%gitkeuze%"=="yes" (
    cls
	goto aftergit
) else if /i "%gitkeuze%"=="y" (
    goto aftergit
) else if /i "%gitkeuze%"=="no" (
    cls
	goto installprompt
	
) else if /i "%gitkeuze%"=="n" (
	cls
	goto installprompt
) else (
    echo Ongeldige invoer. Typ "yes" of "no".
    pause
    goto begin
)

:installprompt
set /p gitinstall="Do you want to install Git?(yes/no/?): "
	if /i "%gitinstall%"=="yes" (
		echo Git wordt geïnstalleerd...
		mkdir gitinstaller
		cd gitinstaller
		curl -LO https://raw.githubusercontent.com/sjoeken1/suwiscripts/refs/heads/main/installgit.bat
		rename installgit.bat.txt installgit.bat 
		call installgit.bat
		echo Press on a key if you have installed Git...
		pause > nul
		cd..
		cd..
		rmdir /s /q gitinstaller
		goto aftergit
) 	else if /i "%gitinstall%"=="no" (
		echo Git installatie geannuleerd.
		cls
		echo You cannot continue without Git installed. 
		timeout /t 3 > nul
		cls
		echo The program will terminate.
		timeout /t 2 > nul
		exit /b
) 	else (
		echo wrong input. Typ "yes" of "no". press on a key to continue.
		pause > nul
		cls
		goto installprompt
)

:aftergit


echo do you have python 3.10.6 installed?

set /p pythoninstalled="Yes or No: "
	if /i "%pythoninstalled%"=="yes" (
	cls
	goto afterpython
)	else if /i "%pythoninstalled%"=="y" (
	goto afterpython
)	else if /i "%pythoninstalled%"=="no" (
	cls
	goto pythoninstall
)	else if /i "%pythoninstalled%"=="n" (
	cls
	goto pythoninstall
) 

:pythoninstall
mkdir python
cd python
curl -LO https://raw.githubusercontent.com/sjoeken1/suwiscripts/refs/heads/main/installers/pythoninstaller.bat
rename pythoninstaller.bat.txt pythoninstaller.bat
call pythoninstaller.bat
goto removepython

:removepython
if exist python (
    rmdir /s /q python
)
goto afterpython

:afterpython
cls
echo python installed...
timeout /t 3 > nul
exit /b