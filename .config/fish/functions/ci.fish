# requires: zoxide
function ci --wraps='__zoxide_zi' --description 'alias cdi=zi && ls'
    __zoxide_zi $argv && ls
end
