# Defined in - @ line 1
function shit --wraps='find * | fzf' --wraps='nvim (find * | fzf)' --wraps='nvim (find -L -type f | fzf -i)' --description 'alias shit=nvim (find -L -type f | fzf -i)'
  nvim (find -L -type f | fzf -i) $argv;
end
