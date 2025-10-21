#!/bin/bash

# System menu for WiFi, Bluetooth, and Power Profile
options="󰤨 WiFi Settings\n󰂯 Bluetooth Manager\n󰠠 Power Profile"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "System" -theme-str 'window {width: 300px;}')

case "$chosen" in
    "󰤨 WiFi Settings")
        nm-connection-editor &
        ;;
    "󰂯 Bluetooth Manager")
        blueman-manager &
        ;;
    "󰠠 Power Profile")
        # Cycle through power profiles
        ~/.config/waybar/power-profile-toggle.sh
        ;;
esac
