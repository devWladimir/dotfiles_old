#!/usr/bin/env bash

source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [[ $MUTED != "false" ]]; then
  ICON="${ICON_SPEAKER_OFF}"
else
  case ${VOLUME} in
    100)
      ICON="${ICON_SPEAKER_HIGHT}"
      ;;
    9[0-9])
      ICON="${ICON_SPEAKER_HIGHT}"
      ;;
    8[0-9])
      ICON="${ICON_SPEAKER_HIGHT}"
      ;;
    7[0-9])
      ICON="${ICON_SPEAKER_MEDIUM}"
      ;;
    6[0-9])
      ICON="${ICON_SPEAKER_MEDIUM}"
      ;;
    5[0-9])
      ICON="${ICON_SPEAKER_MEDIUM}"
      ;;
    4[0-9])
      ICON="${ICON_SPEAKER_MEDIUM}"
      ;;
    3[0-9])
      ICON="${ICON_SPEAKER_LOW}"
      ;;
    2[0-9])
      ICON="${ICON_SPEAKER_LOW}"
      ;;
    1[0-9])
      ICON="${ICON_SPEAKER_LOW}"
      ;;
    [0-9])
      ICON="${ICON_SPEAKER_LOW}"
      ;;
    *)
      ICON="${ICON_SPEAKER}"
  esac
fi

sketchybar -m --set $NAME icon=$ICON --set $NAME label="$VOLUME%"