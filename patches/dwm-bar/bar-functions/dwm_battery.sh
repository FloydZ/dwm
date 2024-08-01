#!/usr/bin/env sh

# A dwm_bar function to read the battery level and status
# GNU GPLv3

dwm_battery () {
    printf "%s" "$SEP1"
	if [ ! -f /sys/class/power_supply/BAT*/capacity ]; then
		printf "🔌"
	else	
       CHARGE=$(cat /sys/class/power_supply/BAT*/capacity)
       STATUS=$(cat /sys/class/power_supply/BAT*/status)

       if [ "$IDENTIFIER" = "unicode" ]; then
           if [ "$STATUS" = "Charging" ]; then
               printf "🔌 %s%% %s" "$CHARGE" "$STATUS"
           else
               printf "🔋 %s%% %s" "$CHARGE" "$STATUS"
           fi
       else
           printf "BAT %s%% %s" "$CHARGE" "$STATUS"
       fi
	fi

    printf "%s\n" "$SEP2"
}

dwm_battery

