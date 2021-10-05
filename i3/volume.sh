#!/bin/bash
[ $1 == "up" ] && [ `amixer sget Master | grep "Front Left:" | cut -d "[" -f 2 | cut -d "%" -f 1` -lt 100 ] && amixer -q sset Master 10%+ 
[ $1 == "down" ] && [ `amixer sget Master | grep "Front Left:" | cut -d "[" -f 2 | cut -d "%" -f 1` -gt 0 ] && amixer -q sset Master 10%- 
[ $1 == "mute" ] && amixer -q sset Master 0% 
