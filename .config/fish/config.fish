if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx TERM xterm-256color

set fish_greeting
set -gx EDITOR nvim
fzf_configure_bindings --directory=\ct

# pnpm
set -gx PNPM_HOME "/home/devendr4/.local/share/pnpm"

if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
