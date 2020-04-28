#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-28 15:26:00 (UTC+0200)


function get_fip_titles () {
    while :; do
        lynx -dump https://www.fip.fr/rock/webradio | grep -A24 "En direct sur FIP Rock" | grep -v "* Pochette"  | sed 's/(BUTTON)/ /g'
        hr -
        sleep 10
    done
}

get_fip_titles
