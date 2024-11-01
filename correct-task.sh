#!/bin/bash

echo "Starting the system check and maintenance script..."

# 1. Display system information (hostname, kernel version, uptime)
echo "1. System Information:"
echo "-----------------------"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "System Uptime: $(uptime -p)"
echo ""

# 2. Check disk usage
echo "2. Disk Usage:"
echo "-----------------------"
df -h | grep -E '^/dev/'  # Only show actual disk partitions
echo ""

# 3. Show top 5 memory-consuming processes
echo "3. Top 5 Memory-Consuming Processes:"
echo "-----------------------"
ps aux --sort=-%mem | head -n 6  # First line is header, next 5 lines are top processes
echo ""

# 4. List active network connections
echo "4. Active Network Connections:"
echo "-----------------------"
netstat -tunapl | head -n 10  # Display first 10 active network connections
echo ""

# 5. Check for available updates (example for Debian/Ubuntu and RedHat/Amazon Linux)
echo "5. Checking for Available Updates:"
echo "---"

