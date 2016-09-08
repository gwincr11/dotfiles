# export PATH="$HOME/.bin:$PATH"
eval "$(pyenv init -)"
# export PATH="$HOME/.pyenv/shims:${PATH}"
# recommended by brew doctor
# export PATH="/usr/local/bin:$PATH"\n
# export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"
# export PATH="/usr/local/bin:$PATH"

export NVM_DIR="/Users/corygwin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
export PATH="/usr/local/sbin:$PATH"

# ZSH_THEME="Honukai"
ZSH_THEME="robbyrussell"
