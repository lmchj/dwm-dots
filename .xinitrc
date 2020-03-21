#!/bin/sh
# ~/.xinitrc

[[ -f ~/.xprofile ]] && . ~/.xprofile

# The WM or DE is the last thing to execute
exec i3
