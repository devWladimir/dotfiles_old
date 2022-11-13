#!/usr/bin/env sh

source "$HOME/.config/sketchybar/colors.sh"

USAGE_MEMORY=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%02.0f\n", 100-$5"%") }')
USAGE_MEMORY_COLOR=$MEMORY_COLOR

if [[ $USAGE_MEMORY > 89 ]] ; then
  USAGE_MEMORY_COLOR=$MEMORY_DANGER_COLOR
fi

sketchybar -m --set memory                    \
              icon.color=$USAGE_MEMORY_COLOR  \
              label="${USAGE_MEMORY}%"        \
              label.color=$USAGE_MEMORY_COLOR