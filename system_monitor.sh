#!/bin/bash

LOG_FILE="/home/vagrant/system_monitor.log"

echo "===== SYSTEM MONITOR LOG =====" >> $LOG_FILE
echo "Date: $(date)" >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Disk usage of /home:" >> $LOG_FILE
df -h /home >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Top 5 processes consuming memory:" >> $LOG_FILE
ps aux --sort=-%mem | head -n 6 >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Logging done." >> $LOG_FILE
echo "=============================" >> $LOG_FILE
echo "" >> $LOG_FILE

