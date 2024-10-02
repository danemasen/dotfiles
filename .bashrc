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

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
 status=`git status 2>&1 | tee`
 dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
 untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
 ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
 newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
 renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
 deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
 bits=''
 if [ "${renamed}" == "0" ]; then
  bits=">${bits}"
 fi
 if [ "${ahead}" == "0" ]; then
  bits="*${bits}"
 fi
 if [ "${newfile}" == "0" ]; then
  bits="+${bits}"
 fi
 if [ "${untracked}" == "0" ]; then
  bits="?${bits}"
 fi
 if [ "${deleted}" == "0" ]; then
 bits="x${bits}"
 fi
 if [ "${dirty}" == "0" ]; then
  bits="!${bits}"
 fi
 if [ ! "${bits}" == "" ]; then
 echo " ${bits}"
 else
  echo ""
 fi
}

export PS1="\n\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[0m\]\[\033[01;32m\]\h\[\033[0m\] \[\033[01;33m\]\W\[\033[0m\] \[\033[01;35m\]\`parse_git_branch\`\[\033[0m\] \n\[\033[01;34m\]\$\[\033[0m\] "

source ~/.scripts/fzf-git.sh

eval "$(direnv hook bash)"
