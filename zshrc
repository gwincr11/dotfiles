export ZSH=/Users/gwincr11/.oh-my-zsh
eval "$(rbenv init - --no-rehash)"
eval "$(nodenv init -)"
export GOPATH=$HOME/go

ZSH_THEME="Honukai"
plugins=(git bundler osx rake ruby vi-mode)
source $ZSH/oh-my-zsh.sh

alias cp="cp -iv"
alias mv="mv -iv"
alias ls="ls -FGh"
alias du="du -cksh"
alias df="df -h"
# Use modern regexps for sed, i.e. "(one|two)", not "\(one\|two\)"
alias sed="sed -E"

# ssh-agent
if !(ssh-add -E md5 -l)
then
  ssh-agent >> /dev/null 2>&1
  ssh-add ~/.ssh/id_rsa >> /dev/null 2>&1
fi

#autoload -U add-zsh-hook
export PATH="/usr/local/sbin:$PATH"
