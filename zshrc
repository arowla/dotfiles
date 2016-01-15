[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

# You MUST use npm to install npm, which supplies completion.sh
# source /usr/local/lib/node_modules/npm/lib/utils/completion.sh
source $HOME/antigen.zsh
autoload -U colors && colors
setopt promptsubst
antigen-use oh-my-zsh
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen-bundle chriskempson/base16-shell base16-ashes.dark.sh
# antigen-bundle chriskempson/base16-iterm2
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
# Tried it, ok, but too busy.
#antigen-bundle arialdomartini/oh-my-git
#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
#
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle virtualenvwrapper
antigen bundle autoenv
antigen bundle ssh-agent
antigen bundle rbenv

antigen-theme awesomepanda

antigen-apply

source /usr/local/bin/virtualenvwrapper.sh
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
