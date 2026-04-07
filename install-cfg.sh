#!/bin/bash

set -e
sudo pacman -Syu --needed rofi waybar

CONFIG_DIR="$HOME/.config"
mkdir -p "$CONFIG_DIR"

if [ -d "rofi" ]; then
    echo "copying rofi config to $CONFIG_DIR/rofi/"
    cp -r "rofi" "$CONFIG_DIR/"
    echo "rofi config copied"
else
    echo "'rofi' folder not found in current directory"
fi

if [ -d "waybar" ]; then
    echo "copying waybar config to $CONFIG_DIR/waybar/"
    cp -r "waybar" "$CONFIG_DIR/"
    echo "waybar config copied"
else
    echo "'waybar' folder not found in current directory"
fi
