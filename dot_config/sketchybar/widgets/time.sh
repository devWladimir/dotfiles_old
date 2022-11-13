#!/usr/bin/env bash

sketchybar  -m  --add item time "${WIDGETS_POSITION}" \
                --set time                            \
                update_freq=10                        \
                icon=$ICON_CLOCK                      \
                icon.color=$TIME_COLOR                \
                label.color=$TIME_COLOR               \
                script="bash $PLUGINS_DIR/time.sh" 