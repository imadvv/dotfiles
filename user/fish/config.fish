if status is-interactive
    export LC_CTYPE=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    export LANGUAGE=en_US.UTF-8
    export LANG=en_US.UTF-8

    export EDITOR=nvim
    fish_vi_key_bindings

    function fish_greeting
        echo Hello friend!
        echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
    end
    starship init fish | source
    fish_add_path $HOME/bin
    fish_add_path $HOME/.zig
    fish_add_path $HOME/.local/share/coursier/bin
    fish_add_path $HOME/.local/share/pnpm
    fish_add_path $HOME/.alire/bin/
    fish_add_path $HOME/.julia-1.10/bin
    fish_add_path $HOME/.luarocks/bin
    fish_add_path $HOME/.nimble/bin
    fish_add_path $HOME/.racket/bin
    fish_add_path $HOME/.cargo/bin
    fish_add_path $HOME/go/bin
    fish_add_path /usr/local/go/bin
    fish_add_path /$HOME.local/share/fnm
    fish_add_path $HOME/.bun/bin/
    fish_add_path $HOME/bin/clojure/bin

    set -gx PNPM_HOME "$HOME/.local/share/pnpm"




    set --local ghcup $HOME/.ghcup

    set --query GHCUP_INSTALL_BASE_PREFIX
    and set ghcup $GHCUP_INSTALL_BASE_PREFIX/.ghcup

    if test -f $ghcup/env && not contains -- $ghcup/bin $fish_user_paths
        fish_add_path --prepend --move --path $ghcup/bin
    end

    if not contains -- $HOME/.cabal/bin $fish_user_paths
        fish_add_path --prepend --move --path $HOME/.cabal/bin
    end

    if not contains -- $HOME/.local/bin $fish_user_paths
        fish_add_path --prepend --move --path $HOME/.local/bin
    end

    source $HOME/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true
    alias fd fdfind
end
