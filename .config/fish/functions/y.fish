# requires: yazi
# from https://yazi-rs.github.io/docs/quick-start
function y --wraps='yazi' --description='Run yazi and cd to the working directory afterwards.'
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
