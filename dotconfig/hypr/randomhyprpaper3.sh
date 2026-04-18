#!/usr/bin/env bash

WALLPAPER_DIR="/usr/share/hypr/mywallpapers"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Apply it to all monitors
hyprctl hyprpaper wallpaper ",$WALLPAPER"
