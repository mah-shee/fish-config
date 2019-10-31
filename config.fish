function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
  bind \c] peco_select_ghq_repository
  bind \cx\cr peco_recentd
end
set -U FZF_LEGACY_KEYBINDINGS 0
set PATH $HOME/.pyenv/shims $PATH
eval (pyenv init - | source)
set -x PATH $HOME/.nodebrew/current/bin $PATH
