# visual
export TERM=xterm-256color

# use
alias ls="ls -G"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"

alias gti=git
alias emacs=vim

# git
source $HOME/.bash/.git-completion

case "$(uname)" in
	*'Darwin'*)	source $HOME/.bash/osx.bash		;;
	*'Linux'*) 	source $HOME/.bash/linux.bash	;;
esac
