if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

if [[ -d "$HOME/.local/share/mise/shims" ]]; then
  path=("$HOME/.local/share/mise/shims" $path)
fi

if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
fi

if command -v kubectl >/dev/null 2>&1; then
  source <(kubectl completion zsh)
fi

if command -v flux >/dev/null 2>&1; then
  source <(flux completion zsh)
fi

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
  alias cd="z"
fi

if command -v dagger >/dev/null 2>&1; then
  export DAGGER_NO_NAG=1
fi

if [[ -r "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi
