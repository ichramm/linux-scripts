
ulimit -c unlimited

# hack for monodevelop
#export OXYGEN_DISABLE_INNER_SHADOWS_HACK=1;

# for longclaw
export MAKEOPTS="-j2"

# keep bash history in sync
#export PROMPT_COMMAND="history -n; history -a"

# VIM, of course
export EDITOR=vim
export VISUAL=vim
export GIT_EDITOR=$EDITOR

export GIT_PS1_SHOWDIRTYSTATE=1

#txtblk='\[\e[0;30m\]' # Black - Regular
#txtred='\[\e[0;31m\]' # Red
#txtgrn='\[\e[0;32m\]' # Green
#txtylw='\[\e[0;33m\]' # Yellow
#txtblu='\[\e[0;34m\]' # Blue
#txtpur='\[\e[0;35m\]' # Purple
#txtcyn='\[\e[0;36m\]' # Cyan
#txtwht='\[\e[0;37m\]' # White
#bldblk='\[\e[1;30m\]' # Black - Bold
#bldred='\[\e[1;31m\]' # Red
#bldgrn='\[\e[1;32m\]' # Green
#bldylw='\[\e[1;33m\]' # Yellow
#bldblu='\[\e[1;34m\]' # Blue
#bldpur='\[\e[1;35m\]' # Purple
#bldcyn='\[\e[1;36m\]' # Cyan
#bldwht='\[\e[1;37m\]' # White
#unkblk='\[\e[4;30m\]' # Black - Underline
#undred='\[\e[4;31m\]' # Red
#undgrn='\[\e[4;32m\]' # Green
#undylw='\[\e[4;33m\]' # Yellow
#undblu='\[\e[4;34m\]' # Blue
#undpur='\[\e[4;35m\]' # Purple
#undcyn='\[\e[4;36m\]' # Cyan
#undwht='\[\e[4;37m\]' # White
#bakblk='\[\e[40m\]'   # Black - Background
#bakred='\[\e[41m\]'   # Red
#badgrn='\[\e[42m\]'   # Green
#bakylw='\[\e[43m\]'   # Yellow
#bakblu='\[\e[44m\]'   # Blue
#bakpur='\[\e[45m\]'   # Purple
#bakcyn='\[\e[46m\]'   # Cyan
#bakwht='\[\e[47m\]'   # White
#txtrst='\[\e[0m\]'    # Text Reset

#unset color_prompt yes

export WINEARCH=win32

case $HOSTNAME in
	wilderkrieger) # lenovo intraway
		PS1='[\[\e[0;32m\]\D{%a, %d %b %T}\[\e[0m\]][\[\e[0;32m\]\u@\h\[\e[0m\]][\[\e[1;34m\]\w\[\e[0m\]]\[\e[1;32m\]`__git_ps1`\[\e[0m\]\n\$ ';
		;;
	notparallel)
		PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[1;32m\]`__git_ps1 " (%s)"`\[\e[0m\]\n\$ '
		;;
#	*)
#		PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[1;31m\]\h\[\e[0m\]:\[\e[1;34m\]\W\[\e[1;32m\]`__git_ps1`\[\e[0m\]\$ '
#		;;
esac

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
