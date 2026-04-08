#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$HOME/dotfiles"

if [[ ! -d "$DOTFILES" ]]; then
  echo "Error: $DOTFILES not found" >&2
  exit 1
fi

cd "$DOTFILES"

# XDG configs → ~/.config/
stow .

# zsh → ~/
ln -sf "$HOME/.config/zshrc/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/.config/zshenv/.zshenv" "$HOME/.zshenv"
