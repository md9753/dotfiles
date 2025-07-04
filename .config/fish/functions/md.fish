function md --wraps='mkdir' --description 'alias md=mkdir -p && cd'
    for i in $argv
        mkdir -p "$argv"
    end
    and builtin cd "$argv[-1]"
end
