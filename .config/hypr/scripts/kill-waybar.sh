#!/bin/bash

if pgrep -x "waybar" > /dev/null; then
    pkill waybar &
    hyprctl keyword general:gaps_out 10
else
    exit 1
fi
