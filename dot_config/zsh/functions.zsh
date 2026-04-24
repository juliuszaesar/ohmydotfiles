mkcd() {
  mkdir -p "$1" && cd "$1"
}

take() {
  mkdir -p "$1" && cd "$1"
}

devpod-rebuild() {
  devpod delete . --force
  devpod up .
}

path-prepend() {
  [[ -d "$1" ]] || return 0
  path=("$1" $path)
}

