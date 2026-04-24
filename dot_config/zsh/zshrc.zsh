# Core zsh config
source "$HOME/.config/zsh/options.zsh"
source "$HOME/.config/zsh/paths.zsh"
source "$HOME/.config/zsh/env.zsh"

# Interactive-only config
[[ -o interactive ]] || return

source "$HOME/.config/zsh/completion.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/functions.zsh"
source "$HOME/.config/zsh/keybindings.zsh"
source "$HOME/.config/zsh/tools.zsh"
source "$HOME/.config/zsh/prompt.zsh"

# Machine/container-specific config
case "$(uname -s)" in
  Darwin) source "$HOME/.config/zsh/machine/macos.zsh" ;;
  Linux)  source "$HOME/.config/zsh/machine/linux.zsh" ;;
esac

if grep -qi microsoft /proc/version 2>/dev/null; then
  source "$HOME/.config/zsh/machine/wsl.zsh"
fi

if [[ -f /.dockerenv || -n "$DEVCONTAINER" || -n "$CODESPACES" ]]; then
  source "$HOME/.config/zsh/machine/container.zsh"
fi

# Personal/private overrides last
[[ -f "$HOME/.config/zsh/local.zsh" ]] && source "$HOME/.config/zsh/local.zsh"
[[ -f "$HOME/.config/zsh/secrets.zsh" ]] && source "$HOME/.config/zsh/secrets.zsh"

# Syntax highlighting should load after other zsh integrations.
if [[ -r "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi
