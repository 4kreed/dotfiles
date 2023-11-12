change_terminal_font() {
    python3 $HOME/Documents/dotfiles/utils/font_switcher.py "$1" "$2"
}

reset_kitty() {
    pkill -USR1 kitty > /dev/null 2>&1
}

pre_nvim() {
    change_terminal_font "Iosevka Nerd Font" "12.0"
    reset_kitty
}

post_nvim() {
    change_terminal_font "ShureTechMono Nerd Font" "14.0"
    reset_kitty
}

my_nvim() {
    pre_nvim
    nvim "$@"
    post_nvim
}

alias nvim=my_nvim

