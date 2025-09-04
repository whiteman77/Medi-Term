@echo off
echo Healthcare Terminology Dictionary Setup
echo ======================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.8 or later from https://python.org
    pause
    exit /b 1
)

echo Python found. Installing required packages...
echo.

REM Upgrade pip to latest version
python -m pip install --upgrade pip

REM Install required packages
python -m pip install flask flask-sqlalchemy werkzeug email-validator

if %errorlevel% neq 0 (
    echo ERROR: Failed to install packages
    echo Please make sure you have internet connection
    pause
    exit /b 1
)

echo.
echo Packages installed successfully!
echo Starting the Healthcare Dictionary application...
echo.

REM Run the application
python run_app.py

pause