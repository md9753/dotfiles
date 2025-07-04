function roll --description 'Generate lists of random integers without summing. Use `fend` for dice calculation'

    argparse u/unique -- $argv || return

    for dicestring in $argv
        if not string match -rq '^\d*d-?\d+$' "$dicestring"
            echo "$dicestring: Not in the format {number of dice}d{maximum roll}."
            return 1
        end

        echo "$dicestring" | read -d d qty maxroll
        if [ -z "$qty" ]
            set qty 1
        end

        if [ "$qty" -lt 0 ]
            echo "$dicestring: Can't roll a negative amount of dice."
            return 1
        end
        if [ "$maxroll" -lt 1 ]
            echo "$dicestring: Can't roll an unnatural dice."
            return 1
        end

        if set -ql _flag_unique
            if [ $qty -gt $maxroll ]
                echo "$dicestring: pigeonhole principle says fuk u"
                return 1
            end
        end
        set -a dicestrings $dicestring
    end

    # looping through args twice is fine I guess
    for dicestring in $dicestrings
        set seen

        # however doing this twice actually does kind of annoy me.
        # and on the third hand, making a list of lists is "abandon
        # doing this with shell" territory
        echo "$dicestring" | read -d d qty maxroll
        if [ -z "$qty" ]
            set qty 1
        end

        if set -q _flag_unique
            set choices (seq 1 $maxroll)
            for i in (seq $qty)
                set roll (random choice $choices)
                set -e choices[(contains -i "$roll" $choices)]
                set -a seen $roll
            end
        else
            for i in (seq $qty)
                set roll (random 1 $maxroll)
                set -a seen $roll
            end
        end
        echo $seen
    end
end
