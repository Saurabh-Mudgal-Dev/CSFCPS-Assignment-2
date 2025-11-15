#!/bin/bash
# saurabh-2501010045
# script to log CPU and memory usage

log_file_path="/home/saurabh/monitoring_logs"
log_file="$log_file_path/sys_monitoring.log"
interval=5

# first check if interval argument provided or not
if [ ! -z "$1" ]; then
    interval="$1"
fi

# create log directory and log path if missing
mkdir -p "$log_file_path"
if [ ! -f "$log_file" ]; then
    echo "Timestamp, CPU(%), Memory(%)" > "$log_file"
fi
echo "System monitoring started... Logging every $interval seconds and writing to $log_file"

# infinite loop for monitoring
while true
do
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
    mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    echo "$timestamp, $cpu_usage, $mem_usage" >> "$log_file"
    sleep $interval
done
