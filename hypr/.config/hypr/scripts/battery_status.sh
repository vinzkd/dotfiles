#!/bin/bash

battery_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
battery_status=$(cat /sys/class/power_supply/BAT0/status)

symbol_font="Symbols Nerd Font 20"

charging_color=#e7ff87
critical_color=#fc463c

if [ $battery_status == "Charging" ]; then
    echo "<span foreground='$charging_color'>${battery_capacity}%</span> <span font='24' rise ='-1pt' foreground='$charging_color'>󱐌</span>"

elif [ $battery_capacity -lt 10 ]; then
    echo "<span foreground='$critical_color'>${battery_capacity}%</span> <span font='$symbol_font' rise ='-1pt' foreground='$critical_color'>󰁺</span>"
elif [ $battery_capacity -lt 20 ]; then
    echo "<span foreground='$critical_color'>${battery_capacity}%</span> <span font='$symbol_font' rise ='-1pt' foreground='$critical_color'>󰁻</span>"
elif [ $battery_capacity -lt 30 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰁼</span>"
elif [ $battery_capacity -lt 40 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰁽</span>"
elif [ $battery_capacity -lt 50 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰁿</span>"
elif [ $battery_capacity -lt 60 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰁿</span>"
elif [ $battery_capacity -lt 70 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰂀</span>"
elif [ $battery_capacity -lt 80 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰂁</span>"
elif [ $battery_capacity -lt 90 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰂂</span>"
elif [ $battery_capacity -lt 100 ]; then
    echo "${battery_capacity}% <span font='$symbol_font' rise ='1pt'>󰁹</span>"
fi
