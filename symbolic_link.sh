#!/bin/bash

current=$(cd $(dirname $0) && pwd)
files=('.vim/indent' '.vimrc' '.zprofile' '.zshenv' '.zshrc' '.tmux.conf' '.xremap.conf' '.zshrc.local' '.x-set-keys.conf')

for file in ${files[@]}
do
  ln -fs $current/$file $HOME/$file
done
