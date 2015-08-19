# ENV  Setup
export EDITOR='subl -w'
export BASH_CONF="bash_profile"

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
alias cd_woo='cd Documents/rails-projects/Wootric/'

# Rails
alias remigrate="be rake db:rollback & be rake db:migrate"

# Ruby
alias be="bundle exec"
eval "$(rbenv init -)"

# Path

export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Users/corygwin/.rbenv/shims:/Users/corygwin/.rbenv/bin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/Users/corygwin/.rbenv/shims:/Users/corygwin/.rbenv/bin:/usr/local/bin:/Users/corygwin/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbinn:~/Desktop/nand2tetris/tools
export PATH="$HOME/.rbenv/bin:$PATH"

# Git Aliases
alias squashallofthethings='git fetch && git rebase -i origin/master -X ours && rake db:migrate && git add db/structure.sql && git commit --amend --no-edit'
