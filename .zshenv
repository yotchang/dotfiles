export ZSH_HOME=~/dotfiles

## LANG
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# 重複パスを登録しない
typeset -U path cdpath fpath manpath

## sudo用のpathを設定
typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({/usr/local,/usr}/sbin(N-/))

# pathを設定
path=({/usr/local,/usr}/bin(N-/) ${path})

## function
source "$ZSH_HOME/.zshenv.function"

# Python virtualenv
if is_executable "/usr/local/bin/python3"; then
  if is_executable "virtualenvwrapper.sh"; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    export WORKON_HOME=$HOME/.virtualenvs
    source "virtualenvwrapper.sh"
  fi
fi

# Ruby rbenv
if is_executable "rbenv"; then
  path=("$HOME/.rbenv/bin"(N-/) ${path})
  eval "$(rbenv init - zsh)"
fi

case $OSTYPE in
  linux*)
    PLATFORM='linux'
  ;;
  darwin*)
    PLATFORM='osx'
  ;;
esac

export PLATFORM

# Plathome
#
[ -f "$ZSH_HOME/.zshenv.$PLATFORM" ] && source "$ZSH_HOME/.zshenv.$PLATFORM"

## local
#
[ -f "$HOME/.zshenv.local" ] && source "$HOME/.zshenv.local"
