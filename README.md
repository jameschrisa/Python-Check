# Python 3 Check
Check your systems Python is working properly

## Description
This bash script checks if Python is installed, provides the path location of the Python executable, displays the Python version, runs a test with a simple print function, and performs a command line test. It also logs errors and successful completions to a log file.
## Usage
* Step 1: Save the Script
Save the script as a file (e.g., python_test.sh).
* Step 2: Make the Script Executable
Make the script executable by running:
Bash
> [!NOTE]
```
chmod +x python_test.sh
```
* Step 3: Run the Script
Run the script by executing:
```
./python_test.sh
```
### Log File
The script logs errors and successful completions to a file named python_test_log.txt in the same directory.
## Script Output
The script outputs the following information:
Whether Python is installed
The path location of the Python executable
The Python version
The result of the Python test
The result of the command line test
## Error Handling
The script exits with a non-zero status code if any of the following errors occur:
Python is not installed
Unable to find Python path
Unable to get Python version
Python test fails
Command line test fails
## Note
This script assumes that Python is installed and available in the system's PATH. If Python is not installed, the script will log an error and exit.
