# ENV  Setup
export EDITOR='subl -w'
export BASH_CONF="bash_profile"

# Unix
alias ll='ls -al'
alias ln='ln -v'
alias mkdir='mkdir -p'

# path Helpers
alias go_to_af="cd /Users/corygwin/Documents/shopify/analog-forest"
alias cd_af="go_to_af"
alias go_to_marin="cd /Applications/MAMP/htdocs/marinbikes"
alias cd_m="go_to_marin"
alias go_to_polygon="cd /Applications/MAMP/htdocs/polygon"
alias cd_poly="go_to_polygon"
alias go_to_marin_biz="cd /Users/corygwin/Documents/rails-projects/marinbikes.biz"
alias cd_mbiz="go_to_marin_biz"
alias cd_afd="cd /Users/corygwin/Documents/rails-projects/analog_forest"
alias cd_woo='cd ~/Documents/rails-projects/Wootric/'
alias cd_shopify='cd ~/Documents/shopify'
alias cd_rails='cd ~/Documents/rails-projects/'

alias start_postgres='postgres -D /usr/local/var/postgres'
alias start_redis='redis-server /usr/local/etc/redis.conf'
alias foreman_logs='tail -f log/development.log'

# Rails
alias remigrate="be rake db:rollback & be rake db:migrate"
alias migrate='be rake db:migrate db:rollback && rake db:migrate'

# Ruby
alias be="bundle exec"
alias spec='be rspec'
eval "$(rbenv init -)"

# Python
# https://github.com/yyuu/pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Path

# export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
# export PATH=/usr/local/bin:$PATH
# export PATH=/Users/corygwin/.rbenv/shims:/Users/corygwin/.rbenv/bin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/Users/corygwin/.rbenv/shims:/Users/corygwin/.rbenv/bin:/usr/local/bin:/Users/corygwin/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbinn:~/Desktop/nand2tetris/tools
# export PATH="$HOME/.rbenv/bin:$PATH"
# Mamp PHP
export PATH=/Applications/MAMP/bin/php/php5.5.14/bin:$PATH

# Git Aliases
alias squashallofthethings='git fetch && git rebase -i origin/master -X ours && rake db:migrate && git add db/structure.sql && git commit --amend --no-edit'

#Python virtual env
source /usr/local/bin/virtualenvwrapper.sh

#Docker
alias default_docker='docker-machine start default; eval "$(docker-machine env default)"'

function mergeWootric() {
if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1
then
  branch=$(current_branch)
  if [[ $branch == 'development' ]]
  then
    echo "This command cannot be run from the development branch"
    return 1
  else
    git checkout development && \
    git pull origin development --ff-only && \
    git checkout "$branch" && \
    git diff-index --quiet --cached HEAD && \
    git rebase development && \
    git diff-index --quiet --cached HEAD && \
    git push origin "$branch":"$branch" --force-with-lease && \
    git checkout development && \
    git merge - --ff-only && \
    git checkout development && \
    git push origin development:development && \
    git push origin ":$branch" && \
    git branch -d "$branch"
  fi
else
  echo "This command must be run within a git repository"
  return 1
fi
}

alias git_log_diff="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

export ARC_TEST_BUCKET=arctestmarin
export ARC_TEST_S3_KEY=AKIAJ3THQFB5LWS6W52A
export ARC_TEST_S3_SECRET=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

# Composer to use Mamp php: https://gist.github.com/kkirsche/5710272
alias phpmamp='/Applications/MAMP/bin/php/php5.5.14/bin/php'
