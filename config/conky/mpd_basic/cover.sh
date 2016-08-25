#!/bin/sh

MPD_MUSIC_PATH=~/Music
TMP_COVER_PATH="/tmp/mpd-track-cover"

ext_cvr(){
	exiftool -b -Picture "$MPD_MUSIC_PATH/`mpc --format "%file%" current`" > "$TMP_COVER_PATH"
}

mpc idleloop | while read i; do ext_cvr; done
