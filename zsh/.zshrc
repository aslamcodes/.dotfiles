clear
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"
export PATH=$PATH:"$HOME/go/bin"

bindkey -v 

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

source "$HOME/zsh/aliases"
source "$HOME/zsh/prompt"
source "$HOME/zsh/functions"

source "$HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
fpath=("$HOME/zsh/plugins/zsh-completions/src" $fpath)

autoload -U compinit; compinit
