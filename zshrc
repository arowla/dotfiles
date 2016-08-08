[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

# You MUST use npm to install npm, which supplies completion.sh
# source /usr/local/lib/node_modules/npm/lib/utils/completion.sh
source $HOME/antigen.zsh
autoload -U colors && colors
setopt promptsubst
antigen-use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle virtualenvwrapper
antigen bundle kennethreitz/autoenv
antigen bundle ssh-agent
antigen bundle rbenv
antigen bundle pyenv
antigen bundle nvm

antigen-theme awesomepanda

antigen-apply
