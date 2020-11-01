#!/bin/bash
#zscroll is required to run this script

zscroll -l 20 -d 0.1 -M "/home/otaku619/.config/polybar/scripts/scroll-helper.sh" -m "0" "-s 0" -m "Playing" "-s 1" -m "Paused" "-s 0" -u true "/home/otaku619/.config/polybar/scripts/music.sh" &
wait
