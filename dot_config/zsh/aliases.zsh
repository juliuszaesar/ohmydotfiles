if command -v lsd >/dev/null 2>&1; then
  alias ls="lsd"
  alias ll="ls -lgh"
  alias la="ls -a"
  alias lla="ls -lgha"
  alias lt="ls --tree"
else
  alias ll="ls -lah"
  alias la="ls -A"
  alias l="ls -CF"
fi

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"
alias gco="git checkout"
alias gb="git branch"

command -v kubectl >/dev/null 2>&1 && alias k="kubectl"
alias d="docker"
alias dc="docker compose"

if command -v bat >/dev/null 2>&1; then
  alias cat="bat"
elif command -v batcat >/dev/null 2>&1; then
  alias cat="batcat"
fi

alias reload="source ~/.zshrc"
alias zshconfig="$EDITOR ~/.config/zsh"
