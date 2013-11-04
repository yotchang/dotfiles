# antigen 設定
[ -f "$ZSH_HOME/.zshrc.antigen" ] && source "$ZSH_HOME/.zshrc.antigen"

# Python virtualenv 設定
[ -x `whence -p virtualenvwrapper.sh` ] && source virtualenvwrapper.sh

# Ruby rbenv 設定
[ -x `whence -p rbenv` ] && eval "$(rbenv init -)"

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst
setopt transient_rprompt

autoload colors
colors
case ${UID} in
0)
    PROMPT="%B%{${fg[red]}%}%/#%{${reset_color}%}%b "
    PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
    SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
    ;;
*)
    #
    # Color
    #
    DEFAULT=$'%{\e[1;0m%}'
    RESET="%{${reset_color}%}"
    GREEN="%{${fg[green]}%}"
    BLUE="%{${fg[blue]}%}"
    RED="%{${fg[red]}%}"
    CYAN="%{${fg[cyan]}%}"
    WHITE="%{${fg[white]}%}"
    #POH="(,,ﾟДﾟ) $"
    POH="%(?.${GREEN}:).${RED}:()"

    #
    # Prompt
    #
    PROMPT='%{$fg_bold[blue]%}${USER}@%m ${RESET}${WHITE}${POH} ${RESET}'
    RPROMPT='${RESET}${WHITE}[${BLUE}%(5~,%-2~/.../%2~,%~)% ${WHITE}]${RESET}'

    ;;
esac

# 指定したコマンド名がなく、ディレクトリ名と一致した場合 cd する
setopt auto_cd

# cd でTabを押すとdir list を表示
setopt auto_pushd

# ディレクトリスタックに同じディレクトリを追加しないようになる
setopt pushd_ignore_dups

# コマンドのスペルチェックをする
setopt correct

# コマンドライン全てのスペルチェックをする
#setopt correct_all

# 上書きリダイレクトの禁止
setopt no_clobber

# 補完候補リストを詰めて表示
setopt list_packed

# auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示
setopt list_types

# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# カッコの対応などを自動的に補完する
setopt auto_param_keys

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# 補完キー（Tab,  Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt auto_menu

# sudoも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

# 色付きで補完する
zstyle ':completion:*' list-colors di=34 fi=0

# 最後がディレクトリ名で終わっている場合末尾の / を自動的に取り除かない
setopt noautoremoveslash

# beepを鳴らさないようにする
setopt nolistbeep

# ヒストリ
HISTFILE=$ZSH_HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups # 直前のコマンドの重複を削除する。
setopt hist_ignore_all_dups # 重複するコマンドが記録される時、古い方を削除する。
setopt hist_save_no_dups # 重複するコマンドが保存される時、古い方を削除する。
setopt hist_reduce_blanks # 余分なスペースを削除する。
setopt inc_append_history
setopt share_history
setopt hist_no_store

# コマンド名に / が含まれているとき PATH 中のサブディレクトリを探す
setopt path_dirs

## alias設定
#
[ -f "$ZSH_HOME/.zshrc.alias" ] && source "$ZSH_HOME/.zshrc.alias"

## functionの設定
#
[ -f "$ZSH_HOME/.zshrc.function" ] && source "$ZSH_HOME/.zshrc.function"

## プラットフォーム設定
#
[ -f "$ZSH_HOME/.zshrc.$PLATFORM" ] && source "$ZSH_HOME/.zshrc.$PLATFORM" 

# ローカル固有設定
#
[ -f "$ZSH_HOME/.zshrc.local" ] && source "$ZSH_HOME/.zshrc.local"
