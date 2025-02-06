#!/bin/bash

CONFIG="/home/vinzk/.config/waybar/minimal/config-minimal.jsonc"
STYLE="/home/vinzk/.config/waybar/minimal/style-minimal.css"
CONFIG_FILES="$CONFIG $STYLE"
trap "killall waybar" EXIT

while true; do
    waybar -s $STYLE -c $CONFIG &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done
