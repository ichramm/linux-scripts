
ulimit -c unlimited

# For recursive filesystem ops using **/*
shopt -s globstar

# for longclaw
export MAKEOPTS="-j2"

# keep bash history in sync
#export PROMPT_COMMAND="history -n; history -a"

# VIM, of course
export EDITOR=vim
export VISUAL=vim
export GIT_EDITOR=$EDITOR

# ex - archive extractor
# usage: ex <file>
function ex ()
{
	if [ -f "$1" ] ; then
		case "$1" in
			*.tar.bz2) tar xjf "$1"   ;;
			*.tar.gz)  tar xzf "$1"   ;;
			*.tar.xz)  tar xJf "$1"   ;;
			*.bz2)     bunzip2 "$1"   ;;
			*.gz)      gunzip "$1"    ;;
			*.xz)      unxz "$1" | tar xf -;;
			*.rar)     unrar x "$1"   ;;
			*.tar)     tar xf "$1"    ;;
			*.tbz2)    tar xjf "$1"   ;;
			*.tgz)     tar xzf "$1"   ;;
			*.zip)     unzip "$1"     ;;
			*.Z)       uncompress $1;;
			*.7z)      7z x "$1"      ;;
			*)         echo "'$1' cannot be extracted via ex()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

