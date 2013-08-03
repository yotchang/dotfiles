export ZSH_HOME=~/dotfiles

## LANG
#
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# Pythonのvirtualenv設定
[ -d "$HOME/.virtualenvs" ] && export WORKON_HOME=$HOME/.virtualenv

case $OSTYPE in
  linux*)
    PLATFORM='linux'
  ;;
  darwin*)
    PLATFORM='osx'
  ;;
esac

export PLATFORM

# プラットフォーム固有設定
#
[ -f "$ZSH_HOME/.zshenv.$PLATFORM" ] && source "$ZSH_HOME/.zshenv.$PLATFORM"

## ローカル固有設定
#
[ -f "$ZSH_HOME/.zshenv.local" ] && source "$ZSH_HOME/.zshenv.local"
