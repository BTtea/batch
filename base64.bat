@echo off
if %1. equ . (
    echo.Usage:%~0 -d ^|^| -e
    exit /b 0
)
if "%1" equ "-d" (
    echo.%~2>>code
    certutil -decode code tmp>nul
    type tmp
    del /q tmp code
    exit /b 0
)
if "%1" equ "-e" (
    echo.%~2>>code
    certutil -encode code tmp>nul
    type tmp
    del /q tmp code
    exit /b 0
)
echo.The error argv!
exit /b 1
