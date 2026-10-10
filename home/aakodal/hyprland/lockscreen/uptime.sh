#!/usr/bin/env bash

uptime_text=""

# Uptime in seconds
uptime=$(awk '{print sprintf("%.0f", $1)}' /proc/uptime)

if [ "$uptime" -lt 60 ]; then
    echo "Moins d'une minute"
    exit 0
fi


remaining=$uptime

days=$((remaining / 86400))
remaining=$((remaining % 86400))

hours=$((remaining / 3600))
remaining=$((remaining % 3600))

minutes=$((remaining / 60))


if [ "$days" -ge 1 ]; then
    day_label="jours"; [ "$days" -eq 1 ] && day_label="jour"
    uptime_text+="$days $day_label, "
fi

if [[ "$days" -ge 1 || "$hours" -ge 1 ]]; then
    hour_label="heures"; [ "$hours" -le 1 ] && hour_label="heure"
    uptime_text+="$hours $hour_label, "
fi

min_label="minutes"; [ "$minutes" -le 1 ] && min_label="minute"
uptime_text+="$minutes $min_label"

echo $uptime_text
