
function v
    if test "$argv" = ""
	set result (find -L ~/* -type f | fzf -i )
    else
	set result  $argv
    end
    if test "$result" != ""
	nvim $result
    end
end
