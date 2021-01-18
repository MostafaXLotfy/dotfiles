# Defined in - @ line 1
function sx --wraps='setsid sxiv' --description 'alias sx setsid sxiv'
  setsid sxiv $argv;
end
