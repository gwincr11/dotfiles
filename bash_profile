alias preach_cow='fortune | cowsay | lolcat'
#preach_cow

alias preach_parrot='fortune | parrotsay '
preach_parrot

# Heroku
export HEROKU_ORGANIZATION=github-enterprise

# Unix
alias ll='ls -al'
alias ln='ln -v'
alias mkdir='mkdir -p'
export EDITOR=vim

# path Helpers
alias start_postgres='postgres -D /usr/local/var/postgres'
alias start_redis='redis-server /usr/local/etc/redis.conf'
alias foreman_logs='tail -f log/development.log'
alias start_kafka='zookeeper-server-start /usr/local/etc/kafka/zookeeper.properties; kafka-server-start /usr/local/etc/kafka/server.properties'

# Rails
alias rollback="be rake db:rollback"
alias remigrate="be rake db:rollback & be rake db:migrate rake db:test:prepare"
alias migrate='be rake db:migrate db:rollback && rake db:migrate rake db:test:prepare'
alias unfuck-gemfile="git checkout HEAD -- Gemfile.lock"

# Ruby
alias be="bundle exec"
alias spec='be rspec'
eval "$(rbenv init -)"

# Python
# https://github.com/yyuu/pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Git Aliases
alias squashallofthethings='git fetch && git rebase -i origin/master -X ours && rake db:migrate && git add db/structure.sql && git commit --amend --no-edit'

# RUbocop autofix
alias apply_styles='git status -s | cut -d" " -f3 | xargs bin/rubocop -a'

#Docker
alias default_docker='docker-machine start default; eval "$(docker-machine env default)"'

dockercleanup(){
  docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

alias git_log_diff="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
stty sane
