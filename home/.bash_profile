# Editors
export EDITOR="subl -n"
export BUNDLER_EDITOR="subl -n"

# Aliases
alias q="exit"
alias tree="tree --dirsfirst -lFC"
alias grep="grep --color=auto"
alias s="cd ~/Sites"
alias be="bundle exec"
alias rst="touch tmp/restart.txt && echo "Restarted.""
alias tlog="tail -f log/development.log"
alias cuke="be rake cucumber"
alias rspc="be rake spec"
alias memz="top -o vsize"
alias cpu="top -o cpu"
alias fml="be foreman start -f Procfile.local"
alias fmld="be foreman start -f Procfile.development"
alias rb="dev && cd ruby"
alias js="dev && cd javascript"
alias esplug="open /Users/csprehe/Sites/elasticsearch-head/index.html"
alias castle="cd /Users/csprehe/Sites/castle"
alias soit="source ~/.bash_profile"
alias bi="bundle install"

# Git Aliases
alias gs='git status'
alias st='git status'
alias ga='git add --all'
alias gc='git commit'
alias gl='git gl'
alias gd='git diff'
alias gdc='git diff --cached'
alias gp='git push'
alias gr='git pull --rebase'
alias gv='git remote -v'
alias gla='git gla'
alias gap='git add -p'

# Directory navigation
alias ~="cd ~"
alias home="cd ~"
alias ..="cd ../"
alias ...="cd ../.."
alias ....="cd ../../.."
alias lst="ls -alh"
alias dt="cd ~/Desktop"
alias dl="cd ~/Downloads"
alias db="cd ~/Dropbox"
alias doc="cd ~/Documents"

# Rails aliases
alias rs="be rails s"
alias rc="rails console"
alias seed="rake db:seed"
alias grate="rake db:migrate"
alias tgrate="RAILS_ENV=test rake db:migrate"

# Local directories
alias pgn_data='cd /Users/csprehe/Dropbox/DevMyndTeam/Clients/640Labs/SamplePGNData'
alias tb='cd /Users/csprehe/Sites/devmynd/tractor_beam'
alias otb='cd /Users/csprehe/Sites/devmynd/ontheblock'
alias ese='cd /Users/csprehe/Sites/elasticsearch-example'
alias tabs='cd /Users/csprehe/Sites/devmynd/tabs'
alias batty='cd /Users/csprehe/Sites/devmynd/batty'
alias gcw='cd /Users/csprehe/Sites/devmynd/grandcentral_web'
alias gca='cd /Users/csprehe/Sites/devmynd/grandcentral_api'
alias me='cd /Users/csprehe/Sites/csprehe'
alias tst='cd /Users/csprehe/Sites/devmynd/topsteptrader'
alias esg='cd /Users/csprehe/Sites/sandbox/elasticsearch_geohash_example'
alias ww='cd /Users/csprehe/Sites/weekly_whiskey'

# Aliases for services
alias redis_start="redis-server /usr/local/etc/redis.conf"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias rem="redis-cli MONITOR"
alias mongo="mongod"
alias rbsrv="ruby -run -e httpd . -p 12345"
alias es='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi

# Bash Prompt
if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

# Git Completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Git Prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# Sublime snippets
source ~/snippets.sh

# Bash script
source ~/git_log.sh

[ -z "$PS1" ] || PS1="${GREEN}\h${LGRAY}:${LBLUE}\W${RED}\$(__git_ps1 '(%s)') ${GREEN}\u${NORM}\$ "

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTCONTROL=ignoredups

# Ruby Tuning
export RUBY_GC_MALLOC_LIMIT=60000000

# Ruby 2.1.0
export RUBY_GC_HEAP_FREE_SLOTS=200000
export RUBY_GC_HEAP_INIT_SLOTS=40000

export CFLAGS="-march=core2 -O3 -pipe -fomit-frame-pointer"

# Java HOME
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH

export PATH=/usr/local/bin:$PATH
