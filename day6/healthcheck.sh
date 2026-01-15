#!/bin/bash

echo "===== SERVER HEALTH CHECK ====="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"

echo ""
echo "===== CPU / Memory ====="
free -m

echo ""
echo "===== Disk Usage ====="
df -h | head -n 10

echo ""
echo "===== Top 5 CPU Processes ====="
ps aux --sort=-%cpu | head -n 6

echo ""
echo "===== NGINX Status ====="
systemctl is-active nginx

