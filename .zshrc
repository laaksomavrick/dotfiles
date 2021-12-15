export PATH=/opt/homebrew/bin:$PATH

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} $ '

eval "$(fnm env)"

alias gst='git status'
alias gp='git push'
alias nvm=fnm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
