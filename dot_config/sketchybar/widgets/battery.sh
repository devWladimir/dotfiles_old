#!/usr/bin/env sh

sketchybar  --add   item    battery  "${WIDGETS_POSITION}"        \
            --set   battery script="bash $PLUGINS_DIR/battery.sh" \
                                                                  \
            update_freq=1                                         \
                                                                  \
            --subscribe battery system_woke