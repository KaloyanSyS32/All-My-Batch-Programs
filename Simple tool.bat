:menu
@echo off
cls
chcp 65001>nul
echo.
echo.
echo             [38;2;255;0;0m███████╗██╗███╗   ███╗██████╗ ██╗     ███████╗    ████████╗ ██████╗  ██████╗ ██╗[0m     
echo             [38;2;255;51;0m██╔════╝██║████╗ ████║██╔══██╗██║     ██╔════╝    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     [0m
echo             [38;2;255;102;0m███████╗██║██╔████╔██║██████╔╝██║     █████╗         ██║   ██║   ██║██║   ██║██║    [0m
echo             [38;2;255;153;0m╚════██║██║██║╚██╔╝██║██╔═══╝ ██║     ██╔══╝         ██║   ██║   ██║██║   ██║██║     [0m
echo             [38;2;255;204;0m███████║██║██║ ╚═╝ ██║██║     ███████╗███████╗       ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo             [38;2;255;255;0m╚══════╝╚═╝╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m 
echo.
echo.
echo  [38;2;255;0;0m1) Start Task Manager
echo  [38;2;255;51;0m2) Start Registry Editor
echo  [38;2;255;102;0m3) Start File Explorer
echo  [38;2;255;153;0m4) Start Command Prompt
echo  [38;2;255;204;0m5) Restart Explorer
echo  [38;2;255;255;0m6) Shutdown PC
echo  [38;2;255;0;0m7) Close Program
echo  [38;2;255;51;0m8) Get Information About Creator
echo  [38;2;255;102;0m9) Restart PC
echo  [38;2;255;153;0m10) Restart Program
echo  [38;2;255;204;0m0) Exit Without Action[0m
set /p choice="[38;2;255;255;0mChoose an option (0-10):[0m "

:: Validate user input
if not "%choice%"=="1" if not "%choice%"=="2" if not "%choice%"=="3" if not "%choice%"=="4" if not "%choice%"=="5" if not "%choice%"=="6" if not "%choice%"=="7" if not "%choice%"=="8" if not "%choice%"=="9" if not "%choice%"=="10" if not "%choice%"=="0" (
    echo Invalid option.
    timeout /t 2 >nul
    goto menu
)

:executeOption
if "%choice%"=="1" (
    start taskmgr.exe
) else if "%choice%"=="2" (
    start regedit.exe
) else if "%choice%"=="3" (
    start explorer.exe
) else if "%choice%"=="4" (
    start cmd.exe
) else if "%choice%"=="5" (
    echo Restarting Windows Explorer...
    taskkill /f /im explorer.exe
    start explorer.exe
) else if "%choice%"=="6" (
    echo Your computer will shutdown in 10 seconds...
    shutdown -s -t 10
) else if "%choice%"=="7" (
    echo See you later
    timeout /t 3 >nul
    exit
) else if "%choice%"=="8" (
    start Creatorinf.bat
) else if "%choice%"=="9" (
    echo Your computer will restart in 10 seconds...
    shutdown -r -t 10
) else if "%choice%"=="10" (
    echo Restarting program...
    timeout /t 2 >nul
    goto menu
) else if "%choice%"=="0" (
    echo Exiting program without any action...
    timeout /t 2 >nul
    exit
)

pause
goto menu
