#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier
# 2020-04-17 10:25:56 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"

function radio_menu () {
    cat $DIRSCRIPT/radio_list.txt =(echo "quit quit")\
        | fzf --tac --with-nth=1
}

function get_fip_titles () {
    lynx -dump https://www.fip.fr | tee  >(grep -i précédemment -A 8 | grep -v BUTTON | grep -v Pochette) >(grep "Écouter le direct" | sed 's/Écouter le direct//') > /dev/null
}

while :; do
    RADIO_CHOSEN=$(radio_menu)
    RADIO_URL=$(echo $RADIO_CHOSEN | awk '{print $2}')
    RADIO_TITLE=$(echo $RADIO_CHOSEN | awk '{print $1}')
    echo "Playing $RADIO_TITLE"
    if [[ $RADIO_URL != "quit" ]]; then
        mpv $RADIO_URL
    else;
        break
    fi
done
