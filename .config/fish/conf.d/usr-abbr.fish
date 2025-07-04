# specific to network
abbr forceums 'sudo umount -a -t cifs -l'
abbr ph 'ssh Whippoorwill'

# general
abbr quiet --position anywhere '&>/dev/null'
abbr sdb 'sudo updatedb'
abbr mkdir 'mkdir -p'

# programs that don't shadow builtins
abbr python python3
abbr py python3
abbr ipy ipython3
abbr rg 'rg -S'
abbr d. 'dolphin . &>/dev/null &'
abbr --command cbx u 'file upload'
for i in (seq 1 9)
    abbr "lt$i" "lt $i"
end

# programs that shadow builtins
if command -q dust
    abbr du dust
end
if command -q rip
    abbr rm rip
end
if command -q rg
    abbr grep rg
end
if command -q nvim
    abbr vi nvim
end
# cd, ls*, cat replaced with functions
