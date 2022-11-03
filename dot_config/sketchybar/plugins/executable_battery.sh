#!/bin/bash

BACKGROUND="#282a36"
CURRENT_LINE="#44475a"
FOREGROUND="#f8f8f2"	
COMMENT="#6272a4"	
CYAN="#8be9fd"
GREEN="#50fa7b"
ORANGE="#ffb86c"	
PINK="#ff79c6"
PURPLE="#bd93f9"	
RED="#ff5555"
YELLOW="#f1fa8c"

# Dusk Fox (Rose Pine)

BACKGROUND="#232136"
FOREGROUND="#e0def4"
COLOR0="#393552"
COLOR1="#eb6f92"
COLOR2="#a3be8c"
COLOR3="#f6c177"
COLOR4="#569fba"
COLOR5="#c4a7e7"
COLOR6="#9ccfd8"
COLOR7="#e0def4"
COLOR8="#47407d"
COLOR9="#f083a2"
COLOR10="#b1d196"
COLOR11="#f9cb8c"
COLOR12="#65b1cd"
COLOR13="#ccb1ed"
COLOR14="#a6dae3"
COLOR15="#e2e0f7"

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep "AC Power")

if [[ $CHARGING != "" ]]; then
  sketchybar -m --set battery           \
    icon.color=0xFF${COLOR2:1}           \
    icon=                              \
    label=$(printf "${BATT_PERCENT}%%") 
  exit 0
fi
[[ "${BATT_PERCENT}" -gt 10 ]] && COLOR="0xFF${COLOR5:1}" || COLOR="0xFF${COLOR1:1}"
case ${BATT_PERCENT} in
   100) ICON="" ;;
    9[0-9]) ICON="" ;;
    8[0-9]) ICON="" ;;
    7[0-9]) ICON="" ;;
    6[0-9]) ICON="" ;;
    5[0-9]) ICON="" ;;
    4[0-9]) ICON="" ;;
    3[0-9]) ICON="" ;;
    2[0-9]) ICON="" ;;
    1[0-9]) ICON="" ;;
    *) ICON=""
esac
sketchybar -m --set battery           \
  icon.color="$COLOR"                 \
  icon="$ICON"                        \
  label=$(printf "${BATT_PERCENT}%%")
'

sketchybar -m --add item battery right                 \
              --set battery update_freq=3              \
              script="$BATTERY"                        \
              icon=""                                 \
              background.color="0x96${COLOR8:1}"       \
              background.corner_radius=4               \
              background.height=24                     \
              label.padding_right=15                   \
              label.padding_left=10                    \
              icon.padding_left=15                     \
              background.padding_left=15               \
              label.color="0xFF${COLOR3:1}"
              background.padding_right=-5