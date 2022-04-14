#!/usr/bin/env bash

# Load Global Variable
source $HOME/.aether-corevar

rofi_command="rofi -theme themes/powermenu.rasi"

# Options
mute="󰝟"
volumeup="󰝝"
volumedown="󰝞"
headphones="󰋋"
speakers="󰓃"

# Variable passed to rofi
options="$speakers\n$volumedown\n$mute\n$volumeup\n$headphones"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $speakers)
        pactl set-sink-port 0 analog-output-headphones
        $NOTIFIER -i "$ICONDIR/speaker.png" -t 2000 -r 123  'Audio Output Switch' 'Switched to Speakers.' 
        ;;
    $volumedown)
        ~/.scripts/notify/change-volume down
        ;;
    $mute)
        ~/.scripts/notify/change-volume mute
        ;;
    $volumeup)
        ~/.scripts/notify/change-volume up
        ;;
    $headphones)
        pactl set-sink-port 0 analog-output-lineout
$NOTIFIER -i "$ICONDIR/headphones.png" -t 2000 -r 123  'Audio Output Switch' 'Switched to Headphones.'
        ;;
esac

