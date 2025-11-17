# CSFCPS-Assignment-2
##  Project Overview
This repository contains three functional **Bash scripts** that demonstrate essential Linux automation tasks.  
Each script follows good scripting practices, including:
- Clear comments and meaningful variable names  
- Proper logging and timestamping  
- Error handling for robustness  

These scripts were developed as part of **Task 3 – Shell Script Development**.
##  How to Run the Scripts

###  1. Clone the Repository
```bash
git clone https://github.com/<your-username>/linux-shell-assignment.git
cd linux-shell-assignment
```

---

###  2. Configure Paths
Each script uses specific directories (like `/home/saurabh/backup` or `/home/saurabh/downloads`).  
Before running, **update these paths** in the scripts to match your own username or desired directories.

Example:
```bash
download_dir="/home/<your-username>/downloads"
```

---

### 🧾 3. Make Scripts Executable
```bash
chmod +x scripts/backup.sh scripts/monitoring.sh scripts/download.sh
```
##  Script Descriptions

###  a) Backup Script (`backup.sh`)
**Purpose:**  
Creates a timestamped backup of a specified directory and logs the result.

**Usage:**
```bash
./scripts/backup.sh <target_directory>
```

**Example:**
```bash
./scripts/backup.sh /home/saurabh/documents
```

**Log Location:**  
`/home/<your-username>/backup/logs/log.txt`

---

###  b) System Monitoring Script (`monitoring.sh`)
**Purpose:**  
Logs CPU and memory usage at regular intervals into a log file.

**Usage:**
```bash
./scripts/monitoring.sh
```

**Log Location:**  
`/home/<your-username>/monitoring_logs/sys_monitoring.log`

**Default Interval:** 5 seconds  
Press `Ctrl + C` to stop logging.

---

###  c) Automated Download Script (`download.sh`)
**Purpose:**  
Downloads a file from a given URL and stores it in a predefined directory.

**Usage:**
```bash
./scripts/download.sh <file_url>
```

**Example:**
```bash
./scripts/download.sh https://example.com/file.zip
```

**Download Location:**  
`/home/<your-username>/downloads`

**Log File:**  
`/home/<your-username>/downloads/download_log.txt`
##  Author
Name: Saurabh 
Date: 17 November 2025  
