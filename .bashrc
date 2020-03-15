#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=true

alias ls='ls --color=auto'
#PS1=' \W\$ '
PS1="\e[0;32m \W \$ \e[m "

if [ -f ~/.aliases ]; then
	    . ~/.aliases
fi
