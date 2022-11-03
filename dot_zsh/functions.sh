# Create folders recursive and change directory
function mkdircd() {
    mkdir -p "$@" && cd "$_";
}

# Refresh yabai with all services
function yabai_refresh() {
    dot apply && \
    brew services restart yabai && \
    brew services restart skhd && \
    skhd --reload && \
    osascript -e 'tell application "Übersicht" to refresh widgets' && \
    sleep 5 && \
    sudo yabai --load-sa
}

# Refresh title bar function in Ubersicht
function refresh_title_bar() {
    osascript -e 'tell application "Übersicht" to refresh widgets'
}