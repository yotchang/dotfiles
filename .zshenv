export ZSH_HOME=~/dotfiles

## LANG
#
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

[ -d "/usr/local/bin" ] && export PATH="/usr/local/bin:$PATH"
[ -d "/usr/local/sbin" ] && export PATH="/usr/local/sbin:$PATH"

# Pythonのvirtualenv設定
[ -d "$HOME/.virtualenvs" ] && export WORKON_HOME=$HOME/.virtualenv

# Rubyのrbenv設定
which rbenv > /dev/null
erbenv=$?
if [[ $ervenv -eq 0 ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
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

# プラットフォーム固有設定
#
[ -f "$ZSH_HOME/.zshenv.$PLATFORM" ] && source "$ZSH_HOME/.zshenv.$PLATFORM"

## ローカル固有設定
#
[ -f "$ZSH_HOME/.zshenv.local" ] && source "$ZSH_HOME/.zshenv.local"
