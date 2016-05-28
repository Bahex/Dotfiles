#!/bin/bash

[ ! "yes-please" == "$1" ] && exit 1

INSDIR=$(realpath "$0")
INSDIR=${INSDIR%/*}

for file in config Xcompose xinitrc xprofile Xresources Xresources.d xserverrc zlogin zshrc; do
	ln -s ${INSDIR}/${file} ${HOME}/.${file}
done
exit 0
