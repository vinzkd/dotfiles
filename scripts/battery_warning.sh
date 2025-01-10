#!/bin/bash

battery_level=$(cat /sys/class/power_supply/BAT0/capacity)

if [ "$battery_level" -lt 20 ]; then
    # Use notify-send to send a desktop notification
    notify-send -u critical "Low Battery" "Battery is at ${battery_level}%. Please plug in the charger."
fi
