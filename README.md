# ohmydotfiles

Personal dotfiles managed with chezmoi.

This repo is set up as a hybrid of:

- Rio-style infrastructure: chezmoi, Dev Containers, DevPod/Codespaces readiness, mise, setup scripts.
- Omarchy-style shell organization: small zsh modules for options, paths, environment, aliases, functions, tools, prompt, and machine-specific settings.

## Layout

```text
.chezmoi.toml.tmpl
.chezmoiignore
.chezmoiexternals/
.chezmoiscripts/
.devcontainer/
dot_zshenv.tmpl
dot_zprofile.tmpl
dot_zshrc.tmpl
dot_bashrc.tmpl
dot_config/
private_dot_config/
scripts/
setup
```

## Bootstrap

From a fresh machine, after this folder is pushed to a git repo:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply YOUR_GITHUB_USER/ohmydotfiles
```

When working from a local checkout:

```sh
./setup
```

## Shell Flow

```text
~/.zshenv
  -> ~/.config/zsh/zshenv.zsh

~/.zprofile
  -> ~/.config/zsh/zprofile.zsh

~/.zshrc
  -> ~/.config/zsh/zshrc.zsh
       -> options.zsh
       -> paths.zsh
       -> env.zsh
       -> completion.zsh
       -> aliases.zsh
       -> functions.zsh
       -> keybindings.zsh
       -> tools.zsh
       -> prompt.zsh
       -> machine/*.zsh
       -> local.zsh
       -> secrets.zsh
```

## Upstream References

Useful remotes to add after `git init`:

```sh
git remote add rio https://github.com/rio/dotfiles.git
git remote add omarchy-zsh https://github.com/omacom-io/omarchy-zsh.git
```

Treat this repo as the source of truth. Cherry-pick only small infrastructure changes from Rio, and copy shell organization ideas from Omarchy manually when they make sense.
