# Bash-AutoRestart-Python
A Bash script designed to monitor the execution of a Python script. This script constantly checks the status of a specified Python script, restarting it if necessary. It also maintains logs for errors and status updates, ensuring smooth and continuous operation. Customize the configuration variables to fit your specific use case.

## Overview

The `python_script_auto_restart.sh` script is a Bash-based monitoring tool designed to ensure the continuous execution 
of a Python script. It serves as a monitoring solution, constantly checking the status of a specified Python script and
taking corrective actions if needed. This script provides a robust solution for scenarios where the Python script may 
unexpectedly stop running.

## Features

### Variables

- **`name`:** The base name of the Python script to monitor. Feel free to change the value according to the name of your file.
- **`command`:** The full command to execute the Python script.
- **`error_log_file`:** File for logging errors when the Python script stops.
- **`log_file`:** File for logging the status of the Python script.
- **`clear_interval`:** Time interval (in seconds) for clearing the log file.

### Monitoring and Restart

The script employs a continuous loop that periodically checks if the specified Python script is running. 
If the Python script is not found in the process list, the bash script restarts it and logs the event, indicating the 
time of the restart.

### Logging

- **Error Log:** The `error_log_file` records occurrences when the Python script stops, providing valuable information 
for debugging and troubleshooting.

- **Status Log:** The `log_file` logs the status of the Python script. Entries include timestamps and messages 
indicating whether the script is running.

### Log File Clearing

To prevent log files from becoming too large, the script clears the `log_file` at regular intervals specified by 
the `clear_interval` variable. This ensures that the log file remains manageable over time.

## Usage

1. **Clone the repository:**

    ```bash
    git clone https://github.com/Raphaelhdd/Bash-AutoRestart-Python.git
    cd your-repo
    ```

2. **Configure the script:**

    - Open the `python_script_auto_restart.sh` file.
    - Adjust the `name` variable to match the name of your Python script.
    - Customize other variables if needed.

3. **Run the script:**

    Before executing the script, grant full permissions:

    ```bash
    sudo chmod +x python_script_auto_restart.sh
    ```

    To verify the successful application of permissions, run:

    ```bash
    ls
    ```

    You should observe a change in the file color.

    Now, run the script:

    ```bash
    ./python_script_auto_restart.sh
    ```

    This script continually monitors the specified Python script and initiates a restart if necessary. 
    It ensures the seamless operation of your Python script by keeping a vigilant eye on its execution status.



## Notes

- The script checks every minute if the Python script is running.
- If the Python script is not running, it restarts it and logs the event.
- Logs errors and status updates to facilitate debugging and monitoring.
- Clears the log file periodically to manage file size.

Feel free to customize the script and documentation according to your specific use case and preferences.


## Python Script Explanation

The included Python script (`your_python_file.py`) serves as a simple example for testing the Bash script's monitoring 
and restarting functionality. It continuously prints the current timestamp every 10 seconds. 
When the Bash script detects that the Python script has stopped, it will restart it, and you should see the 
"The python script starts running" message again.
