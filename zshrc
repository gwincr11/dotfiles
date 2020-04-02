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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

