#
# ~/.bashrc
#

# Add ~/.local/bin to PATH
export PATH="$PATH:$(du -L "$HOME/.local/bin" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=true

[[ -f ~/.aliases ]] && . ~/.aliases

# PS1
if [ $(id -u) -eq 0 ];
then #root
  PS1='\033[01;31m\]\[$(tput setaf 1)\]\u@\h:\w #\[$(tput sgr0)\] '
else #normal
  PS1='\[\[\e[1;32m\]\W \[\e[1;31m\]> \[\e[m\] '
fi

# vi mode
set -o vi

# Environment variables

# Default programs
# Text editor
export EDITOR="nvim"
# Terminal
export TERM="termite"
# Web browser
export BROWSER="firefox"
# Document reader
export READER="zathura"
# File browser
export FILE_BROWSER="nnn"

# nnn
export NNN_OPENER="/home/elem/.config/nnn/plugins/nuke"

# Kvantum
export QT_STYLE_OVERRIDE=kvantum

# Cleaning ~/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GTK2_RC_FILES='"$XDG_CONFIG_HOME"/gtk-2.0/gtkrc'
export LESSHISTFILE=-
export NPM_CONFIG_USERCONFIG='"$XDG_CONFIG_HOME"/npm/npmrc'
export export NVM_DIR='"$XDG_DATA_HOME"/nvm'
export TERMINFO='"$XDG_DATA_HOME"/terminfo'
export TERMINFO_DIRS='"$XDG_DATA_HOME"/terminfo:/usr/share/terminfo'
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
