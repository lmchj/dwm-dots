#!/bin/sh
# ~/.xinitrc

[[ -f ~/.xprofile ]] && . ~/.xprofile

 dwm loop
while true; do
	dwm > /dev/null 2>&1
done

# The WM or DE is the last thing to execute
#exec bspwm
exec dwm
