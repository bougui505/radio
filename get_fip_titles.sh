#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-28 15:26:00 (UTC+0200)


function get_fip_titles () {
    while :; do
        lynx -dump https://www.fip.fr | tee  >(grep -i précédemment -A 8 | grep -v BUTTON | grep -v Pochette) >(grep "Écouter le direct" | sed 's/Écouter le direct//') > /dev/null
        hr -
        sleep 10
    done
}

get_fip_titles
