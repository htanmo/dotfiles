if status is-interactive
end

# Rust Cargo path
set PATH $PATH ~/.cargo/bin;

set -U fish_greeting ""

set -U fish_features stderr-nocaret qmark-noglob

# Zoxide
zoxide init fish | source
