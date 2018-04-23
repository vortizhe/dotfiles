#!/usr/bin/env zsh
# ------------------------------------------------------------------------------
#          FILE:  vortizhe.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  Victor Ortiz (kespers@gmail.com)
#       VERSION:  1.0.0
#    SCREENSHOT:
# ------------------------------------------------------------------------------

tacoma_current(){
  echo $(awk 1 ~/.tacoma_current_environment)
}

if [[ -f ~/.tacoma_current_environment ]]; then
  TACOMA_PROMPT='‹%{$fg[yellow]%}$(tacoma_current)%{$reset_color%}›'
else
  TACOMA_PROMPT=''
fi

asdf_version() {
  if [[ -f .tool-versions ]]; then
    echo "$((cat .tool-versions | grep $1 || cat ~/.tool-versions | grep $1) | awk -F' ' '{print $2}')"
  else
    echo "$(cat ~/.tool-versions | grep $1 | awk -F' ' '{print $2}')"
  fi
}

if [ $+commands[asdf] ]; then
  ASDF_PROMPT='%{$fg[red]%}♢$(asdf_version ruby) %{$fg[green]%}⬡ $(asdf_version nodejs)%{$reset_color%}'
else
  ASDF_PROMPT=''
fi

git_prompt='%{$fg[blue]%}%~%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"


PROMPT="$git_prompt
%{$fg[yellow]%}λ %{$reset_color%}"
RPROMPT="$TACOMA_PROMPT $ASDF_PROMPT"
