# Souce aliases
source ~/.zsh/aliases.sh

# Souce functions
source ~/.zsh/functions.sh

# Use antigen (plugin manager)
source ~/.zsh/bin/antigen.zsh

###########################################################
# Plugins and themes

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Load the theme
antigen bundle mafredri/zsh-async
antigen bundle chabou/pure-now

# Syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting

# Syntax autosuggestion bundle
antigen bundle zsh-users/zsh-autosuggestions

# Tell Antigen that you're done
antigen apply

###########################################################
# NVM (Node Version Manager)

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
