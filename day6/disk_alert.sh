#!/bin/bash

THRESHOLD=80
USAGE=$(df -h / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disk usage: ${USAGE}%"

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "ALERT: Disk usage is above ${THRESHOLD}% ❌"
else
  echo "OK: Disk usage is normal ✅"
fi

