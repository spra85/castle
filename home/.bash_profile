# Editors
export EDITOR="subl -n"
export BUNDLER_EDITOR="subl -n"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin"

# Rbenv
export PATH="/usr/local/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Heroku and other goodness
export PATH="/usr/local/bin:$PATH"

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

# Global aliases
if [ -f ~/.global_aliases ]; then
  source ~/.global_aliases
fi

# Project aliases
if [ -f ~/.project_aliases ]; then
  source ~/.project_aliases
fi

# Bash functions
if [ -f ~/functions.sh ]; then
  source ~/functions.sh
fi

# Sublime snippets
if [ -f ~/snippets.sh ]; then
  source ~/snippets.sh
fi

# Bash script
if [ -f ~/git_log.sh ]; then
  source ~/git_log.sh
fi

# Baptize
# if [ -f ~/.baptize/lib/baptize.sh ]; then
#   source ~/.baptize/lib/baptize.sh
# fi

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

if boot2docker status | grep running >/dev/null; then
  eval $(boot2docker shellinit 2> /dev/null)
  export DOCKER_IP=$(boot2docker ip 2>/dev/null)
fi
