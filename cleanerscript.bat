@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title CLEANERSCRIPT - starting up...
color c
echo The color was made red.
echo After 3 seconds, the process will start...
@timeout /t 3 /nobreak>nul
@ECHO OFF
title CLEANERSCRIPT - cleaning up...
@ECHO OFF
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q “%userprofile%\Local Settings\Temp\*.*”
del /f /s /q “%userprofile%\recent\*.*”
rd %temp% /s /q
md %temp%
cls
title CLEANERSCRIPT - cleaning is complete.
echo Cleaning is complete.
echo Cmd will close after 5 seconds.
echo made by lewislosa
@timeout /t 5 /nobreak>nul
taskkill /f /im "cmd.exe"
