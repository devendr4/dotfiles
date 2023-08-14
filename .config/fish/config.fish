if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx TERM xterm-256color

set fish_greeting
set -gx EDITOR nvim
fzf_configure_bindings --directory=\ct
