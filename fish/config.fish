if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx EDITOR nvim
set -gx PROJECT_PATHS ~/Coding ~/.config ~/Coding/isflights
starship init fish | source
