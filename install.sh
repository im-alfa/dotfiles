#!/usr/bin/env bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v stow &> /dev/null; then
    echo "stow not installed"
    exit 1
fi

cd "$DOTFILES_DIR"

echo "Installing nvim"
stow -v -t "$HOME/.config/nvim" nvim

echo "Configs installed successfully!"