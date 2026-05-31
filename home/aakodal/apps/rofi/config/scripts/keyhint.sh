#!/usr/bin/env bash
BINDS="$HOME/.config/hypr/hyprland/binds.lua"

grep "hl.bind" $BINDS | \
    sed -e 's/hl.bind(//g' -e 's/))/)/g' -e 's/hl.dsp.//g' -e 's/exec_cmd("\(.*\)")/\1/g' | \
    awk -F', ' '{print "<b>" $1 "</b>  \t\t" $2}' | \
    rofi -dmenu -i -markup-rows -p "XCompose" -theme '/home/aakodal/.config/rofi/rasi/launcher.rasi'
