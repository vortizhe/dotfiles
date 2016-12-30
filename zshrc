# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh-custom/
ZSH_THEME="vortizhe"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git rails brew gem osx bundler powder rake rake-fast sublime heroku capistrano common-aliases zsh_reload tacoma c zsh-syntax-highlighting ssh-agent asdf bower docker docker-compose yarn npm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source ~/.localrc

# git
alias gP='git push origin $(current_branch)'
alias gL='git reset origin/$(current_branch) --hard'
alias gsmu="git submodule update --init"
alias gm='git merge --no-ff'

# rails
alias rst='touch tmp/restart.txt'

# commands starting with % for pasting from web
alias %=' '

# misc
alias reload='source ~/.zshrc'
alias e='subl'

# osx
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -boolean false && killall Finder"
alias updatedb="sudo /usr/libexec/locate.updatedb"

PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:/usr/local/sbin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
