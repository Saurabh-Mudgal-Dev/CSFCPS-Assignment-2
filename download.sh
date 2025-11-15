#!/bin/bash
# saurabh-2501010045
# script to automate downloads

#first check if target url argument provided or not
if [ -z "$1" ]; then
    echo "Usage: $0 <url_list_file>"
    exit 1
fi

url_list="$1"

# check if the file exists or not
if [ ! -f "$url_list" ]; then
    echo "Error: File '$url_list' not found."
    exit 1
fi

download_dir="/home/saurabh/downloads"
log_file="/home/saurabh/downloads/download_log.txt"
# create the directory if not existing
mkdir -p "$download_dir"

while IFS= read -r url
do
    # skip empty lines
    if [ -z "$url" ]; then
        continue
    fi

    filename=$(basename "$url")

    # download using wget
    wget -q -O "$download_dir/$filename" "$url"

    # check result of wget
    if [ $? -eq 0 ]; then
        echo "Download successful: $download_dir/$filename"
        echo "$(date): Downloaded $filename from $url" >> "$log_file"
    else
        echo "Download failed: $url"
        echo "$(date): Failed to download $url" >> "$log_file"
    fi

done < "$url_list"
