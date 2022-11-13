#!/usr/bin/env sh

sketchybar -m --add item cpu "${WIDGETS_POSITION}" \
              --set cpu                            \
                                                   \
              update_freq=1                        \
              icon=$ICON_CPU                       \
              icon.color=$CPU_COLOR                \
              label.color=$CPU_COLOR               \
              script="$PLUGINS_DIR/cpu.sh"