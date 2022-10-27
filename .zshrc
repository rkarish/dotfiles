# Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
zle_highlight=("paste:none")
source $ZSH/oh-my-zsh.sh

autoload -Uz compinit bashcompinit
compinit
bashcompinit

# PATH
export PATH="$PATH:/bin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/opt/homebrew/sbin"
export PATH="$PATH:/usr/local/share/dotnet"
export PATH="$PATH:/Library/Apple/usr/bin"
export PATH="$PATH:/Users/rkarish/.pyenv/shims"
export PATH="$PATH:/Users/rkarish/.local/bin"
typeset -aU path

# Aliases
alias ls="exa -lha -s name --icons --git --classify"
alias lst="ls -RTL"
alias vi="nvim"

# Airflow
export AIRFLOW_HOME="~/airflow"
source /Users/rkarish/Projects/apache/airflow/dev/breeze/autocomplete/breeze-complete-zsh.sh

# Homebrew
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
export HOMEBREW_NO_ENV_HINTS=True

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin/:$PATH"
eval "$(pyenv init -)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# llvm
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"