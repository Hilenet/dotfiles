echo "-> init/entry.sh running..."

case "$(uname)" in
	*'Darwin'*)	source $(dirname $0)/../osx/init.sh		;;
	*'Linux'*) 	source $(dirname $0)/../linux/init.sh	;;
esac

echo "<- init/entry.sh done"
