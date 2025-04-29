#!/bin/bash

config=/home/vinzk/.config/hypr/hypridle.conf

echo "Initializing hypridle.sh"

# Check if hypridle is on.
if pgrep -x "hypridle" >/dev/null; then
  echo "hypridle is running"
  echo "Stopping hypridle"
  notify-send -t 5000 -e "Screen idle off"
  killall hypridle
else
  echo "hypridle is stopped"
  echo "Starting hypridle"
  notify-send -t 5000 -e "Screen idle on"
  hypridle -c $config
fi
