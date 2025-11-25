#!/usr/bin/env bash

WALLPAPER_DIR="/usr/share/hypr/mywallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
#WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Get a random wallpaper - could be the same one
ANYWALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$ANYWALLPAPER"
