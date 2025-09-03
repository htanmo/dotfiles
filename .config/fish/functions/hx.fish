function hx --wraps helix --description "Alias for Helix Editor"
    if test -e /etc/arch-release
        helix $argv
    end
end
