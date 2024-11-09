#!/bin/bash

CONFIG_FILES="/home/vinzk/.config/waybar/sway.jsonc /home/vinzk/.config/waybar/style.css"

trap "killall waybar" EXIT

while true; do
    waybar -c ~/.config/waybar/sway.jsonc &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done
