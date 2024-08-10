#!/bin/bash

num=0

while true; do
  if [[ $num -eq 0 ]]; then
    echo "step 1!"
    hyprctl hyprpaper wallpaper "eDP-1,~/wallpapers/minecraft_night2.jpg"
    num=$(($num + 1))
    break
  elif [[ $num -eq 1 ]]; then
    hyprctl hyprpaper wallpaper "eDP-1,~/wallpapers/hyprland_nightcity.png"
    num=$(($num + 1))
    break
  elif [[ $num -eq 2 ]]; then
    hyprctl hyprpaper wallpaper "eDP-1,~/wallpapers/hyprland_space.png"
    num=$(($num + 1))
    break
  fi
done
