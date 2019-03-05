# visual
export TERM=xterm-256color

function cmd_exist() {
  return $(type $1>/dev/null 2>&1)
}

# env
case "$(uname)" in
	*'Darwin'*)	source $HOME/.bash/osx.bash		;;
	*'Linux'*) 	source $HOME/.bash/linux.bash	;;
esac

source $HOME/.bashrc

