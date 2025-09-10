#!/bin/bash

LOG_DIR="./logs"

mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/health_$(date +%F_%H-%M-%S).log"

{
echo "***************welcome to AUtomatated system health check logs  ******"
echo  "Date: $(date) "

echo -e "\n[CPU LOAD]"
uptime

echo -e "\n [MOMERY USAGE]"
free -h

echo -e "\n[DISK USAGE]"
df -h

echo -e "\n[TOP 10 PROCESSES USING HIGH MOMERY]"

ps -eo pid,comm,%mem,%cpu --sort=-%mem |head -n 11


echo -e "\n[TOP 10 PROCESSES USING HIGH CPU]"
ps -eo pid,comm,%mem,%cpu --sort=-%cpu | head -n 11

echo -e "\n network connections"

netstat -nr

echo "\n *****Report Generated successfully*********"


}> "$LOG_FILE"

echo  "Health report saved successfully  at: $LOG_FILE"
