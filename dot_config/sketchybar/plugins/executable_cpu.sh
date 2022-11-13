#!/usr/bin/env bash

source "$HOME/.config/sketchybar/colors.sh"

CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
CPU_INFO=$(ps -eo pcpu,user)
CPU_SYS=$(echo "$CPU_INFO" | grep -v $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU_USER=$(echo "$CPU_INFO" | grep $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU_PERCENT=$(echo "$CPU_SYS $CPU_USER" | awk '{ printf("%02.0f\n", ($1 + $2)*100) }')
CPU_USAGE_COLOR=$CPU_COLOR

if [[ $CPU_PERCENT > 95 ]] ; then
  CPU_USAGE_COLOR=$CPU_DANGER_COLOR
fi

sketchybar -m --set cpu                    \
              icon.color=$CPU_USAGE_COLOR  \
              label="${CPU_PERCENT}%"      \
              label.color=$CPU_USAGE_COLOR