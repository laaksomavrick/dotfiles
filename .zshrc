ZSH_THEME="agnoster"

eval "$(fnm env)"
eval "$(rbenv init - zsh)"

alias gst='git status'
alias gp='git push'
alias nvm=fnm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
