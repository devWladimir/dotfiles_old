#!/usr/bin/env sh

sketchybar -m --add item memory "${WIDGETS_POSITION}"         \
              --set memory                                    \
                                                              \
              update_freq=1                                   \
              icon=$ICON_MEMORY                               \
              icon.color=$MEMORY_COLOR                        \
              label.color=$MEMORY_COLOR                       \
              script="$PLUGINS_DIR/memory.sh"