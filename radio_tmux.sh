#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-17 12:24:28 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"

tmux new-session -s radio $DIRSCRIPT/radio.sh
