#!/bin/bash

for dotfile in .bash_profile .gitconfig .gitignore
do
  rm -f ~/$dotfile
  ln -vnfs $PWD/$dotfile ~/$dotfile
done
