
if [[ -d "$HOME/bin" && ! "$PATH" = *$HOME/bin* ]]; then
  export PATH="$HOME/bin:$PATH"
fi

