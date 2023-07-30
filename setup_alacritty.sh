THEMES_TARGET=~/.config/alacritty/catppuccin
git -C "$THEMES_TARGET" pull || git clone  https://github.com/catppuccin/alacritty.git "$THEMES_TARGET"
