
function c
    if test "$argv" = ""
	set result (find -L ~/* -type d | fzf -i )
    else
	set result  $argv
    end
    if test "$result" != ""
	cd "$result"
    end
end
