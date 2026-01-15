#!/bin/bash

SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
  echo "$SERVICE is running ✅"
else
  echo "$SERVICE is NOT running ❌"
  echo "Restarting $SERVICE..."
  sudo systemctl restart $SERVICE
  systemctl is-active $SERVICE
fi

