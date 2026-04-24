typeset -U path PATH

path=(
  "$HOME/.local/bin"
  "$HOME/bin"
  "$HOME/go/bin"
  "$HOME/.cargo/bin"
  "$HOME/.dotnet/tools"
  $path
)

export PATH

