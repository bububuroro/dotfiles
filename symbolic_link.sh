#!/bin/bash

current=$(cd $(dirname $0) && pwd)
files=('.vimrc' '.zprofile' '.zshenv' '.zshrc' '.tmux.conf' '.xremap.conf' '.zshrc.local' '.vim/ftplugin/python.vim')

for file in ${files[@]}
do
  ln -fs $current/$file $HOME/$file
done
