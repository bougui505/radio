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
        if [[ $RADIO_TITLE == "fip" ]]; then
            tmux split-window "$DIRSCRIPT/get_fip_titles.sh"
            tmux select-pane -t 1
        fi
        mpv $RADIO_URL
        if [[ $RADIO_TITLE == "fip" ]]; then tmux kill-pane -a -t 1; fi
    else;
        break
    fi
done
