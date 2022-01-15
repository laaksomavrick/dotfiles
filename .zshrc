export PATH=/opt/homebrew/bin:$PATH

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} $ '

# Version management for node
export PATH=/home/laaksom/.fnm:$PATH
eval "$(fnm env)"

# Git aliases
alias gst='git status'
alias gp='git push'
alias nvm=fnm

# Fuzzy searching
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Tab completion
autoload -Uz compinit && compinit
