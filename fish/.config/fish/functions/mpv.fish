# Defined in - @ line 1
function mpv --wraps='setsid mpv' --description 'alias mpv=setsid mpv'
  setsid mpv $argv;
end
