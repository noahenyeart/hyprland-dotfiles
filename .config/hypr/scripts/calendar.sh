#!/bin/bash

# Launch khal in a floating terminal with specific dimensions using Hyprland rules
# Launch the terminal with a unique window class ("khal-popup")
# Run khal in a floating terminal and keep the window open

kitty --class khal-popup -e bash -c '
khal --color calendar
echo ""
echo "Press q to close..."

while true; do
  read -rsn1 key
  if [[ "$key" == "q" ]]; then
    break
  fi
done
'
