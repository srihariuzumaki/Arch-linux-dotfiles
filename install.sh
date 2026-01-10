#!/bin/bash

set -e

echo "▶ Installing dotfiles..."

# Backup
mkdir -p ~/dotfiles-backup

for dir in hypr quickshell kitty matugen gtk-3.0 gtk-4.0 qt6ct fastfetch; do
  [ -e ~/.config/$dir ] && mv ~/.config/$dir ~/dotfiles-backup/
done

[ -f ~/.zshrc ] && mv ~/.zshrc ~/dotfiles-backup/

# Deploy
ln -s ~/dotfiles/config/* ~/.config/
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/scripts/* ~/.local/bin/

echo "✔ Done. Log out and log back in."
