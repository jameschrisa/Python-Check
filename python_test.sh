#!/bin/bash

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'  # No color

# Check if Python 3 is installed
if command -v python3 &> /dev/null; then
    echo -e "${GREEN}Python 3 is installed.${NC}"
else
    echo -e "${RED}Error: Python 3 is not installed. Please install Python 3.${NC}" >&2
    exit 1
fi

# Get the path to Python 3
PYTHON_PATH=$(which python3)
if [ -z "$PYTHON_PATH" ]; then
    echo -e "${RED}Error: Unable to find Python 3 path.${NC}" >&2
    exit 1
fi
echo -e "${GREEN}Python 3 path: $PYTHON_PATH${NC}"

# Get the Python 3 version
PYTHON_VERSION=$(python3 --version 2>&1)
if [ -z "$PYTHON_VERSION" ]; then
    echo -e "${RED}Error: Unable to get Python 3 version.${NC}" >&2
    exit 1
fi
echo -e "${GREEN}Python 3 version: $PYTHON_VERSION${NC}"

# Run a test with a simple print function
echo -e "${GREEN}Running Python 3 test...${NC}"
if python3 -c 'print("Hello, World!")'; then
    echo -e "${GREEN}Python 3 test successful.${NC}"
else
    echo -e "${RED}Error: Python 3 test failed.${NC}" >&2
    exit 1
fi
