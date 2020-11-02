#!/bin/bash
#playerctl required to run this script
if [ "$(playerctl --player=playerctld status 2>/dev/null)" = "Stopped" ] || [ $(playerctl -l | wc -l) -eq 1 ]
then
    echo "No media playing"
elif [ "$(playerctl --player=playerctld status 2>/dev/null)" = "Paused" ]
then
    polybar-msg $(pgrep "polybar main") hook play 2 1>/dev/null 2>&1
    if [ -z "$(playerctl --player=playerctld metadata --format "{{artist}}" 2>/dev/null)" ]
    then
        playerctl --player=playerctld metadata --format "{{ title }}" 2>/dev/null
    else
        playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}" 2>/dev/null
    fi
else
    polybar-msg $(pgrep "polybar main") hook play 1 1>/dev/null 2>&1
    if [ -z "$(playerctl --player=playerctld metadata --format "{{artist}}" 2>/dev/null)" ]
    then
        playerctl --player=playerctld metadata --format "{{ title }}" 2>/dev/null
    else
        playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}" 2>/dev/null
    fi
fi
