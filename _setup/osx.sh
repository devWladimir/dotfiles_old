#!/bin/bash

set -u

abort() {
  printf "%s\n" "$@"
  exit 1
}

# Return exeption if `bash` is not installed
if [ -z "${BASH_VERSION:-}" ]
then
  abort "๐งจ Bash is required to interpret this script."
fi

# Confirm / Abort install
echo ""
echo "๐ค  This script will setup Homebrew and Stow"
read -n 1 -r -s -p $'    Press any key to continue or Ctrl+C to abort...\n\n'

# Install Homebrew
if test ! $(which brew); then
    echo "โก๏ธ Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"    
fi

# Install Stow
command -v stow >/dev/null 2>&1 || \
    (echo '๐  Installing Stow' && brew install stow)

echo ""
echo "๐ค๐ค๐ค Done! ๐ค๐ค๐ค"
