#!/bin/bash

files=('.vimrc' '.zprofile' '.zshenv' '.zshrc' '.tmux.conf')

for file in ${files[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done
