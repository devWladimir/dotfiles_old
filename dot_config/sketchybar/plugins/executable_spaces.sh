#!/usr/bin/env bash

source "$HOME/.config/sketchybar/colors.sh"

if [ "$SELECTED" == "true" ] 
then
  sketchybar --set "space.$SID" label.color=$SPACE_COLOR_ACTIVE label.background.color=$SPACE_BACKGROUND_ACTIVE
else
  sketchybar --set "space.$SID" label.color=$SPACE_COLOR label.background.color=$SPACE_BACKGROUND
fi