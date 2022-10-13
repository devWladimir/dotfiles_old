#!/bin/bash
set -u

# Terminal colors
terminal_color_clear='\033[0m'
terminal_color_red='\033[1;31m'
terminal_color_green='\033[1;32m'
terminal_color_yellow='\033[1;33m'

# Abort script
abort() {
    printf "%s\n" "$@"
    exit 1
}

# Default message
echo_default() {
    echo -e "${terminal_color_clear}$1${terminal_color_clear}"
    sleep 2
}
 
# Green color message
echo_success() {
    echo -e "${terminal_color_green}$1${terminal_color_clear}"
    sleep 2
}
 
# Yellow color message
echo_warning() {
    echo -e "${terminal_color_yellow}$1${terminal_color_clear}"
    sleep 2
}
 
# Red color message
echo_error() {
    echo -e "${terminal_color_red}$1${terminal_color_clear}"
    sleep 2
}

# Checking installed bash in OS
check_bash() {
    if [ -z "${BASH_VERSION:-}" ]
    then
        echo_error "🌩 Bash is required to interpret this script."
    fi
}

# Confirm / Abort install
confirm_install() {
    echo_default ""
    echo_default "🔥 This script will install [Xcode Command Line Tools, Homebrew and Chezmoi.io]"
    read -n 1 -r -s -p $'    Press any key to continue or Control+C to abort...\n\n'
}

# Install Xcode Command Line Tools
function install_command_line_tools() {
    echo_default "⚡️ Looking for Xcode Command Line Tools..."

    if ! [ $(xcode-select -p) ]; then
        echo_error "🌩 You do not have the Xcode Command Line Tools."
        echo_warning "⚡️ Installing Xcode Command Line Tools..."

        xcode-select --install
        sudo xcodebuild -license accept

        echo_success "☀️ Xcode Command line Tools successfully installed, so go to next step..."
    else
        echo_success "☀️ Xcode Command Line Tools are already installed, so skipping to next step..."
    fi
}

# Install Homebrew
function install_homebrew() {
    echo_default "⚡️ Looking for Homebrew..."

    if test ! $(which brew); then
        echo_error "🧨 You do not have the Homebrew."
        echo_warning "⚡️ Installing Homebrew..."

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    

        echo_success "☀️ Homebrew successfully installed, so go to next step..."
    else
        echo_success "☀️ Homebrew already installed, so skipping to next step..."
    fi
}


# Install Chezmoi.io 
function install_chezmoi() {
    echo_default "⚡️ Looking for Chezmoi..."

    if test ! $(which chezmoi); then
        echo_error "🧨 You do not have the Chezmoi."
        echo_warning "⚡️ Installing Chezmoi..."

        brew install chezmoi

        echo_success "☀️ Chezmoi successfully installed, so go to next step..."
    else
        echo_success "👌 Cezmoi already installed, so skipping to next step..."
    fi
}


# Process installing
check_bash
confirm_install
install_command_line_tools
install_homebrew
install_chezmoi

# Success messsage
echo ""
echo "🤘🤘🤘 Done! 🤘🤘🤘"