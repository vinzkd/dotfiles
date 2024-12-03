#!/bin/bash

# Monitor audio output changes and restart Waybar
pactl subscribe | grep --line-buffered "change" | while read -r event; do
    if echo "$event" | grep -q "sink"; then
        echo "Sink changed!"
        killall waybar
        waybar
    fi
done

