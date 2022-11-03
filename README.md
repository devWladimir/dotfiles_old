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

 3. Reboot system
 
 ```
 sudo shutdown -r now
 ```


 # TODO

 ## Mac OS
  - [ ] Fix icons/colors for battery widget in Sketchybar
  - [ ] Code refactoring for ~/.dotfiles
  - [ ] Fix styles for Spaces widget in Sketchybar
  - [ ] Add Title to Sketchybar
  - [ ] Add music widget for Sketchybar
  - [ ] Create script for configuring `Defaults` plists in Mac OS
  - [ ] Add installing Yabai, SKHD, Sketchybar with required font to installation process
  - [ ] Add configs for VSCode
  - [ ] Add script for updating yabai
  - [ ] Find way to ignore Notification after runing comand `sudo yabai --load-sa`
  - [ ] Add config for Alacritty terminal
  - [ ] Add widget Discord for Sketchybar
  - [ ] Add widget Telegram for Sketchybar
  - [ ] Add install Docker
  - [ ] Add install Krita
  - [ ] Add install Mysql GUI client
  - [ ] Add installi Tmux
  - [ ] Add config Tmux
  - [ ] Add instruction or script for disable Safe File System for Yabai full configuration
  - [ ] Add install PHP Storm
  - [ ] Update Chezmoiignore for correct working dotfiles
  - [ ] Add installing Fonts for correct working dotfiles
  - [ ] Fix Google Chrome > find modal window with Yabai 