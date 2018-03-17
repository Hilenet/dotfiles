echo "-> init/entry.sh running..."

case "$(uname)" in
	*'Darwin'*)	source $(dirname $0)/../depends/osx.sh		;;
	*'Linux'*) 	source $(dirname $0)/../depends/linux.sh	;;
esac

echo "<- init/entry.sh done"
