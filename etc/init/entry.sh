echo "-> init/entry.sh running..."

case "$(uname)" in
	*'Darwin'*)	source $(dirname $0)/../depends/osx.bash		;;
	*'Linux'*) 	source $(dirname $0)/../depends/linux.bash	;;
esac

echo "<- init/entry.sh done"
