# ~/.dotfiles
:feelsgood: Dotfiles based on Chezmoi.io utility for different OS.

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
  - [ ] Create script for configuring `Defaults` plists in Mac OS
  - [ ] Add installing Yabai, SKHD, Sketchybar with required font to installation process
  - [ ] Add configs for VSCode
  - [ ] Add script for updating yabai
  - [ ] Find way to ignore Notification after runing comand `sudo yabai --load-sa`
  - [ ] Add config for Alacritty terminal
  - [ ] Add install Krita
  - [ ] Add install Mysql GUI client
  - [ ] Add installi Tmux
  - [ ] Add config Tmux
  - [ ] Add instruction or script for disable Safe File System for Yabai full configuration
  - [ ] Add install PHP Storm
  - [ ] Update Chezmoiignore for correct working dotfiles