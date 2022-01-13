# vim:ft=zsh ts=2 sw=2 sts=2

#  ▲ Theto
# ~~~~~~~~~~
# A simplistic theme for ZSH
#
# To use this, either install Nerd Fonts (nerdfonts.com)
# or change box_suffix and box_prefix with symbols available
# in your font of choice.


box_prefix=''
box_suffix=''

prompt_vi_git_info() {
  ref=$(command git symbolic-ref HEAD 2> /dev/null) \
    || ref=$(command git rev-parse --short HEAD 2> /dev/null) \
    || return 0

  echo "${ref#refs/heads/}"
}

prompt_vi_git_status() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    if test -z "$(git status --porcelain --ignore-submodules)"; then
      status_color="green"
    else
      status_color="magenta"
    fi

    echo -n "%{$fg[grey]%}$box_prefix%{$fg[$status_color]%}%{$bg[grey]%}\uf418 $(prompt_vi_git_info) %{$reset_color%}%{$bg[$status_color]%} %{$reset_color%}%{$fg[$status_color]%}$box_suffix%{$reset_color%}"
  fi
}

prompt_vi_show_machine_name() {
  if [[ -n $SSH_CLIENT || -n $SSH_TTY || -n $SSH_CONNECTION ]]; then
    echo -n "%{$fg[grey]%}$box_prefix%{$fg[yellow]%}%{$bg[grey]%}\uf492  %m %{$reset_color%}%{$bg[yellow]%} %{$reset_color%}%{$fg[yellow]%}$box_suffix%{$reset_color%}"
  fi
}

CURRENT_LOCATION="%{$fg[grey]%}$box_prefix%{$fg[white]%}%{$bg[grey]%}%1~%{$reset_color%}%{$fg[grey]%}$box_suffix%{$reset_color%}"
PROMPT="%(?,%F{242},%F{red}) 󰊠 %F{white}%f"
RPS1='$CURRENT_LOCATION $(prompt_vi_git_status)%f$(prompt_vi_show_machine_name)'
