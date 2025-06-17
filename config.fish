starship init fish | source

fish_add_path /opt/homebrew/bin

zoxide init fish | source

set -x EDITOR 'code --wait'

set -x SKIM_DEFAULT_COMMAND "fd --type f"

set -x CARGO_TARGET_DIR $HOME/.cargo/shared_target
set PATH $HOME/.cargo/bin/ $PATH

# Abbreviations
abbr -a -g gp git push
abbr -a -g gc git commit -asm
abbr -a -g gst git status

# Aliases
command -q exa; and alias la="exa -abghl --git --color=automatic"
command -q exa; and alias ll="exa -bghl --git --color=automatic"

# Fisher!
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

