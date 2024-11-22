#!/bin/sh
case $1 in
  period-changed)
	  exec notify-send -t 3000 -e "Gammastep" "Period changed to $3"
esac
