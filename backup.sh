#!/bin/bash
# saurabh-2501010045
# script to backup a directory

# check if target argument given or not
if [ -z "$1" ]; then
    echo "Usage: $0 <target>"
    exit 1
fi

target_path="$1"

# now check if the target actually exists
if [ ! -d "$target_path" ]; then
    echo "Error: target '$target_path' does not exist."
    exit 1
fi

backup_path="/home/saurabh/backup/directories"
log_path="/home/saurabh/backup/logs"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

#make sure backup and log directory exist
mkdir -p "$backup_path"
mkdir -p "$log_path"

backup_folder="$backup_path/backup_$timestamp"
mkdir "$backup_folder"

# copy target and give log path, create it if missing
cp -r "$target_path" "$backup_folder"
log_file="$log_path/log.txt"
if [ ! -f "$log_file" ]; then
    touch "$log_file"
fi

# write backup entry to log
echo "[$timestamp] Backup of '$target_path' stored at '$backup_folder'" >> "$log_file"
