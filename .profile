#!/bin/sh
# ~/.profile

# Add ~/.local/bin to PATH
export PATH="$PATH:$(du -L "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Environment variables

# Default programs
# Text editor
export EDITOR="nvim"
# Terminal
export TERMINAL="st"
# Web browser
export BROWSER="firefox"
# Document reader
export READER="zathura"
# File browser
export FILE_BROWSER="nnn"

# nnn
#export NNN_OPENER="$HOME/.config/nnn/plugins/nuke"

# Ranger
export RANGER_LOAD_DEFAULT_RC=false

# Stardict
export STARDICT_DATA_DIR="$HOME/.config/stardict"
export SDCV_HISTSIZE=0

# Kvantum
export QT_STYLE_OVERRIDE=kvantum

# Cleaning ~/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
