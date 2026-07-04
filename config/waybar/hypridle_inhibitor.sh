#!/usr/bin/env bash

PROCESS="hypridle"

if [[ "$1" == "status" ]]; then
    sleep 1
    if pgrep -x "$PROCESS" >/dev/null; then
        echo '{"text": "RUNNING", "alt": "deactivated", "class": "deactivated", "tooltip": "idle_inhibitor inactive"}'
    else
        echo '{"text": "NOT RUNNING", "alt": "activated", "class": "activated", "tooltip": "idle_inhibitor active"}'
    fi
elif [[ "$1" == "toggle" ]]; then
    if pgrep -x "$PROCESS" >/dev/null; then
        pkill "$PROCESS"
    else
        niri msg action spawn -- "$PROCESS"
    fi
else
    echo "Usage: $0 {status|toggle}"
    exit 1
fi
