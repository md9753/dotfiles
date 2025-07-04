function sweep --description 'Inverse of md; delete directories and cd up'
    if [ (count $argv) -eq 0 ]
        set argv[1] "$PWD"
    end

    function _climb -a dir
        set dirempty (find "$dir" -mindepth 1 -maxdepth 1)
        if [ -n "$dirempty" ]
            cd "$dir"
        else
            rmdir "$dir"
            _climb (dirname "$dir")
        end
    end

    for dir in "$argv"
        if [ -d "$dir" ]
            find "$dir" -mindepth 1 -type d | tac | xargs rmdir &>/dev/null
            _climb "$dir"
        end
    end
end
