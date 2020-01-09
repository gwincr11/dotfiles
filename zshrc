DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=false
export ZSH=/Users/gwincr11/.oh-my-zsh
ZSH_THEME="Honukai"
plugins=(git bundler osx rake ruby vi-mode)
source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
export GOPATH=$HOME/go


alias cp="cp -iv"
alias mv="mv -iv"
alias ls="ls -FGh"
alias du="du -cksh"
alias df="df -h"
# Use modern regexps for sed, i.e. "(one|two)", not "\(one\|two\)"
alias sed="sed -E"

# ssh-agent
agents=(ssh-add -E md5 -l)
if [ -z agents ]
then
  ssh-agent >> /dev/null 2>&1
  ssh-add ~/.ssh/id_rsa >> /dev/null 2>&1
fi

#autoload -U add-zsh-hook
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
