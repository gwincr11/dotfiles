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


alias cp="cp -v"
alias mv="mv -v"
alias ls="ls -FGh"
alias du="du -cksh"
alias df="df -h"
# Use modern regexps for sed, i.e. "(one|two)", not "\(one\|two\)"
alias sed="sed -E"
alias mkdir='mkdir -p'
alias ll='ls -al'
alias ln='ln -v'
alias git_log_diff="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# ssh-agent
agents=(ssh-add -E md5 -l)
if [ -z agents ]
then
  ssh-agent >> /dev/null 2>&1
  ssh-add ~/.ssh/id_rsa >> /dev/null 2>&1
fi

#autoload -U add-zsh-hook

stty sane
