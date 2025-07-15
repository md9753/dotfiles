function ls --wraps='eza' --description 'alias ls=eza'
    # play nice since this shadows a builtin
    if command -q eza
        eza --group-directories-first --icons --hyperlink --follow-symlinks $argv
    else
        command ls --color=auto -F
    end
end
