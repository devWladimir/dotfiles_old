# ~/.dotfiles
:feelsgood: Dotfiles based on Chezmoi.io utility for different OS.

| OS          | Support       |
| ----------- |:-------------:|
| Mac OS      | ✅           |
| Windows OS  | ⛔           |
| Linux OS    | ⛔           |

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Mac OS

 1. Install requirements from remote file
 
 ```
 bash -c "$(curl -fsSL https://raw.githubusercontent.com/devWladimir/dotfiles/main/installer/macos.sh)"
 ```

 2. Init dotfiles
 
 ```
 chezmoi init --apply https://github.com/devWladimir/dotfiles.git
 ```
