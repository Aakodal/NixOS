#!/usr/bin/env bash
XCOMPOSE_FILE="$HOME/.XCompose"
grep '^<' "$XCOMPOSE_FILE" | \
    sed -e 's/<Multi_key>/cmp/g' -re 's/"([^"]*)"/\1/g' -re 's/<([^>]*)>/\1/g' | \
    awk -F' ' '{keys=""; for (i=2; i<NF-2; i++) keys=keys $(i) " + "; print "<b>Compose key + " keys $(NF-2)"</b>  \t\t" $NF}' | \
    rofi -dmenu -i -markup-rows -p "XCompose" -theme '/home/aakodal/.config/rofi/rasi/launcher.rasi'
