#!/bin/bash

set -u

abort() {
    printf "%s\n" "$@"
    exit 1
}

# Return exeption if `bash` is not installed
if [ -z "${BASH_VERSION:-}" ]
then
    abort "🧨 Bash is required to interpret this script."
fi

# Confirm / Abort install
echo ""
echo "🤚  This script will install [Xcode Command Line Tools, Homebrew and Chezmoi.io]"
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'

# Install Xcode Command Line Tools
echo "⚡️ Looking for Xcode Command Line Tools..."

if ! [ $(xcode-select -p) ]; then
    echo "🧨 You do not have the Xcode Command Line Tools."
    echo "⚡️ Installing Xcode Command Line Tools..."

    xcode-select --install
    sudo xcodebuild -license accept
else
    echo "👌 Xcode Command Line Tools are already installed, so skipping to next step..."
fi

# Install Homebrew
echo "⚡️ Looking for Homebrew..."

if test ! $(which brew); then
    echo "🧨 You do not have the Homebrew."
    echo "⚡️ Installing homebrew..."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    
else
    echo "👌 Homebrew already installed, so skipping to next step..."
fi


# Install Chezmoi.io 
echo "⚡️ Looking for Chezmoi..."

if test ! $(which chezmoi); then
    echo "⚡️ Installing chezmoi..."

    brew install chezmoi
else
    echo "👌 Cezmoi already installed, so skipping to next step..."
fi


# Success messsage
echo ""
echo "🤘🤘🤘 Done! 🤘🤘🤘"