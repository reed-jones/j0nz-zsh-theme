
ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
hostname="%{$fg[cyan]%}%M"

PROMPT='${hostname} $(git_prompt_info)%{$fg[green]%}${PWD/#$HOME/~}
%{$fg[cyan]%}%@ ${ret_status}%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}\uE0A0(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[yellow]%}✗%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}%{$fg[blue]%})"


