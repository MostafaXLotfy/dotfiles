# Defined in - @ line 1
function libreoffice --wraps='setsid libreoffice' --description 'alias libreoffice=setsid libreoffice'
  setsid libreoffice $argv;
end
