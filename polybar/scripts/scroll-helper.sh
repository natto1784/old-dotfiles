#!/bin/bash
if [ $(playerctl -l | wc -l) -eq 1 ];then
    echo 0
else
    echo $(playerctl --player=playerctld status)
fi
