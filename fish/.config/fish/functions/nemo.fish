# Defined in - @ line 1
function nemo --wraps='setsid nemo .' --description 'alias nemo=setsid nemo .'
  setsid nemo . $argv;
end
