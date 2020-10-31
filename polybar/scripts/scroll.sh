#!/bin/bash
#zscroll is required to run this script

zscroll -l 20 -d 0.1 -M "playerctl --player=playerctld status" -m "Playing" "-s 1" -m "Paused" "-s 0" -u true "/home/otaku619/.config/polybar/scripts/music.sh" &
wait
