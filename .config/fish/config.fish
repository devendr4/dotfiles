alias runner="ssh root@206.189.115.220"

alias algo-node="ssh root@159.89.181.135"

alias testnet-node="ssh root@137.184.44.109"


alias wallet-dev="ssh root@159.65.221.171"

alias wallet-prod= "ssh root@137.184.202.212"



alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'


export TERM=xterm-256color
fzf_configure_bindings --directory=\ct
set -gx EDITOR nvim

alias cat="bat --style=plain"
alias vim="nvim"
alias vi="nvim"
alias g='git'
alias python="python3" 
alias pip="pip3"


abbr y "yarn"
abbr ya "yarn add"
abbr yad "yarn add -D"
abbr yb "yarn build"
abbr yd "yarn dev"
abbr ye "yarn e2e"
abbr yg "yarn generate"
abbr yl "yarn lint"
abbr yt "yarn test"
abbr yu "yarn ui"

abbr c "clear"
abbr cl "clear"
abbr claer "clear"
abbr clera "clear"
abbr cx "chmod +x"
abbr dc "docker compose"
abbr dcd "docker compose down"
abbr dcdv "docker compose down -v"
abbr dcr "docker compose restart"
abbr dcu "docker compose up -d" 



set fish_greeting
set fish_vi_key_bindings
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one underscore
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block

# fish colors
set -U fish_color_autosuggestion grey
set -U fish_color_command green 
set -U fish_color_error red
set -U fish_color_param cyan
set -U fish_color_redirections yellow
set -U fish_color_terminators white
set -U fish_color_valid_path green


set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
