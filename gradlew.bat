@rem Gradle startup script for Windows
@if "%DEBUG%" == "" @echo off
@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.

where gradle >nul 2>nul
if %errorlevel% equ 0 (
    gradle %*
    exit /b %errorlevel%
)

echo ERROR: Gradle was not found in PATH.
exit /b 1
