# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export XDG_RUNTIME_DIR=/tmp/xdg-runtime-$(id -u)
mkdir -p $XDG_RUNTIME_DIR

export HISTSIZE=25
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

export FZF_DEFAULT_OPTS='--ansi'

export DOTNET_ROOT=$HOME/.dotnet-sdk
