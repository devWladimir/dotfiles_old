#!/usr/bin/env sh

SPACE_ICONS=("web" "code" "terminal" "SQL" "music" "other" "7" "8" "9" "10")

for i in "${!SPACE_ICONS[@]}"; do
  sid=$(($i+1))
  sketchybar  --add space       space.$sid "${WIDGETS_POSITION}"                        \
              --set space.$sid  associated_space=$sid                                   \
                                label="${SPACE_ICONS[$i]}"                              \
                                label.color=$SPACE_COLOR                                \
                                label.align=center                                      \
                                label.background.drawing=on                             \
                                label.padding_left=10                                   \
                                label.padding_right=10                                  \
                                label.background.height=28                              \
                                label.background.color=$SPACE_BACKGROUND                \
                                label.font="$FONT:SemiBold:11.0"                        \
                                label.background.corner_radius=4                        \
                                icon.drawing=off                                        \
                                background.padding_left=3                               \
                                background.padding_right=3                              \
                                background.drawing=off                                  \
                                script="$PLUGINS_DIR/spaces.sh"                         \
                                click_script="yabai -m space --focus \$SID 2>/dev/null"
done