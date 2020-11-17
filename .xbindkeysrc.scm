(xbindkey '("XF86AudioMute") "pamixer -t; pkill -RTMIN+10 dwmblocks")
(xbindkey '("XF86AudioLowerVolume") "pamixer --allow-boost -d 3; pkill -RTMIN+10 dwmblocks")
(xbindkey '("XF86AudioRaiseVolume") "pamixer --allow-boost -i 3; pkill -RTMIN+10 dwmblocks")
(xbindkey '("XF86ScreenSaver") "xscreensaver-command -lock")
