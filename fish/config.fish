set -U fish_greeting ""

set -gx TERM xterm-256color
set -gx EDITOR nvim

# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# PATH
set -e PATH
set -gx PATH /bin $PATH
set -gx PATH /sbin $PATH
set -gx PATH /usr/bin $PATH
set -gx PATH /usr/sbin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/sbin $PATH
set -gx PATH /opt/homebrew/opt/llvm/bin $PATH
set -gx PATH /usr/local/share/dotnet $PATH
set -gx PATH /Library/Apple/usr/bin $PATH
set -gx PATH /Users/rkarish/.pyenv/shims $PATH
set -gx PATH /Users/rkarish/.local/bin $PATH

# Aliases
alias ls "exa -lha -s name --icons --git --classify"
alias lst "ls -RTL"
alias vi "nvim"

# Airflow
set -gx AIRFLOW_HOME ~/airflow
source /Users/rkarish/Projects/apache/airflow/dev/breeze/autocomplete/breeze-complete-fish.sh

# Homebrew
alias brew "env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"
set -gx HOMEBREW_NO_ENV_HINTS True

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

# llvm
set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"
