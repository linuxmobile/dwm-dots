dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Disable HDMI Monitor
xrandr --output HDMI-A-1 --off &&

# Run Hypr
exec $HOME/.dwm/autostart
