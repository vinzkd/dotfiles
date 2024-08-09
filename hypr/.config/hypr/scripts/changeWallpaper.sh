#!/bin/bash

num=0

while true; do
	if [[ $num -eq 0 ]]; then
		hyprctl hyprpaper wallpaper "eDP-1,~/Pictures/Wallpapers/hyprland_nightcity.png"
		num=$(( $num+1 ))
		break
	elif [[ $num -eq 1 ]]; then
		hyprctl hyprpaper wallpaper "eDP-1,~/Pictures/Wallpapers/hyprland_desktop1.png"
		num=$(( $num+1 ))
		break
	elif [[ $num -eq 2 ]]; then
		hyprctl hyprpaper wallpaper "eDP-1,~/Pictures/Wallpapers/hyprland_space.png"
		num=$(( $num+1 ))
		break
	fi
done
