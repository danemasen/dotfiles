[ -f ~/.bashrc ] && source ~/.bashrc

export XDG_RUNTIME_DIR=/tmp/xdg-runtime-$(id -u)
mkdir -p $XDG_RUNTIME_DIR

# export SDL_VIDEODRIVER=wayland

export EDITOR=nvim

export DOTNET_ROOT=$HOME/.dotnet-sdk

export FZF_DEFAULT_OPTS='--ansi'

export HISTCONTROL='erasedups:ignorespace'
export HISTSIZE=10
