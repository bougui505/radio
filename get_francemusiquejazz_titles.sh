#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-28 22:15:12 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"

while :; do
    $DIRSCRIPT/get_playlist.sh https://fr-fr.radioline.co/ecouter-france-musique-la-jazz/playlist-radio
    hr -
    sleep 10
done
