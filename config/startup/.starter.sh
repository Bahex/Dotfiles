#!/bin/sh

# Get the path of starter script
sdir=`realpath $0`
sdir=${sdir%/*}

# Execute every file `ls` returns which means
# dotfiles (such as this one) won't be executed
for i in `ls $sdir`; do
	$sdir/$i
done
