#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=true

alias ls='ls --color=auto'
#PS1=' \W\$ '
PS1="\e[0;32m \W \$ \e[m "

#ranger config file load
export RANGER_LOAD_DEFAULT_RC=false

#alias to get track of dot files
alias dot='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
