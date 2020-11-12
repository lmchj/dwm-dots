#!/bin/sh
# ~/.xinitrc

[[ -f ~/.xprofile ]] && . ~/.xprofile

#exec startdwm

# The WM or DE is the last thing to execute
exec dwm
