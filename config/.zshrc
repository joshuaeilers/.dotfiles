# homebrew

eval "$(/opt/homebrew/bin/brew shellenv)"

# grep

export GREP_OPTIONS='--color=auto'

# alias

alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vimdiff='nvim -d'
alias tmux='tmux -2'
alias ls='ls -G'

# history

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export LESSHISTFILE="-"

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# editor

export EDITOR=nvim
export KEYTIMEOUT=1
bindkey -v
bindkey "^R" history-incremental-search-backward

# fzf

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# powerline

export POWERLINE_LOCATION=/opt/homebrew/lib/python3.10/site-packages/powerline
powerline-daemon -q
source $POWERLINE_LOCATION/bindings/zsh/powerline.zsh

# completion

autoload -Uz compinit && compinit
_comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
