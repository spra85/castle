# Editors
export EDITOR="subl -n"
export BUNDLER_EDITOR="subl -n"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/bin:$PATH"
# Add globally installed Python binaries
export PATH="$HOME/.asdf/installs/python/3.8.2/bin:$PATH"
# Add PostgreSQL.app binaries
export PATH="/Applications/Postgres.app/Contents/Versions/11/bin:$PATH"

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi

# Git Prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# Global aliases
if [ -f ~/.global_aliases ]; then
  source ~/.global_aliases
fi

if [ -f ~/.local_environment_variables ]; then
  source ~/.local_environment_variables
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

# GMG VPN
if [ -f ~/.gmg-vpn.sh ]; then
  source ~/.gmg-vpn.sh
fi

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTCONTROL=ignoredups

export SHP2PGSQL=/usr/local/bin/shp2pgsql
# export PYTHONBREAKPOINT=ipdb.set_trace

source $(brew --prefix asdf)/asdf.sh
