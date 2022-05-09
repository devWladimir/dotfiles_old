# Create folder and change dir
function mkcd() {
    mkdir -p "$@" && cd "$_";
}