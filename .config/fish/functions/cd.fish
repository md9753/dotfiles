function cd --wraps='__zoxide_z' --description 'alias cd=z && eza'
    # play nice since this shadows a builtin
    if functions -q __zoxide_z
        __zoxide_z $argv && ls
    else
        builtin cd $argv && ls
    end
end
