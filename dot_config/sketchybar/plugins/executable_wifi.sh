#!/usr/bin/env sh

CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
SSID="$(echo "$CURRENT_WIFI" | grep -o " SSID: .*" | sed 's/^ SSID: //')"

if [ "$CURRENT_WIFI" = "AirPort: Off" ]; then
    sketchybar --set $NAME label="Disabled" icon=睊
elif [ "$SSID" = "" ]; then
    sketchybar --set $NAME label="Searching..." icon=睊
else
    sketchybar --set $NAME label="$SSID" icon=直
fi