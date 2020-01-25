#!/bin/bash

workdir="$( cd "$(dirname "$0")" ; pwd -P )"

echo "installing fzf (https://github.com/junegunn/fzf) using homebrew"
brew install fzf

echo "copying .zshrc and antigen.zsh files in $HOME"
rm -f "$HOME/.zshrc"
rm -f "$HOME/antigen.zsh"
ln -s "$workdir/.zshrc" "$HOME/.zshrc"
ln -s "$workdir/antigen.zsh" "$HOME/antigen.zsh"
