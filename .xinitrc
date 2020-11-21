#!/bin/sh
# ~/.xinitrc

#startup programs
#mpd &
picom -f &
dwmblocks &
#polybar &
#xbindkeys &
sxhkd &
redshift &
xwallpaper --output all --zoom $(find $HOME/img/wallpapers/ | shuf -n 1) &
#keepassxc &
dunst &
xscreensaver -no-splash &

dwm loop
while true; do
	dwm > /dev/null 2>&1
done

# The WM or DE is the last thing to execute
exec dwm
#exec spectrwm
#!/bin/sh
# ~/.xprofile
