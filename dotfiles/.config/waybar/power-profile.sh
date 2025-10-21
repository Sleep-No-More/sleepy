#!/usr/bin/env bash

# Check if power-profiles-daemon is available
if command -v powerprofilesctl &> /dev/null; then
    profile=$(powerprofilesctl get)
    
    case $profile in
        "performance")
            icon="󰠠"
            text="Performance"
            ;;
        "balanced")
            icon="󰾅"
            text="Balanced"
            ;;
        "power-saver")
            icon="󱤆"
            text="Power Saver"
            ;;
        *)
            icon="󰾅"
            text="Unknown"
            ;;
    esac
    
    echo "{\"text\":\"$icon\", \"tooltip\":\"$text\", \"class\":\"$profile\"}"
else
    # Fallback if power-profiles-daemon is not available
    echo "{\"text\":\"󰾅\", \"tooltip\":\"Balanced\", \"class\":\"balanced\"}"
fi
