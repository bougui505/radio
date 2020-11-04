#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier
# 2020-04-17 10:25:56 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"

function radio_menu () {
    cat $DIRSCRIPT/radio_list.txt\
        | /home/bougui/source/fzf/bin/fzf --tac --with-nth=1
}

while :; do
    RADIO_CHOSEN=$(radio_menu)
    RADIO_URL=$(echo $RADIO_CHOSEN | awk '{print $2}')
    RADIO_TITLE=$(echo $RADIO_CHOSEN | awk '{print $1}')
    RADIO_WEBSITE=$(echo $RADIO_CHOSEN | awk '{print $3}')
    echo "Playing $RADIO_TITLE"
    if [[ $RADIO_URL != "quit" ]]; then
        # $DIRSCRIPT/open_info.sh $RADIO_WEBSITE
        # $DIRSCRIPT/refresh_info.sh &
        # REFRESHPID=$!
        mpv $RADIO_URL
        # kill $REFRESHPID
        # $DIRSCRIPT/close_info.sh
    else;
        break
    fi
done
