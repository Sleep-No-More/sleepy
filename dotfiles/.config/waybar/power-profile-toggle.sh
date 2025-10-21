#!/usr/bin/env bash

# Check if power-profiles-daemon is available
if ! command -v powerprofilesctl &> /dev/null; then
    notify-send "Power Profiles" "power-profiles-daemon is not installed" -i dialog-error
    exit 1
fi

# Get current profile
current=$(powerprofilesctl get)

# Cycle through profiles
case $current in
    "performance")
        powerprofilesctl set balanced
        if command -v notify-send &> /dev/null; then
            notify-send "Power Profile" "Switched to Balanced 󰾅" -i dialog-information
        fi
        ;;
    "balanced")
        powerprofilesctl set power-saver
        if command -v notify-send &> /dev/null; then
            notify-send "Power Profile" "Switched to Power Saver 󱤆" -i dialog-information
        fi
        ;;
    "power-saver")
        powerprofilesctl set performance
        if command -v notify-send &> /dev/null; then
            notify-send "Power Profile" "Switched to Performance 󰠠" -i dialog-information
        fi
        ;;
esac
