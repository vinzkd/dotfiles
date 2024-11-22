#!/bin/bash

CONFIG="/home/vinzk/.config/swaync"
CONFIG_FILES="$CONFIG/config.json $CONFIG/style.css"

trap "killall swaync" EXIT

while true; do
    swaync &
    inotifywait -e create,modify $CONFIG_FILES
    killall swaync
done
