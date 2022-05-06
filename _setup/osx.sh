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
echo "🤚  This script will setup Homebrew and Stow"
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'

# Install Homebrew
if test ! $(which brew); then
    echo "⚡️ Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    
fi

# Install Stow
command -v stow >/dev/null 2>&1 || \
    (echo '👊  Installing Stow' && brew install stow)

echo ""
echo "🤘🤘🤘 Done! 🤘🤘🤘"
