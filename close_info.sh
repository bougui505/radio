#!/usr/bin/env zsh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-04-28 21:52:34 (UTC+0200)

RADIO_TITLE=$1

if [[ $RADIO_TITLE == "fip" ]]; then tmux kill-pane -a -t 1; fi
if [[ $RADIO_TITLE == "fip-jazz" ]]; then tmux kill-pane -a -t 1; fi
if [[ $RADIO_TITLE == "fip-rock" ]]; then tmux kill-pane -a -t 1; fi
if [[ $RADIO_TITLE == "fip-nouveauté" ]]; then tmux kill-pane -a -t 1; fi
