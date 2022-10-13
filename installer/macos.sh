#!/bin/bash
set -u

# Sleep after message
sleepMessage = 2

# Terminal colors
terminalColorClear='\033[0m'
terminalColorRed='\033[1;31m'
terminalColorGreen='\033[1;32m'
terminalColorYellow='\033[1;33m'

# Abort script
abort() {
    printf "%s\n" "$@"
    exit 1
}

# Default message
echoDefault() {
    echo -e "${terminalColorClear}$1${terminalColorClear}"
    sleep $sleepMessage
}
 
# Green color message
echoSuccess() {
    echo -e "${terminalColorGreen}$1${terminalColorClear}"
    sleep $sleepMessage
}
 
# Yellow color message
echoWarning() {
    echo -e "${terminalColorYellow}$1${terminalColorClear}"
    sleep $sleepMessage
}
 
# Red color message
echoError() {
    echo -e "${terminalColorRed}$1${terminalColorClear}"
    sleep $sleepMessage
}

# Checking installed bash in OS
checkBash() {
    if [ -z "${BASH_VERSION:-}" ]
    then
        echoError "🌩 Bash is required to interpret this script."
    fi
}

# Confirm / Abort install
confirmInstall() {
    echoDefault ""
    echoDefault "🔥 This script will install [Xcode Command Line Tools, Homebrew and Chezmoi.io]"
    read -n 1 -r -s -p $'    Press any key to continue or Control+C to abort...\n\n'
}

# Install Xcode Command Line Tools
function isntallCommadLineTools() {
    echoDefault "⚡️ Looking for Xcode Command Line Tools..."

    if ! [ $(xcode-select -p) ]; then
        echoError "🌩 You do not have the Xcode Command Line Tools."
        echoWarning "⚡️ Installing Xcode Command Line Tools..."

        xcode-select --install
        sudo xcodebuild -license accept

        echoSuccess "☀️ Xcode Command line Tools successfully installed, so go to next step..."
    else
        echoSuccess "☀️ Xcode Command Line Tools are already installed, so skipping to next step..."
    fi
}

# Install Homebrew
function installHomebrew() {
    echoDefault "⚡️ Looking for Homebrew..."

    if test ! $(which brew); then
        echoError "🧨 You do not have the Homebrew."
        echoWarning "⚡️ Installing Homebrew..."

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    

        echoSuccess "☀️ Homebrew successfully installed, so go to next step..."
    else
        echoSuccess "☀️ Homebrew already installed, so skipping to next step..."
    fi
}


# Install Chezmoi.io 
function installChezmoi() {
    echoDefault "⚡️ Looking for Chezmoi..."

    if test ! $(which chezmoi); then
        echoError "🧨 You do not have the Chezmoi."
        echoWarning "⚡️ Installing Chezmoi..."

        brew install chezmoi

        echoSuccess "☀️ Chezmoi successfully installed, so go to next step..."
    else
        echo "👌 Cezmoi already installed, so skipping to next step..."
    fi
}


# Process installing
checkBash
confirmInstall
isntallCommadLineTools
installHomebrew
installChezmoi

# Success messsage
echo ""
echo "🤘🤘🤘 Done! 🤘🤘🤘"