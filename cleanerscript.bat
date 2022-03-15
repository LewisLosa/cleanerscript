@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title CLEANERSCRIPT - starting up...
color c
echo The color was made red.
echo After 3 seconds, the process will start...
@ECHO OFF
@timeout /t 5 /nobreak>nul
echo 1% Completed...
title CLEANERSCRIPT - cleaning up...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /s /q %windir%\prefetch\*.*
cls
echo 28% Completed...
@timeout /t 1 /nobreak>nul
@ECHO OFF
rd /s /q %windir%\temp & md %windir%\temp
cls
echo 43% Completed...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /q %userprofile%\cookies\*.*
cls
echo 55% Completed...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /q %userprofile%\recent\*.*
cls
echo 74% Completed...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /s /q “%userprofile%\Local Settings\Temp\*.*”
cls
echo 100% Completed...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /s /q “%userprofile%\recent\*.*”
cls
echo wait a second...
@timeout /t 1 /nobreak>nul
@ECHO OFF
rd %temp% /s /q
md %temp%
cls
@ECHO OFF
title CLEANERSCRIPT - cleaning is complete.
echo Cleaning is complete.
echo Cmd will close after 5 seconds.
echo made by lewislosa
@timeout /t 5 /nobreak>nul
taskkill /f /im "cmd.exe"
