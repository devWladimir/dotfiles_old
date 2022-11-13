#!/usr/bin/env sh

source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
SSID="$(echo "$CURRENT_WIFI" | grep -o " SSID: .*" | sed 's/^ SSID: //')"

if [ "$CURRENT_WIFI" = "AirPort: Off" ]; then
  sketchybar --set $NAME label="Disabled" icon=$ICON_WIFI_DISCONECTED
elif [ "$SSID" = "" ]; then
  sketchybar --set $NAME label="Searching..." icon=$ICON_WIFI_DISCONECTED
else
  sketchybar --set $NAME label="$SSID" icon=$ICON_WIFI
fi