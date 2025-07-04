function roulette --description 'Open n random files from the listed directories.'
    for arg in $argv
        if [ -d $arg ]
            set -a dir $arg
        else if string match -rq '\d+' "$arg"
            # ignores all but last int but that's ok for now
            set files "$arg"
        end
    end

    if not set -q files
        set files 1
    end
    if not set -q dir
        set dir "$PWD"
    end

    for i in (seq 1 "$files")
        open (random choice (find $dir -type f))
    end

end
