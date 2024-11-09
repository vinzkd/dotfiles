#!/bin/bash
# launch_firefox_tiling.sh
hyprctl dispatch rule "tile, class:^(firefox)$"
firefox &
sleep 2  # Adjust the sleep duration as needed to ensure the rule takes effect only temporarily.
hyprctl dispatch rule "float, class:^(firefox)$"

