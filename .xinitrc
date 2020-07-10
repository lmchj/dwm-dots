#!/bin/sh
# ~/.xinitrc

[[ -f ~/.xprofile ]] && . ~/.xprofile

# Loop to not close X session
while true; do
    # Log stderror to a file 
    #dwm 2> ~/.dwm.log
    # No error logging
    dwm >/dev/null 2>&1
done

# The WM or DE is the last thing to execute
exec dwm
