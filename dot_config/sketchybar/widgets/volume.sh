#!/usr/bin/env sh

sketchybar  --add   item  sound "${WIDGETS_POSITION}" \
            --set   sound                             \
                                                      \
            update_freq=1                             \
            icon.color=$VOLUME_COLOR                  \
            label.color=$VOLUME_COLOR                 \
            script="bash $PLUGINS_DIR/volume.sh"