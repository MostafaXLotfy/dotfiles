#!/bin/bash
source "${HOME}/.cache/wal/colors.sh"

fix_sequences() {
        e=$'\e'
        sequences=$(cat)
        foreground_color="$(echo -e "${sequences}\c" | grep --color=never -Eo "${e}]10[^${e}\\\\]*?${e}\\\\" | grep --color=never -Eo "#[0-9A-Fa-f]{6}")"
        background_color="$(echo -e "${sequences}\c" | grep --color=never -Eo "${e}]11[^${e}\\\\]*?${e}\\\\" | grep --color=never -Eo "#[0-9A-Fa-f]{6}")"
        cursor_color="$(echo -e "${sequences}\c" | grep --color=never -Eo "${e}]12[^${e}\\\\]*?${e}\\\\" | grep --color=never -Eo "#[0-9A-Fa-f]{6}")"

for term in /dev/pts/{0..9}*
do
echo -e "\e]4;256;${cursor_color}\a\c" > "${term}" 2>/dev/null
echo -e "\e]4;258;${background_color}\a\c" > "${term}" 2>/dev/null
echo -e "\e]4;259;${foreground_color}\a\c" > "${term}" 2>/dev/null
done
}
