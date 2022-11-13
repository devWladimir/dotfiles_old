#!/usr/bin/env sh

# Events
sketchybar	-m	--add	event	window_focus \
              	--add event title_change

# Window Title
sketchybar	-m	--add				item	title "${WIDGETS_POSITION}"																\
              	--set 			title 																													\
																																														\
								icon.drawing=off 																														\
								label.color=$COLOR_SPRING_WOOD 																							\
								label.padding_left=8 																												\
								label.padding_right=8 																											\
								label.font="$FONT:Bold:11.0"                        												\
								background.border_color=$COLOR_SPRING_WOOD 																	\
								background.border_width=1 																									\
								background.drawing=on 																											\
								background.height=24 																												\
								background.corner_radius=4                        													\
								script="$PLUGINS_DIR/title.sh" 														                  \
																																												 		\
              	--subscribe title window_focus front_app_switched space_change title_change