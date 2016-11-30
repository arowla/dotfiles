[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

#To use Homebrew's directories rather than ~/.pyenv add to your profile:
export PYENV_ROOT=/usr/local/var/pyenv

#To enable shims and autocompletion add to your profile:
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# You MUST use npm to install npm, which supplies completion.sh
# source /usr/local/lib/node_modules/npm/lib/utils/completion.sh
source $HOME/antigen.zsh
autoload -U colors && colors
setopt promptsubst
antigen-use oh-my-zsh
antigen bundle git
#antigen bundle pip
#antigen bundle python
#antigen bundle virtualenvwrapper
antigen bundle kennethreitz/autoenv
antigen bundle ssh-agent
#antigen bundle rbenv
antigen bundle pyenv
#antigen bundle nvm

antigen-theme awesomepanda

antigen-apply

export NVM_DIR="/Users/RowlandA/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
