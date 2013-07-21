export ZSH_HOME=~/dotfiles

## LANG
#
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# create nicer name
if [[ "$OS" == 'Darwin' ]];then
  PLATFORM='osx'
elif [[ "$OS" == 'Linux' ]];then
  PLATFORM='linux'
fi

export PLATFORM

# プラットフォーム固有設定
[ -f "$ZSH_HOME/.zshenv.$PLATFORM" ] && source "$ZSH_HOME/.zshenv.$PLATFORM"

## ローカル固有設定
[ -f ~/.zshenv.local ] && source ~/.zshenv.local
