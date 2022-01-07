#!/bin/bash
# A simple and nasty bash script to 
# quickly switch between monitors

screens=$(xrandr | grep " connected " | awk '{print $1}') && read disp1 disp2 <<< $(echo $screens)

case $(echo -e "$screens\nBoth" | rofi -dmenu) in
	Both)
		xrandr --output $disp1 --mode 1360x768 --right-of $disp2 ;;
	$disp1)
		xrandr --output "$disp2" --mode 1366x768 --primary
		xrandr --output "$disp1" --mode 1360x768 --right-of $disp2 ;;
	$disp2)
		xrandr --output "$disp1" --off
		xrandr --output "$disp2" --mode 1366x768 --primary;;
	*)
		echo "Invalid option" && exit 1;;
esac


