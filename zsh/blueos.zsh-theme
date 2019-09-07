local return_code="%(?..%{$fg[red]%}%? ✗%{$reset_color%})"
if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='%{$terminfo[bold]$fg[red]%}☢'
else
    local user_host='%{$terminfo[bold]$fg[green]%}☸ %n   %{$terminfo[bold]$fg[blue]%}🖵  %m '
    local user_symbol='%{$terminfo[bold]$fg[blue]%}$%{$reset_color%}'
fi

local current_dir='%{$terminfo[bold]$fg[magenta]%}🖹 %~ %{$reset_color%}'
local git_branch='$(git_prompt_info)'

PROMPT="
${user_host}%{$reset_color%}   ${current_dir}${git_branch}   %{$fg[yellow]%}⌚ %T%{$reset_color%}
 ${user_symbol} "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}   ⛇ <"
ZSH_THEME_GIT_PROMPT_SUFFIX="> %{$reset_color%}"
