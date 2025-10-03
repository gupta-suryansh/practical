#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# if [[ -z "$WALLPAPER" ]]; then
#     echo "No valid wallpaper found in $WALLPAPER_DIR. Exiting."
#     exit 1
# fi


# echo "Changing wallpaper to: $WALLPAPER"

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"

hyprctl hyprpaper apply