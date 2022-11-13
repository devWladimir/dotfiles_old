#!/bin/bash

WINDOW_TITLE=$(yabai -m query --windows --window | jq -r '.app')

if [ "${WINDOW_TITLE}" = "" ] ; then
    sketchybar -m --set $NAME background.drawing=off label="${WINDOW_TITLE}"
else
    sketchybar -m --set $NAME background.drawing=on label="${WINDOW_TITLE}"
fi