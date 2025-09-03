if status is-interactive
end

set -U fish_greeting

# editor
if test -e /etc/arch-release
    set -gx EDITOR helix
else
    set -gx EDITOR hx
end

# Set GOPATH
set -x GOPATH ~/go

# Add GOPATH/bin to PATH
fish_add_path $GOPATH/bin

# zoxide
zoxide init fish | source