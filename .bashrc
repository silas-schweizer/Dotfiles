#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
OPENER=xdg-open
alias lf="/home/silas/.local/share/lfub"
