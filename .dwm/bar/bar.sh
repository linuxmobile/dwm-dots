#!/bin/bash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors!
. ~/.dwm/bar/themes/aesthetic

cpu() {
  cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

  printf "^c$black^ ^b$green^ CPU"
  printf "^c$white^ ^b$grey^ $cpu_val"
}

pkg_updates() {
  #updates=$(doas xbps-install -un | wc -l) # void
  updates=$(checkupdates | wc -l)   # arch , needs pacman contrib
  # updates=$(aptitude search '~U' | wc -l)  # apt (ubuntu,debian etc)

  if [ -z "$updates" ]; then
    printf "^c$green^  Fully Updated"
  else
    printf "^c$red^  $updates"" updates"
  fi
}

battery() {
  get_capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
  printf "^c$blue^   $get_capacity"
}

mem() {
  printf "^c$blue^^b$black^  "
  printf "^c$blue^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

network() {
  [ -n "$(nmcli -a | grep 'Wired connection')" ] && CONNAME="wired:"
  [ -n "$(nmcli -t -f active,ssid dev wifi | grep '^yes')" ] && CONNAME="wifi:"
  PRIVATE=$(nmcli -a | grep 'inet4 192' | awk '{print $2}')

  if [ "$CONNAME" = "" ]; then # we don't have a connection
    printf "^c$black^ ^b$blue^ 📡 ^d^%s" " ^c$blue^Disconnected"
  else # we have a connection
    printf "^c$black^ ^b$blue^ 📡 ^d^%s" " ^c$blue^${CONNAME} ${PRIVATE}"
  fi
}

clock() {
  printf "^c$black^ ^b$darkblue^ 󱑆 "
  printf "^c$black^^b$blue^ $(date '+%a %H:%M') "
}

while true; do
  [ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
  interval=$((interval + 1))

  sleep 1 && xsetroot -name "$updates $(cpu) $(mem) $(clock)"
done
