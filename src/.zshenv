# XDG Paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# zsh config dir
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# zsh history
export HISTSIZE=100000                   # Maximum events for internal history
export SAVEHIST=100000                   # Maximum events in history file

# # editors
# export EDITOR="nvim"
# export VISUAL="nvim"

# path
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/homebrew/bin:$PATH

export PATH="/usr/local/homebrew/opt/mysql-client/bin:$PATH"
export PATH="$PATH:/Users/prince/.local/bin"
