#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

BATTERY_PERCENT_STATUS=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
BATTERY_IS_CHARGING=$(pmset -g batt | grep "AC Power")
BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR


if [ "$BATTERY_IS_CHARGING" != "" ] ; then
  sketchybar  -m  --set   battery                               \
                  icon=$ICON_BATTERY_CHARGE                     \
                  icon.color=$BATTERY_CHARGE_COLOR              \
                  label=$(printf "${BATTERY_PERCENT_STATUS}%%") \
                  label.color=$BATTERY_CHARGE_COLOR
else
  case ${BATTERY_PERCENT_STATUS} in
    100)
      ICON="${ICON_BATTERY_100}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    9[0-9])
      ICON="${ICON_BATTERY_100}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    8[0-9])
      ICON="${ICON_BATTERY_75}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    7[0-9])
      ICON="${ICON_BATTERY_75}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    6[0-9])
      ICON="${ICON_BATTERY_50}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    5[0-9])
      ICON="${ICON_BATTERY_50}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    4[0-9])
      ICON="${ICON_BATTERY_50}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    3[0-9])
      ICON="${ICON_BATTERY_25}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
      ;;
    2[0-9])
      ICON="${ICON_BATTERY_25}"
      BATTERY_STATUS_COLOR=$BATTERY_DISCHARGED_COLOR
      ;;
    1[0-9])
      ICON="$ICON_BATTERY_25"
      BATTERY_STATUS_COLOR=$BATTERY_DISCHARGED_COLOR
      ;;
    [0-9])
      ICON="${ICON_BATTERY_0}"
      BATTERY_STATUS_COLOR=$BATTERY_DISCHARGED_COLOR
      ;;
    *)
      ICON="${ICON_BATTERY_100}"
      BATTERY_STATUS_COLOR=$BATTERY_CHARGE_COLOR
  esac

  sketchybar  -m  --set   battery                               \
                  icon="$ICON"                                  \
                  icon.color=$BATTERY_STATUS_COLOR              \
                  label=$(printf "${BATTERY_PERCENT_STATUS}%%") \
                  label.color=$BATTERY_STATUS_COLOR
fi