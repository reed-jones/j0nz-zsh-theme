ret_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%}) ● %{$reset_color%}"
hostname="%{$fg[cyan]%}%M "

function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[red]%}(ssh) "
  fi
}

function root_check() {
  if [[ $(id -u) = 0 ]]; then
    echo "%{$fb_bold[red]%}# "
  else
    echo "%{$fg[blue]%}λ "
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}\uE0A0(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[blue]%}) "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(ssh_connection)${hostname}$(git_prompt_info)%{$fg[green]%}[${PWD/#$HOME/~}]
%{$fg[cyan]%}%@%{$reset_color%}${ret_status}$(root_check)%{$reset_color%}'
