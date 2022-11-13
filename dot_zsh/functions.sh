# Create folders recursive and change directory
function mkdircd() {
    mkdir -p "$@" && cd "$_";
}

# Refresh yabai with all services
function workspace_restart() {
    brew services restart yabai && \
    brew services restart skhd && \
    skhd --reload && \
    brew services restart sketchybar
}

# Refresh title bar function in Ubersicht
function refresh_title_bar() {
    osascript -e 'tell application "Übersicht" to refresh widgets'
}