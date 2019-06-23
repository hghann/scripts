#!/usr/bin/env sh
# Quickly search cheat.sh dependint on 
# the inserted file type (used in my vimrc)
file=$(readlink -f "$1")
dir=$(dirname "$file")
# base="${file%.*}"
# shebang=$(sed -n 1p "$file")
keyword=$2
cd "$dir" || exit

# shebangtest() {
# 	case "$shebang" in
# 		\#\!bash*) curl cheat.sh/bash/$2;;
# 		*) sent "$file" 2>/dev/null & ;;
# 	esac
# }

case "$file" in
	*\.tex) curl cheat.sh/latex/"$keyword";;
        *\.c) curl cheat.sh/c/"$keyword";;
	*\.h)  curl cheat.sh/c/"$keyword";;
	*\.py)  curl cheat.sh/python/"$keyword";;
	*\.go) curl cheat.sh/go/"$keyword";;
	*\.vimrc) curl cheat.sh/vim/"$keyword";;
	*) curl cheat.sh/"$*";;
esac