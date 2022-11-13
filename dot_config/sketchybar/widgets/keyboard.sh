#!/usr/bin/env sh

sketchybar  --add       event     input_change    'AppleSelectedInputSourcesChangedNotification'  \
            --add       item      keyboard "${WIDGETS_POSITION}"                                  \
            --set       keyboard  script="$PLUGINS_DIR/keyboard.sh"                               \
                                                                                                  \
            icon=$ICON_KEYBOARD                                                                   \
            icon.color=$KEYBOARD_COLOR                                                            \
            label.color=$KEYBOARD_COLOR                                                           \
                                                                                                  \
            --subscribe keyboard  input_change