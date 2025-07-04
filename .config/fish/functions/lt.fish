# see conf.d/abbr.fish
function lt --wraps='eza -TL' --description 'alias lt=eza -TL'
    ls -TL $argv
end
