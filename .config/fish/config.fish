if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""
set -gx TERM xterm-256color

# .local/bin path
set -gx PATH $PATH $HOME/.local/bin

# rust
set -gx PATH $PATH $HOME/.cargo/bin

# golang
set -gx GOROOT /usr/local/go
set -gx PATH $PATH $GOROOT/bin
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin

# zoxide
zoxide init fish | source
