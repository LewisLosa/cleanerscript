@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
color c
echo Renk Kirmizi Yapildi.
echo 3 Saniye Sonra Islem Baslayacaktir...
@ECHO OFF
@timeout /t 5 /nobreak>nul
echo 1% Tamamlandi...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /s /q %windir%\prefetch\*.*
cls
echo 28% Tamamlandi...
@timeout /t 1 /nobreak>nul
@ECHO OFF
rd /s /q %windir%\temp & md %windir%\temp
cls
echo 43% Tamamlandi...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /q %userprofile%\cookies\*.*
cls
echo 55% Tamamlandi...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /q %userprofile%\recent\*.*
cls
echo 74% Tamamlandi...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /s /q “%userprofile%\Local Settings\Temp\*.*”
cls
echo 100% Tamamlandi...
@timeout /t 1 /nobreak>nul
@ECHO OFF
del /f /s /q “%userprofile%\recent\*.*”
cls
echo 1 Saniye Bekleyin...
@timeout /t 1 /nobreak>nul
@ECHO OFF
rd %temp% /s /q
md %temp%
cls
@ECHO OFF
echo Temizlik tamamlandi.
echo Burayi Kapatabilirsiniz
echo Cmd 3 Saniye Sonra Kapatilacaktir.
echo Yapimci = lewislosa
@timeout /t 3 /nobreak>nul
taskkill /f /im "cmd.exe"
