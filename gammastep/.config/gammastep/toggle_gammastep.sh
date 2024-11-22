#!/bin/bash

# Check if gammastep is running
if pgrep -x "gammastep" > /dev/null; then
    echo "Gammastep is running. Turning it off..."
    pkill -x gammastep
    echo "Gammastep has been turned off."
	notify-send -t 3000 -e 'Night filter is off'
else
    echo "Gammastep is not running. Turning it on..."
    # Start gammastep in the background
    gammastep > /dev/null 2>&1 &
    echo "Gammastep has been turned on."
	notify-send -t 3000 -e 'Night filter is on'
fi

