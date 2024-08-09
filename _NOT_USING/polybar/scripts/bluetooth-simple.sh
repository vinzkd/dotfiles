#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#66ffffff}"
else
  if [ $(bluetoothctl devices Connected | wc -c) -eq 0 ]
  then 
    echo "%{F#77d9f7}"
  fi
  echo "%{F#77d9f7}"
fi
