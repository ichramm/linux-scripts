#!/bin/bash

if test -f "/usr/share/gtksourceview-4/language-specs/clojure.lang"; then
  exit 0
fi

curl https://raw.githubusercontent.com/mattfenwick/gedit-clojure/master/clojure.lang |
  sudo tee "/usr/share/gtksourceview-4/language-specs/clojure.lang"

