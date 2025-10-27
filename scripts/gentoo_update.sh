#!/bin/bash
# Gentoo system update script

# # Sync repositories?
# read -p "Sync repositories? (Y/n): " sync

# Sleep after finishing update?
read -p "Shutdown system after update? (y/N): " shutdown

# Check if hypridle is on.
if pgrep -x "hypridle" >/dev/null; then
  echo "Turning off screen idle"
  /home/vinzk/.config/hypr/scripts/screenidle.sh
else
  echo "Screen idle already off"
fi

# Sync repositories
# if [[ "$sync" == "y" || "$sync" == "Y" || "$sync" == "" ]]; then
#   echo "Syncing repositories"
#   notify-send -t 10000 -e "Syncing repositories"
#   doas emaint sync --auto
#   echo "Syncing complete"
# fi

notify-send -e "ATTENTION: Input sudo password"
doas sh -c "
  echo "Syncing repositories..." &&
  emaint sync --auto &&
  echo "Syncing complete!" &&

  echo "Running emerge --update @world" &&
  emerge -qvuDU @world &&
  echo "emerge complete!" &&

  echo "Rebuilding modules and packages" &&
  emerge @module-rebuild &&
  emerge @preserved-rebuild && 
  echo "Rebuilds complete!" &&

  echo "Removing unused dependencies" &&
  emerge --depclean 
  "

notify-send -t 5000 -e "System update complete!"

if [[ "$shutdown" == "y" || "$shutdown" == "Y" ]]; then
  echo "Shutting down system"
  loginctl shutdown
else
  # Turn screenidle back on
  /home/vinzk/.config/hypr/scripts/screenidle.sh &
  exit 0
fi
