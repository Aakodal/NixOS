#!/usr/bin/env bash
HYPRCONFIG="$HOME/.config/hypr/hyprland.conf"

grep '^bind=' "$HYPRCONFIG" | \
    sed -e 's/bind=//g' -e 's/$mod/Mod/g' | \
    awk -F', ' '{bind=""; if ($1 == "") bind=$2; else bind=$1 " + " $2; keys=""; for (i=3; i<NF+1; i++) keys=keys $(i) " "; print "<b>" bind "</b>  \t\t" keys}' | \
    rofi -dmenu -i -markup-rows -p "XCompose" -theme '/home/aakodal/.config/rofi/rasi/launcher.rasi'
