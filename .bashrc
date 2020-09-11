#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=true

[[ -f ~/.aliases ]] && . ~/.aliases

# PS1
if [ $(id -u) -eq 0 ];
then #root
  PS1='\033[01;31m\]\[$(tput setaf 1)\]\u@\h:\w #\[$(tput sgr0)\] '
else #normal
  PS1='\[\e[1;31m\][\[\e[1;35m\]\u\[\e[1;31m\]@\[\e[1;33m\]\h\[\e[1;31m\]] \[\e[1;32m\]\W \[\e[1;31m\]> \[\e[m\] '
fi
