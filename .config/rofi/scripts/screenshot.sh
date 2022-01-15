#!/usr/bin/env bash

rofi_command="rofi -theme themes/screenshotsmenu.rasi"

# Options
screen=""
area=""
timer=""

# Variable passed to rofi
options="$screen\n$area\n$timer"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $screen)
        ~/.scripts/screenshot-screen.sh
        ;;
    $area)
        ~/.scripts/screenshot-selection.sh
        ;;
    $timer)
        ~/.scripts/screenshot-countdown.sh
        ;;
esac
