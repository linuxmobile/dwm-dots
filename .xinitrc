# Disable HDMI Monitor
xrandr --output HDMI-A-1 --off &&

# Run Hypr
exec $HOME/.dwm/autostart
