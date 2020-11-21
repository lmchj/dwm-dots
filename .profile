#!/bin/sh
# ~/.profile

# Environment variables

# Default programs
# Text editor
export EDITOR="nvim"
# Terminal
export TERM="termite"
#export TERMINAL="st"
# Web browser
export BROWSER="firefox"
# Document reader
export READER="zathura"
# File browser
export FILE_BROWSER="nnn"

# nnn
export NNN_OPENER="~/.config/nnn/plugins/nuke"

# Stardict
export STARDICT_DATA_DIR="$HOME/.config/stardict"
export SDCV_HISTSIZE=0

# Kvantum
export QT_STYLE_OVERRIDE=kvantum

# Cleaning ~/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
