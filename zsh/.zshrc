#colors and prompt
cat ~/.cache/wal/sequences
source ~/functions.sh
autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# language
setxkbmap -layout us,ara grp:alt_shift_toggle
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
#default programes
export SHELL=zsh
export BROWSER=brave
export EDITOR=nvim
export TERMINAL=st

# vi mode
bindkey -v
export KEYTIMEOUT=1
# Turn off all beeps
unsetopt BEEP
# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;}  # Use beam shape cursor for each new prompt.
# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


# my scripts
export PATH=~/personal/scripts:$PATH

# aliases

# moving around and registering the directories into a file
alias cl="clear"
# searching for a file in a directory
alias s="ls -a | grep -i"
# open files
alias o="setsid xdg-open "
# Edit line in vim with ctrl-e:
alias pdf="libreoffice --convert-to pdf *.pptx"
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line



# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
