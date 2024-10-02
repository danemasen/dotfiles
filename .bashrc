# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -F --color=always'
alias ll='eza -lF --color=always'
alias la='eza -aF --color=always'
alias lla='eza -laF --color=always'
alias lt='eza --tree'
alias cls='clear'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias ip='ip --color=always'
alias less='less -R'
alias tmux='tmux -2'
alias startwl='dwl -s "sh .wlinitrc"'

complete -cf doas
complete -c man which

set -o noclobber

echo -e "\n"
PERLFETCH_NO_TIME=1 PERLFETCH_NO_DATE=1 perlfetch
echo -e "\n"
when

export PS1="\n\[\033[01;32m\]\u@\h\[\033[0m\] \[\033[01;33m\]\W\[\033[0m\] \n\[\033[01;34m\]\$\[\033[0m\] "

source ~/.scripts/fzf-git.sh

eval "$(direnv hook bash)"
