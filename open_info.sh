#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-28 21:49:02 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"
RADIO_WEBSITE=$1

tmux split-window "w3m '$RADIO_WEBSITE'"
tmux select-pane -t 1
