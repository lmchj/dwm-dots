#!/bin/sh
# ~/.xinitrc

[[ -f ~/.xprofile ]] && . ~/.xprofile

# Loop to not close dwm
while true; do
		dwm >/dev/null 2>&1
done

# dwm bar
#while true
#do
#	DATE=$(date "+%a %y-%m-%d %R(%z)")
#xsetroot -name 

# The WM or DE is the last thing to execute
exec dwm
