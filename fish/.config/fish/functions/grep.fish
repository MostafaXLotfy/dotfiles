# Defined in - @ line 1
function grep --wraps='grep -i' --description 'alias grep=grep -i'
 command grep -i $argv;
end
