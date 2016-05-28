#!/bin/bash

[ ! "yes-please" == "$1" ] && echo "If you are sure write \"yes-please\" as the first argument." &&exit 1

INSDIR=$(realpath "$0")
INSDIR=${INSDIR%/*}

for file in config Xcompose xinitrc xprofile Xresources Xresources.d xserverrc zlogin zshrc; do
	ln -s ${INSDIR}/${file} ${HOME}/.${file} || echo "$INSDIR olmadı"
done
exit 0
