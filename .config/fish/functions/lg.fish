function lg --wraps='lazygit' --description 'Run lazygit and cd to the working directory afterwards.'
    # copied from yazi's 'y'
    set LAZYGIT_NEW_DIR_FILE (mktemp -t "lazygit-cwd.XXXXXX")
    lazygit $argv
    if read -z cwd <"$LAZYGIT_NEW_DIR_FILE"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD ]
        builtin cd -- "$cwd
    end
    rm -f -- "$LAZYGIT_NEW_DIR_FILE"
end
