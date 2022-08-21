if status is-interactive
    # Commands to run in interactive sessions can go here
end

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
