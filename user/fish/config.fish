if status is-interactive
    source (/usr/bin/starship init fish --print-full-init | psub)
    fish_vi_key_bindings
    set -U fish_greeting
end
