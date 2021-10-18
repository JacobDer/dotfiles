source /Users/jacobder/antigen.zsh

# Call bundles here.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen to apply the things above.
antigen apply

export PATH=/Library/PostgreSQL/13/bin:$PATH

# Switching colors
light_colorscheme="sed -i '' '24s/dark/light/g' ~/.config/nvim/init.lua; sed -i '' '25s/nightfly/toast/g' ~/.config/nvim/init.lua;"
light_statusline="sed -i '' '46,\$s/nightfly/toast_light/g' ~/.config/nvim/lua/statusline/lua.lua;"
light_alacritty="ats --select toast_light.yml;"

dark_colorscheme="sed -i '' '24s/light/dark/g' ~/.config/nvim/init.lua; sed -i '' '25s/toast/nightfly/g' ~/.config/nvim/init.lua;"
dark_statusline="sed -i '' '46,\$s/toast_light/nightfly/g' ~/.config/nvim/lua/statusline/lua.lua;"
dark_alacritty="ats --select nightfly.yml;"

alias theme_light=$light_colorscheme$light_statusline$light_alacritty
alias theme_dark=$dark_colorscheme$dark_statusline$dark_alacritty
