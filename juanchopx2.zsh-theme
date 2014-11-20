# Borrowing shamelessly from these oh-my-zsh themes:
#   fino

function box_name {
  [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

local ruby_env=''
if which rvm-prompt &> /dev/null; then
  ruby_env=' ‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    ruby_env=' ‹$(rbenv version-name)›%{$reset_color%}'
  fi
fi

local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'
local prompt_char='$'

PROMPT="%{$terminfo[bold]$FG[166]%}%n%{$reset_color%} %{$FG[246]%}at%{$reset_color%} %{$terminfo[bold]$FG[033]%}$(box_name)%{$reset_color%} %{$FG[246]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}${current_dir}%{$reset_color%}${git_info} %{$FG[246]%}using%{$terminfo[bold]$FG[160]%}${ruby_env}%{$reset_color%}
${prompt_char} "

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[160]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
