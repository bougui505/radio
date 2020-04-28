#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-28 21:49:02 (UTC+0200)

DIRSCRIPT="$(dirname "$(readlink -f "$0")")"
RADIO_TITLE=$1

if [[ $RADIO_TITLE == "fip" ]]; then; tmux split-window "$DIRSCRIPT/get_fip_titles.sh"; tmux select-pane -t 1; fi
if [[ $RADIO_TITLE == "fip-jazz" ]]; then; tmux split-window "$DIRSCRIPT/get_fipjazz_titles.sh"; tmux select-pane -t 1; fi
if [[ $RADIO_TITLE == "fip-rock" ]]; then; tmux split-window "$DIRSCRIPT/get_fiprock_titles.sh"; tmux select-pane -t 1; fi
if [[ $RADIO_TITLE == "fip-nouveauté" ]]; then; tmux split-window "$DIRSCRIPT/get_fipnouveaute_titles.sh"; tmux select-pane -t 1; fi
if [[ $RADIO_TITLE == "france-musique-jazz" ]]; then; tmux split-window "$DIRSCRIPT/get_francemusiquejazz_titles.sh"; tmux select-pane -t 1; fi
