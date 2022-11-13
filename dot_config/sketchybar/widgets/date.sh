#!/usr/bin/env sh

sketchybar  -m  --add   item  date  "${WIDGETS_POSITION}" \
                --set   date                              \
                                                          \
                update_freq=60                            \
                icon=$ICON_DATE                           \
                icon.color=$DATE_COLOR                    \
                label.color=$DATE_COLOR                   \
                script="bash $PLUGINS_DIR/date.sh" 