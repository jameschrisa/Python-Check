#!/bin/bash

# Set log file
LOG_FILE="python_test_log.txt"

# Check if Python is installed
if command -v python &> /dev/null; then
    echo "Python is installed." | tee -a $LOG_FILE
else
    echo "Error: Python is not installed. Please install Python." | tee -a $LOG_FILE
    exit 1
fi

# Get the path to Python
PYTHON_PATH=$(which python)
if [ -z "$PYTHON_PATH" ]; then
    echo "Error: Unable to find Python path." | tee -a $LOG_FILE
    exit 1
fi
echo "Python is located at: $PYTHON_PATH" | tee -a $LOG_FILE

# Get the Python version
PYTHON_VERSION=$(python --version 2>&1 | cut -d ' ' -f 2-)
if [ -z "$PYTHON_VERSION" ]; then
    echo "Error: Unable to get Python version." | tee -a $LOG_FILE
    exit 1
fi
echo "Python version: $PYTHON_VERSION" | tee -a $LOG_FILE

# Run a test with a simple print function
echo "Running Python test..." | tee -a $LOG_FILE
if python -c 'import sys; print(f"Python version: {sys.version}"); print(f"Location: {sys.executable}"); print("Python has been installed and is working correctly.")'; then
    echo "Python test successful." | tee -a $LOG_FILE
else
    echo "Error: Python test failed." | tee -a $LOG_FILE
    exit 1
fi

# Command line test
echo "Command line test: Print 'Hello, World!'" | tee -a $LOG_FILE
if python -c 'print("Hello, World!")'; then
    echo "Command line test successful." | tee -a $LOG_FILE
else
    echo "Error: Command line test failed." | tee -a $LOG_FILE
    exit 1
fi

echo "All tests completed successfully." | tee -a $LOG_FILE
