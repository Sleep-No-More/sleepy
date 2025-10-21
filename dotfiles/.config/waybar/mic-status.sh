#!/bin/bash

# Check if microphone is muted
muted=$(pactl get-source-mute @DEFAULT_SOURCE@ 2>/dev/null | grep -o "yes\|no")

if [ "$muted" = "yes" ]; then
    echo '{"text": "󰍭", "class": "muted"}'
else
    echo '{"text": "󰍬", "class": "active"}'
fi
