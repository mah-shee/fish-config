# setting for xdg config dir
set XDG_CONFIG_DIRS /etc/xdg

# settings for peco key bindings
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
  bind \c] peco_select_ghq_repository
  bind \cx\cr peco_recentd
end

# setting for pyenv
set PATH $HOME/.pyenv/shims $PATH
eval (pyenv init - | source)

# settings for node
set -x PATH $HOME/.nodebrew/current/bin $PATH

# setting for rbenv
rbenv init - | source

# path for flutter
set -x PATH /Users/masatoshi/git/github.com/flutter/flutter/bin $PATH

# paths for go
set -x GOPATH $HOME/dev
set -x PATH $PATH $GOPATH/bin

# setting for fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/llvm/lib"
set -gx CPPFLAGS "-I/usr/local/opt/llvm/include"
# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/masatoshi/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/masatoshi/.ghcup/bin $PATH

# For compilers to find readline you may need to set:
set -gx LDFLAGS "-L/usr/local/opt/readline/lib"
set -gx CPPFLAGS "-I/usr/local/opt/readline/include"

# For pkg-config to find readline you may need to set:
set -gx PKG_CONFIG_PATH "/usr/local/opt/readline/lib/pkgconfig"
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths

set -gx LDFLAGS "-L/usr/local/opt/sqlite/lib"
set -gx CPPFLAGS "-I/usr/local/opt/sqlite/include"

#For pkg-config to find sqlite you may need to set:
set -gx PKG_CONFIG_PATH "/usr/local/opt/sqlite/lib/pkgconfig"
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
