PROMPT='%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}
$(virtualenv_info)$(prompt_char) '

BAT_CHARGE="$HOME/.oh-my-zsh/lib/batcharge.py"
if [ `uname` = 'Darwin' ]; then
  RPROMPT='$(battery_charge)'
fi

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function battery_charge {
    if [ -f $BAT_CHARGE ]; then
        echo `$BAT_CHARGE` 2>/dev/null
    fi
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

