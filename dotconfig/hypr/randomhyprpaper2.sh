#!/usr/bin/env bash

WALLPAPER_DIR="/usr/share/hypr/mywallpapers"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Preload the image
hyprctl hyprpaper preload "$WALLPAPER"

# Apply it to all monitors
hyprctl hyprpaper wallpaper ",$WALLPAPER"

