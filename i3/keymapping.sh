#!/bin/bash
xset r rate 250 25
setxkbmap -layout us,us -variant colemak, -option grp:win_space_toggle
xmodmap -e 'keycode 108 = Alt_L'
xmodmap -e "keycode 66 = BackSpace"
