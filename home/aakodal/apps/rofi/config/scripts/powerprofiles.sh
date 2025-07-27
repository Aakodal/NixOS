#!/usr/bin/env bash

# Current Theme
rasi="$HOME/.config/rofi/rasi/powerprofiles.rasi"

# Options
performance="󱐋"
balanced="󰗑"
powersaver=""

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-theme "$rasi"
}

# Pass variables to rofi dmenu
run_rofi() {
	current="$(powerprofilesctl get)"
	case ${current} in
		"performance")
			performance="$performance✓"
			;;
		"balanced")
			balanced="$balanced ✓"
			;;
		"power-saver")
			powersaver="$powersaver ✓"
			;;
	esac
	echo -e "$performance\n$balanced\n$powersaver" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ $1 == "--performance" ]]; then
		powerprofilesctl set performance
	elif [[ $1 == "--balanced" ]]; then
		powerprofilesctl set balanced
	elif [[ $1 == "--powersaver" ]]; then
		powerprofilesctl set power-saver
	else
		exit 0
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $performance)
		run_cmd --performance
        ;;
    $balanced)
		run_cmd --balanced
        ;;
    $powersaver)
		run_cmd --powersaver
        ;;
esac
