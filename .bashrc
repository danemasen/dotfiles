#!/bin/bash

source ~/.scripts/git-completion.bash
source ~/.scripts/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\n \e[1;34m\w\e[0m$(__git_ps1 " \e[1;33m(%s)\e[0m ")\n \e[1;32m\$\e[0m '

set -o noclobber
complete -cf doas

rm() { command rm -i "${@}"; }
cp() { command cp -i "${@}"; }
mv() { command mv -i "${@}"; }

alias ls='eza -F --color=always'
alias la='eza -AF --color=always'
alias ll='eza -lF --color=always --git'
alias lla='eza -lAF --color=always --git --git-repos'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias cls='clear'
alias ip='ip --color=always'
alias less='less -R'
alias tmux='tmux -2'
alias play='mpv $(fd . ~/music/ --type file --color=always | fzf-tmux -p 90% --ansi)'
alias startwl='dwl -s "sh .wlinitrc"'

eval "$(direnv hook bash)"
