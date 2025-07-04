function cat --wraps=batcat --description 'alias cat bat'
    # play nice since this shadows a builtin
    if not command -q batcat
        command cat $argv
    else if [ (count $argv) -gt 1 ]
        # global args at .config/bat/fish
        batcat $argv
    else
        batcat --style=changes --paging=never $argv
    end
end
