#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=true

[[ -f ~/.aliases ]] && . ~/.aliases

PS1="\e[1;32m \W > \e[m "
