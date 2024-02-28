if status is-interactive
end

# Rust Cargo path
set PATH $PATH ~/.cargo/bin;

# Go Path
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

set -U fish_greeting ""

set -gx TERM xterm-256color

set -U fish_features stderr-nocaret qmark-noglob

# Zoxide
zoxide init fish | source
