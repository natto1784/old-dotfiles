#!/bin/bash
#playerctl required to run this script
if [ "$(playerctl --player=playerctld status)" = "Stopped" ]
then
    echo "hi"
elif [ "$(playerctl --player=playerctld status)" = "Paused" ]
then
    polybar-msg $(pgrep "polybar main") hook play 2 1>/dev/null 2>&1
    if [ -z "$(playerctl --player=playerctld metadata --format "{{artist}}")" ]
    then
        playerctl --player=playerctld metadata --format "{{ artist }}"
    else
        playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
    fi
else
    polybar-msg $(pgrep "polybar main") hook play 1 1>/dev/null 2>&1
    if [ -z "$(playerctl --player=playerctld metadata --format "{{artist}}")" ]
    then
        playerctl --player=playerctld metadata --format "{{ title }}"
    else
        playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
    fi
fi
