#!/bin/bash

GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
WHITE="%{$fg_bold[white]%}"
RESET="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="$WHITE "
ZSH_THEME_GIT_PROMPT_SUFFIX="$RESET"
ZSH_THEME_GIT_PROMPT_DIRTY=" $YELLOW⬢ "
ZSH_THEME_GIT_PROMPT_CLEAN=" $WHITE⬢ "

ZSH_THEME_GIT_COMMITS_BEHIND_PREFIX="$RED⥥ "
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="$(git_commits_behind)"
ZSH_THEME_GIT_COMMITS_BEHIND_SUFFIX="$RESET"

ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="$GREEN⥣ "
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="$(git_commits_ahead)"
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX="$RESET"

PROMPT='$WHITE󰊠  $YELLOW%c $RESET$(git_prompt_info)$RESET ' RPROMPT='$(git_commits_ahead)$(git_commits_behind)$RESET'

# vim:ft=zsh ts=2 sw=2 sts=2
