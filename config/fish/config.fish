# set -gx FISH_PROMPT starship
## curl -sS https://starship.rs/install.sh | sh
## pacman -S starship

set -g FISH_PROMPT oh-my-posh
## curl -s https://ohmyposh.dev/install.sh | bash -s

set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
set -gx PATH $PATH $HOME/bin $HOME/.local/bin /usr/local/bin

if status is-interactive
    # Initialize prompt (once — do NOT reinitialize on events)
    switch $FISH_PROMPT
        case starship
            starship init fish | source
        case oh-my-posh
            oh-my-posh init fish --config ~/.cache/oh-my-posh/themes/powerlevel10k_rainbow.omp.json | source
    end
    # cat ~/pokeget.txt
end
