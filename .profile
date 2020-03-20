#!/bin/sh
# ~/.profile

# Add ~/.local/bin to PATH
export PATH="$PATH:$(du -L "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Environment variables

# Default programs
# Terminal
export TERMINAL="alacritty"
# Web browser
export BROWSER="firefox"
# Document reader
export READER="zathura"
# File browser
export FILE_BROWSER="ranger"
export RANGER_LOAD_DEFAULT_RC=false
