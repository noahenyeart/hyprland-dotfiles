#!/bin/bash

if pgrep -x "waybar" > /dev/null; then
    pkill waybar &
    hyprctl eval 'hl.config({ general = { gaps_out = 10 } })'
else
    exit 1
fi
