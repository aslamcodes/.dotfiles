echo "
   █████╗ ███████╗██╗      █████╗ ███╗   ███╗ ██████╗ ██████╗ ██████╗ ███████╗███████╗
  ██╔══██╗██╔════╝██║     ██╔══██╗████╗ ████║██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔════╝
  ███████║███████╗██║     ███████║██╔████╔██║██║     ██║   ██║██║  ██║█████╗  ███████╗
  ██╔══██║╚════██║██║     ██╔══██║██║╚██╔╝██║██║     ██║   ██║██║  ██║██╔══╝  ╚════██║
  ██║  ██║███████║███████╗██║  ██║██║ ╚═╝ ██║╚██████╗╚██████╔╝██████╔╝███████╗███████║
  ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝
"
fastfetch

# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/mohamedaslam/.zsh/completions:"* ]]; then export FPATH="/Users/mohamedaslam/.zsh/completions:$FPATH"; fi
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"

export PATH=$PATH:/opt/homebrew/bin:$HOME/go/bin

bindkey -v 

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

source "$HOME/.config/zsh/aliases"
source "$HOME/.config/zsh/prompt"
source "$HOME/.config/zsh/functions"

source "$HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
fpath=("$HOME/.config/zsh/plugins/zsh-completions/src" $fpath)

autoload -U compinit; compinit -C

. "/Users/mohamedaslam/.deno/env"

# Enable Menu Selection
zstyle ':completion:*' menu select

# Enable Case-insensitive Completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Show Descriptions for Completions
zstyle ':completion:*' format '%B%d%b'

# Smarter Tab Completion with a List
zstyle ':completion:*' completer _complete _match _approximate

# Allow Completing Hidden Files (starting with .)
zstyle ':completion:*' special-dirs true

# Load History and Improve Command Recall
setopt HIST_IGNORE_ALL_DUPS HIST_SAVE_NO_DUPS

# Enable Command Auto-correction
setopt correct
