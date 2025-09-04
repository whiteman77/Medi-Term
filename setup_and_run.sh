#!/bin/bash
echo "Healthcare Terminology Dictionary Setup"
echo "======================================"
echo

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    if ! command -v python &> /dev/null; then
        echo "ERROR: Python is not installed"
        echo "Please install Python 3.8 or later"
        exit 1
    else
        PYTHON_CMD="python"
    fi
else
    PYTHON_CMD="python3"
fi

echo "Python found. Installing required packages..."
echo

# Install required packages
$PYTHON_CMD -m pip install flask flask-sqlalchemy werkzeug email-validator

if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install packages"
    echo "Please make sure you have internet connection"
    exit 1
fi

echo
echo "Packages installed successfully!"
echo "Starting the Healthcare Dictionary application..."
echo