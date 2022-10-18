# Create folders recursive and change directory
function mkdircd() {
    mkdir -p "$@" && cd "$_";
}
