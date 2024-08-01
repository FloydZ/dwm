#!/usr/bin/env sh

# A dwm_bar module to display the current backlight brighness with xbacklight
# GNU GPLv3

# Dependencies: xbacklight

dwm_backlight () {
	if  command -v xbacklight &> /dev/null
    then
        printf "%s☀ %.0f%s\n" "$SEP1" "$(xbacklight)" "$SEP2"
        exit 1
    fi
}

dwm_backlight
