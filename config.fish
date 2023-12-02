if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_user_paths $fish_user_paths
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.emacs.d/bin
set fish_greeting
set editor "nvim"
set EDITOR "nvim"
set BROWSER "brave"

set doomdir "$HOME/.config/doom"

set dotnet_root /snap/dotnet-sdk/current

set LESS "-SRF"


###############################################################################
#                             aliases/abbrs                                   #
###############################################################################
alias which "type"
alias x-www-browser "brave"
abbr --add dotdot --regex '^\.\.+$' --function multicd
alias open "xdg-open"

abbr trash "rmtrash"
abbr del "rmtrash"
abbr dirtrash "rmdirtrash"
abbr trashdir "rmdirtrash"
abbr deldir "rmdirtrash"
# alias rm "echo Use 'del' or the full path i.e. '/bin/rm'"
# alias rmdir "echo Use 'deldir' or the full path i.e. '/bin/rmdir'"

abbr vim "nvim"
abbr vi "nvim"

alias emacs "emacsclient --quiet --create-frame --no-wait --alternate-editor=''"
alias killemacs "emacsclient --eval '(save-buffers-kill-emacs)'"

alias color "sudo rogaurocore"

abbr cat "bat"

abbr c "clear"

abbr toclip "xclip -selection clipboard"

alias tree "tree -I 'node_modules|venv|vendor'"
alias exa "exa --color=auto --group-directories-first"
alias ls "exa"
alias la "exa -a"
alias ll "exa -l"
alias l "exa -lah"
alias l. "exa -A | grep '^\.'"

alias grep "grep --color=auto"

alias wget "wget -c"

alias pacman "pacman --color auto"
alias update "pacman -Syyu"
# alias pacman "sudo pacman --color auto"
# alias update "sudo pacman -Syyu"
abbr yay "paru"
abbr yeet "paru -Rns"

alias tobash "sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh "sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish "sduo chsh $USER -s /bin/fish && echo 'Now log out.'"

abbr work "tmuxinator"
abbr --add mux "tmuxinator"

# opam configuration
source /home/chachi/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
