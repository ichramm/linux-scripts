#!/bin/bash

DIR=$(dirname $(readlink -f $0))

if [ "$1" = "-f" ]; then
  FORCE=f
fi

for dotfile in gdbinit gitconfig vimrc; do
  ln -vs$FORCE $DIR/$dotfile $HOME/.$dotfile
done

