#!/usr/bin/env sh

sketchybar  --add   item  wifi  "${WIDGETS_POSITION}" \
            --set   wifi                              \
                                                      \
            update_freq=5                             \
            icon.color=$WIFI_COLOR                    \
            label.color=$WIFI_COLOR                   \
            script="bash $PLUGINS_DIR/wifi.sh"