# fish config

fish_add_path $CARGO_HOME/bin $HOME/.local/bin

if status is-interactive
    function fish_greeting
    end

    fish_vi_key_bindings
    set fish_cursor_insert line blink

    # fix for oversight in vi bindings
    bind -M insert delete delete-char

    # fix for konsole bindings
    bind -M insert ctrl-h backward-kill-path-component

    # muscle memory
    bind -M insert ctrl-delete kill-bigword
    bind -M insert ctrl-backspace backward-kill-path-component

    if command -q zoxide
        zoxide init --no-cmd fish | source
    end
    if command -q starship
        starship init fish | source
    end
    if command -q fzf
        fzf --fish | source
    end
end
