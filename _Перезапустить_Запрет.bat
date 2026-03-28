@echo off
title Restarting Zapret

:: Checking for Admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo =======================================================
    echo ERROR: NO ADMINISTRATOR RIGHTS
    echo =======================================================
    echo Please RIGHT CLICK this file and select
    echo "Run as Administrator".
    echo =======================================================
    pause
    exit /b
)

echo Closing old winws.exe process...
taskkill /IM winws.exe /F 2>nul
timeout /t 1 >nul

echo.
echo Starting updated general (ALT2).bat...
start "" "%~dp0general (ALT2).bat"

echo.
echo SUCCESS! Zapret has been restarted. You can check Telegram now.
timeout /t 5 >nul
