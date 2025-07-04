set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"

# ollama
set -gx OLLAMA_MODELS "$XDG_DATA_HOME/ollama"

# go
set -gx GOPATH "$XDG_DATA_HOME/go"

# haskell
set -gx CABAL_DIR "$XDG_DATA_HOME/cabal"
set -gx GHCUP_INSTALL_BASE_PREFIX "$XDG_DATA_HOME"

# rust
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"

# git
set -gx GIT_CONFIG_GLOBAL "$XDG_CONFIG_HOME/git/gitconfig"

# bash hist
set -gx HISTFILE "$XDG_STATE_HOME/bash/history"

set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# mouse cursors
set -gx XCURSOR_PATH /usr/share/icons "$XDG_DATA_HOME/icons"

# python
# how to set idlerc?
set -gx RUFF_CACHE_DIR "$XDG_CACHE_HOME/ruff"
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python/history"
set -gx VIRTUALFISH_HOME "$XDG_CONFIG_HOME/virtualenvs"

# set -gx GNUPGHOME "$XDG_DATA_HOME"/gnupg
# set -gx RIPGREP_CONFIG_PATH "$XDG_CONFIG_HOME/ripgrep/ripgreprc"
