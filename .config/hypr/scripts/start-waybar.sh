#!/bin/bash

waybar &
hyprctl eval 'hl.config({ general = { gaps_out = { top = 0, right = 10, bottom = 10, left = 10 } } })'
