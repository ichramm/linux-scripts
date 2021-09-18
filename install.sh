#!/bin/bash

DIR="$(dirname "$(readlink -f "$0")")"

FORCE=
if [ "$1" = "-f" ]; then
  FORCE=f
fi

for dotfile in "$DIR"/dotfiles/*; do
  test -f "$dotfile" && ln -vs$FORCE "$dotfile" "$HOME/.$(basename "$dotfile")"
done

for file in "$DIR"/bin/*; do
  ln -vs$FORCE "$file" "$HOME/bin/$(basename "$file")"
done

