if [[ -d /opt/homebrew/bin ]]; then
  path=("/opt/homebrew/bin" "/opt/homebrew/sbin" $path)
fi

if [[ -d /usr/local/bin ]]; then
  path=("/usr/local/bin" $path)
fi

