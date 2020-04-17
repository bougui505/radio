#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier
# 2020-04-17 10:25:56 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"

function radio_menu () {
    cat $DIRSCRIPT/radio_list.txt =(echo "quit quit")\
        | fzf --tac --with-nth=1 \
        | awk '{print $2}'
}

while :; do
    RADIO_URL=$(radio_menu)
    if [[ $RADIO_URL != "quit" ]]; then
        mpv $RADIO_URL
    else;
        break
    fi
done
