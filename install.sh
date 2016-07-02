#!/bin/bash

[ ! "please" == "$1" ] && echo -e "This script is potentially destructive.\nIf you are sure write \"$0 please\"" && exit 1

INSDIR=$(realpath "$0")
INSDIR=${INSDIR%/*}

for file in config vim zshenv; do
	if [ -e ~/.${file} ]; then
		echo "\"~/.${file}\" already exists. Your copy has been moved to ~/.${file}_"
		mv ~/.${file} ~/.${file}_
	fi
	ln -s ${INSDIR}/${file} ~/.${file}
done

exit 0
