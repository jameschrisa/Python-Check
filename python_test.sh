#!/bin/bash

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'  # No color

# Clear the terminal
clear

# Print a header
echo -e "${GREEN}=====================================${NC}"
echo -e "${GREEN}Python 3 Installation Check${NC}"
echo -e "${GREEN}=====================================${NC}"

# Check if Python 3 is installed
echo -e "${GREEN}Checking for Python 3 installation...${NC}"
if command -v python3 &> /dev/null; then
    echo -e "${GREEN}Python 3 is installed.${NC}"
else
    echo -e "${RED}Error: Python 3 is not installed. Please install Python 3.${NC}" >&2
    exit 1
fi

# Get the path to Python 3
echo -e "${GREEN}Getting Python 3 path...${NC}"
PYTHON_PATH=$(which python3)
if [ -z "$PYTHON_PATH" ]; then
    echo -e "${RED}Error: Unable to find Python 3 path.${NC}" >&2
    exit 1
fi
echo -e "${GREEN}Python 3 path: $PYTHON_PATH${NC}"

# Get the Python 3 version
echo -e "${GREEN}Getting Python 3 version...${NC}"
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

# Print a footer
echo -e "${GREEN}=====================================${NC}"
echo -e "${GREEN}Installation check complete.${NC}"
echo -e "${GREEN}=====================================${NC}"
