#!/usr/bin/env zsh
# ------------------------------------------------------------------------------
#          FILE:  vortizhe.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  Victor Ortiz (kespers@gmail.com)
#       VERSION:  1.0.0
#    SCREENSHOT:
# ------------------------------------------------------------------------------
function toon {
  echo -n ""
}
local rvm=''
if [[ ! -a $(~/.rvm/bin/rvm-prompt) ]]; then
  rvm='‹%{$fg[magenta]%}$(~/.rvm/bin/rvm-prompt v g)%{$reset_color%}›'
fi
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'

local tacoma=''
if [[ -r ~/.tacoma.yml ]]; then
  tacoma='‹%{$fg[yellow]%}$(/usr/bin/env tacoma current )%{$reset_color%}›'
fi

git_prompt='%{$fg[blue]%}%~%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]% ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"


PROMPT="$git_prompt
$(toon) "
RPROMPT="$tacoma$rvm"
