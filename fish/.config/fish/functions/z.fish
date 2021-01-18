# Defined in - @ line 1
function z --wraps== --wraps='setsid zathura' --wraps='setsid zathura 2>/dev/null' --description 'alias z=setsid zathura 2>/dev/null'
  setsid zathura 2>/dev/null $argv;
end
