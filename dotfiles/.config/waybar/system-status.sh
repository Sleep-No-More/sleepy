#!/bin/bash

# Get WiFi status
wifi_icon=""
if ip link show | grep -q "wl.*state UP"; then
    # Get signal strength
    signal=$(grep "^\s*w" /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')
    if [ "$signal" -gt 80 ]; then
        wifi_icon="󰤨"
    elif [ "$signal" -gt 60 ]; then
        wifi_icon="󰤥"
    elif [ "$signal" -gt 40 ]; then
        wifi_icon="󰤢"
    elif [ "$signal" -gt 20 ]; then
        wifi_icon="󰤟"
    else
        wifi_icon="󰤯"
    fi
else
    wifi_icon="󰖪"
fi

# Get Bluetooth status
bt_icon=""
if systemctl is-active --quiet bluetooth; then
    bt_status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
    if [ "$bt_status" = "yes" ]; then
        # Check if any device is connected
        connected=$(bluetoothctl devices Connected 2>/dev/null | wc -l)
        if [ "$connected" -gt 0 ]; then
            bt_icon="󰂱"
        else
            bt_icon="󰂯"
        fi
    else
        bt_icon="󰂲"
    fi
else
    bt_icon="󰂲"
fi

# Get power profile
power_icon=""
if command -v powerprofilesctl &> /dev/null; then
    profile=$(powerprofilesctl get)
    case "$profile" in
        "performance")
            power_icon="󰠠"
            ;;
        "balanced")
            power_icon="󰾅"
            ;;
        "power-saver")
            power_icon="󱤆"
            ;;
        *)
            power_icon="󰾅"
            ;;
    esac
fi

# Output combined
echo "$wifi_icon  $bt_icon  $power_icon"
