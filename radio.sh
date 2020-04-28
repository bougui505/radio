#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier
# 2020-04-17 10:25:56 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"

function radio_menu () {
    cat $DIRSCRIPT/radio_list.txt =(echo "quit quit")\
        | fzf --tac --with-nth=1
}

while :; do
    RADIO_CHOSEN=$(radio_menu)
    RADIO_URL=$(echo $RADIO_CHOSEN | awk '{print $2}')
    RADIO_TITLE=$(echo $RADIO_CHOSEN | awk '{print $1}')
    echo "Playing $RADIO_TITLE"
    if [[ $RADIO_URL != "quit" ]]; then
        $DIRSCRIPT/open_info.sh $RADIO_TITLE
        mpv $RADIO_URL
        $DIRSCRIPT/close_info.sh $RADIO_TITLE
    else;
        break
    fi
done
