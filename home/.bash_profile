# Editors
export EDITOR="subl -n"
export BUNDLER_EDITOR="subl -n"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/bin:$PATH"

# Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
fi

# Bash Prompt
# if [ -f ~/.bash_prompt ]; then
#   source ~/.bash_prompt
# fi

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

# [ -z "$PS1" ] || PS1="${GREEN}\h${LGRAY}:${LBLUE}\W${RED}\$(__git_ps1 '(%s)') ${GREEN}\u${NORM}\$ "

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTCONTROL=ignoredups
