::MADE BY XOELF, YOU MUST CREDIT IF YOU USE.

@echo off
MODE 19,2
color F0

::FORCES THE BATCH TO LAUNCH AS ADMINISTRATOR
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

cls
title Batch Anti-Cheat

::SET YOUR GAMES PROCESS NAME HERE
set game=YOUR_GAME_HERE.exe

goto LookforGame

:LookforGame
tasklist /nh /fi "imagename eq %game%" | find /i "%game%" 1>nul 2>nul && (
:ProcessScan
title Batch Anti-Cheat // SCANNING PROCESSES
MODE 19,1
color 00
tasklist | findstr -ir \cheat
IF %ErrorLevel% EQU 0 Taskkill /F /IM "%game%"
cls
tasklist | findstr -ir \hack
IF %ErrorLevel% EQU 0 Taskkill /F /IM "%game%"
cls
tasklist | findstr -ir \inject
IF %ErrorLevel% EQU 0 Taskkill /F /IM "%game%"
cls
tasklist | findstr -ir \trainer
IF %ErrorLevel% EQU 0 Taskkill /F /IM "%game%"
cls
tasklist | findstr -ir \engine
IF %ErrorLevel% EQU 0 Taskkill /F /IM "%game%"
cls

::Basically, type a keyword below, if a task exists with that keyword, it will close the game.
tasklist | findstr -ir \ADD_MORE_NAMES_HERE
IF %ErrorLevel% EQU 0 Taskkill /F /IM "%game%"
cls

goto ProcessScan
)


cls
MODE 19,2
echo GAME NOT DETECTED!
timeout 3 >nul
cls
goto LookforGame

::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣶⡮⣿⣶⣖⣤⣭⣝⣹⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⢰⠟⣿⣿⣿⣷⣿⣿⠳⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡇⠘⠠⠰⢹⣿⣿⢑⡑⢈⡳⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠝⠻⣿⡶⠂⢲⠂⠘⣟⣿⡕⠘⠀⢀⠂⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⠀⠰⣿⣿⣿⣿⡿⣿⢿⣟⠗⠆⠑⠨⣾⠝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣷⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣍⣿⣿⢿⠿⣿⣿⣿⣿⣿⣿⢿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⡉⠁⠁⠀⣎⣦⡘⠂⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⣷⣦⠄⠀⣶⣿⣿⣃⠤⠀⠀⢈⠥⠉⢻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣋⠀⢇⢠⣿⣿⣿⣷⣖⣿⣿⣿⠆⠀⠈⠳⠯⠁⠀⠀⠀⢳⣿⠁⠳⣍⠛⢻⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⢿
::⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢷⠚⢻⣿⣿⡟⠉⠉⢹⣿⣿⠿⠀⠀⠀⠀⢀⠀⠀⠀⠀⢸⢨⣶⣼⡜⠟⠤⣛⢉⠛⠿⢿⣿⣿⠃⠀⢀⣿ 
::⠿⣿⣿⣿⣿⣿⣿⣿⢿⢯⣴⡅⣀⣾⣿⣿⣄⣀⣴⣿⣯⣥⣦⣄⡀⠤⠄⠀⠙⠢⢄⠀⣜⣾⣿⣿⣿⣦⡀⡞⡭⠒⠇⠀⠙⠻⠁⠀⠈⣿
::⠀⠈⢻⣿⣿⡟⠁⠀⣠⠞⠑⠀⢼⣿⣿⣿⣿⣿⣟⠯⢾⣿⣛⣃⠚⡒⣒⣂⣀⠤⠸⢁⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⣿ 
::⠿⡂⢹⠿⠏⠀⠀⠎⠁⠀⠀⢰⣟⢿⣿⣿⣿⣿⣿⢟⣯⢛⠋⠉⠉⠀⠀⢠⠋⠀⡄⣾⣿⣿⣿⣿⣿⣽⣿⠇⠀⢀⠀⡀⠂⠀⠀⠀⠀⢸ 
::⡬⠰⣨⠔⡡⡂⠃⠁⠀⠐⠊⠁⠀⡀⣿⣿⣿⠟⣿⣯⣾⢑⠀⠀⠀⠀⠐⠁⠀⠀⣬⠌⠙⠛⢿⣿⣾⢿⣯⡀⠀⢀⠁⡈⠀⠀⠀⠀⠀⠘ 
::⢐⠤⠃⠬⡂⢁⠄⠀⠀⠀⠀⡶⢏⠝⠋⠉⠁⠀⣸⣿⣿⣷⣿⣷⡶⠶⠂⠀⠀⣶⣧⢈⠀⠀⠀⠀⠀⠐⠹⠿⣶⡆⠂⠀⠀⠀⠀⠀⠀⠀
::⢀⠀⠀⠈⠀⠐⠂⠁⠀⡀⠀⠀⠀⠐⠀⠀⠀⠀⢺⣿⣿⣾⣽⣥⣀⣀⡀⣠⣾⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠹⠷⣤⡀⠀⡀⠀⠀⠀
::⡰⠀⠀⠀⠀⠑⠂⠈⠁⠀⠁⠀⠁⠀⠀⠀⠀⠀⠂⠛⠿⣿⣿⣿⣿⣷⣿⣿⡿⠟⠋⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡂⠙⣦⡀⠊
::⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠃⠉⡀⠀
::⣵⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡤⣥⣅⣈
::⣿⡦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣟⠶⡈
::⠩⢚⡛⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢷⢊⠀
::⢎⣔⣀⢀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣵⣒
::⢉⠫⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢄⠀⠀⠀⡀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢠⡰⠂⣟⣭⠀
::⡻⢕⠦⠄⢀⠠⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣅⡦⣷⡃⣿⣶⡆
:: Made by xoElf