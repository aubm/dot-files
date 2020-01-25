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
antigen bundle docker
antigen bundle common-aliases
antigen bundle sudo
antigen bundle zsh-users/zsh-autosuggestions

# Antigen theme
antigen theme geoffgarside

# Tell antigen that you're done
antigen apply

[ -f /Users/aurelienbaumann/.travis/travis.sh ] && source /Users/aurelienbaumann/.travis/travis.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.fzf.zsh

#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# The next line updates PATH for the Google Cloud SDK.
source '/usr/local/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/usr/local/google-cloud-sdk/completion.zsh.inc'

export PATH=~/scripts:$PATH

# Set environnement variables
export GOROOT=$HOME/go/go1.12.6
export GOPATH=$HOME/Developpements/go_code
export PATH=$HOME/bin:/usr/local/bin:$GOROOT/bin:$GOPATH/bin:$PATH

export PATH=$PATH:$HOME/go_appengine

# iterm shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias m='go run main.go'
alias yolo='git push --force origin master'
alias chrome='/usr/bin/open -a "/Applications/Google Chrome.app" $1'
alias json="python -mjson.tool"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
