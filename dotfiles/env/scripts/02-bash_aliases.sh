# vim:set filetype=sh:

# the prime alias
alias vi='vim'

# very dangerous
# alias sed='sed --follow-symlinks'

alias   gdf="git diff -w"
alias  gdfs="git diff --shortstat"
alias   gci="git commit"
alias  gcia="git commit -a"
alias   gst="git status"
alias   gls="git ls"
alias  glsd="git lsd"
alias  glol="git lol"
alias glola="git lola"
alias gpull='echo ":git stash" && git stash && echo ":git pull" && git pull && echo ":git stash pop" && git stash pop'

alias ls='$(which ls) -h --group-directories-first --time-style=+"%Y-%m-%d %H:%M" -F --color=auto'
alias l='ls -l'
alias ll='ls -Al'

alias grep="grep --color=tty -d skip"

alias df="$(which df) -h"
alias du="$(which du) -h"
# free: Multiple unit options doesn't make sense. (when passing another unit)
# alias free="$(which free) -m"

# check command after sudo for alias expansion (not needed anymore)
# complete -cf sudo
# alias sudo="$(which sudo) "

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Networking

# my custom rdp client (old)
# alias rdp="~/Dropbox/linux/rdp/launch.sh"

alias routes='ip route show'
alias sockets='netstat -aep'
#alias pacman='pacman --color=always'
#alias gw='./gradlew'


alias build-id-core='eu-unstrip -n --core'
alias build-id-elf='readelf -n'
alias dissasemble='objdump -d'
alias list-symbols='nm'
