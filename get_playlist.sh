#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-28 22:23:07 (UTC+0200)

URL=$1
# e.g.: https://fr-fr.radioline.co/ecouter-france-musique-la-jazz
wget -q -O - https://fr-fr.radioline.co/ecouter-france-musique-la-jazz | grep -E "trackName|peoplesTxt" | html2text
