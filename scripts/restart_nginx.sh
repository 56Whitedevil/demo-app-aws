#!/bin/bash

echo "Restarting NGINX..."
systemctl restart nginx

if systemctl is-active --quiet nginx; then
  echo "NGINX restarted successfully."
else
  echo "Failed to restart NGINX." >&2
  exit 1
fi
