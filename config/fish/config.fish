# if status is-interactive
#     # Commands to run in interactive sessions can go here
#     set fish_greeting
#     starship init fish | source
#     set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
#     # cat ~/pokeget.txt
# end

set -gx FISH_PROMPT starship
# set -g FISH_PROMPT oh-my-posh

set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

if status is-interactive
    # Initialize prompt (once — do NOT reinitialize on events)
    switch $FISH_PROMPT
        case starship
            starship init fish | source
        case oh-my-posh
            oh-my-posh init fish --config ~/.config/tokyo.omp.json | source
    end
    # cat ~/pokeget.txt
end
