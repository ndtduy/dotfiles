if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    starship init fish | source
    set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
    cat ~/pokeget.txt
end
