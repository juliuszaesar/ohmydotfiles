export LANG="${LANG:-en_US.UTF-8}"

if command -v nvim >/dev/null 2>&1; then
  export EDITOR="${EDITOR:-nvim}"
  export VISUAL="${VISUAL:-nvim}"
elif command -v vim >/dev/null 2>&1; then
  export EDITOR="${EDITOR:-vim}"
  export VISUAL="${VISUAL:-vim}"
else
  export EDITOR="${EDITOR:-vi}"
  export VISUAL="${VISUAL:-$EDITOR}"
fi

export PAGER="${PAGER:-less}"
export LESS="${LESS:--R}"

export STARSHIP_CONFIG="$HOME/.config/starship.toml"
export MISE_GLOBAL_CONFIG_FILE="$HOME/.config/mise/config.toml"
