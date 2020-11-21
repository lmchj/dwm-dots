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
  PS1='\[\[\e[1;32m\]\W \[\e[1;31m\]> \[\e[m\] '
fi

# vi mode
set -o vi

#########################
# ENVIRONMENT VARIABLES #
#########################

# Add ~/.local/bin to PATH
export PATH="$PATH:$(du -L "$HOME/.local/bin" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

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

###########
# ALIASES #
###########

# Dot files git track
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

# Colorful commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias sdcv='sdcv --color'

# Verbose
alias t='trash -v'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'

# Change to specific directories
alias dw='cd $HOME/dex'
alias ws='cd $HOME/rep/website'
alias wp='cd $HOME/img/wallpapers'
alias cf='cd $HOME/.config'
alias dc='cd $HOME/dox'
alias bk='cd ..'
alias m1='cd $HOME/mnt/mp1'
alias m2='cd $HOME/mnt/mp2'
alias m3='cd $HOME/mnt/mp3'
alias repos='printf "Mis repositorios personales.\nBuilds y programas en desarrollo.\n\n" && function _(){ cd $HOME/rep/$1 && printf "\tAhora en: $HOME/rep/$1\n\n" && ls -l; }; _'

# Toxic
alias tx='toxic -f .config/tox/lm.tox'

# Music
alias mp='mpd && ncmpcpp'
alias mp3dpl='youtube-dl -x --yes-playlist --audio-format mp3'

# nnn
alias nnn='nnn -d'

# Mount things
alias mount-hdd='sudo mount -U 2699CF1C708EBDE8 && echo "Disco duro externo montado exitosamente en ~/mnt/mp1"'

# Clean up
alias abook='abook --config "$XDG_CONFIG_HOME"/abook/abookrc --datafile "$XDG_DATA_HOME"/abook/addressbook'
alias mbsync='mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'

#lmao
#alias lmaoadd='function _() { pacman -S $1 && echo -e "$(tr ' ' '\n' $1)"; }; _ >> rep/lmao/ppacman.txt'
#alias daur='function _() { echo "Clonando repositorio..." && cd $HOME/prg/aur/ && git clone https://aur.archlinux.org/$1.git && cd $HOME/prg/aur/$1 && echo "Construyendo e instalando..." && makepkg -si; }; _'
