if ! command -v starship >/dev/null 2>&1 && [[ -x "$HOME/.local/share/mise/shims/starship" ]]; then
  path=("$HOME/.local/share/mise/shims" $path)
fi

if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi
