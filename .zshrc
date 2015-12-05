# Load Antigen
source ~/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Antigen bundles
antigen bundle zsh-users/zsh-syntax-highlighting

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle last-working-dir
antigen bundle osx
antigen bundle symfony2
antigen bundle web-search
antigen bundle docker
antigen bundle common-aliases
antigen bundle sudo

# Antigen theme
antigen theme robbyrussell

# Tell antigen that you're done
antigen apply

# Setup zsh-autosuggestions
source ~/.zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}

zle -N zle-line-init
