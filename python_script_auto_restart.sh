#!/bin/bash

name="your_python_file"
command="python3 $name.py"
error_log_file="$name-error.log"
log_file="$name.log"
clear_interval=$((60 * 60 * 24 * 7))
last_clear=$(date +%s)

while true; do
   if ! pgrep -f "$command" > /dev/null; then
        echo "[$(date)] The Python script stopped running. Restarting now..." >> "$error_log_file"
        $command &
   else
        echo "[$(date)] The Python script is running." >> "$log_file"
        current_time=$(date +%s)
        time_since_last_clear=$((current_time - last_clear))
        if [ "$time_since_last_clear" -ge "$clear_interval" ]; then
            echo "[$(date)] Clearing the log file." > "$log_file"
            last_clear=$current_time
        fi
   fi
   sleep 60
done
