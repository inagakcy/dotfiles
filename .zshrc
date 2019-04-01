ZSH_THEME="robbyrussell"

export PATH=/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin

export PATH=/Users/d-inagaki/.nodebrew/current/bin:$PATH
export PATH=/Users/d-inagaki/Library/Android/sdk/platform-tools:$PATH
export PATH=/Users/d-inagaki/Library/Android/sdk/tools:$PATH
export PATH=/Users/d-inagaki/Library/Android/sdk/emulator:$PATH
export JAVA_HOME='/Users/d-inagaki/jdk-11.0.2.jdk/Contents/Home'
#export PATH="/Applications/Android Studio.app/Contents/gradle/gradle-4.10.1/bin":$PATH
export PATH=/usr/local/Cellar/gradle/5.3/bin:$PATH
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`



#source $ZSH/oh-my-zsh.sh
# 環境変数
export LANG=ja_JP.UTF-8
# 色を使用出来るようにする
autoload -Uz colors
colors
# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit
#ヒストリ
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
# 履歴をインクリメンタルに追加
setopt inc_append_history
# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# lsの色付け
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# オプション
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
# beep を無効にする
setopt no_beep
# フローコントロールを無効にする
setopt no_flow_control
# Ctrl+Dでzshを終了しない
setopt ignore_eof
# '#' 以降をコメントとして扱う
setopt interactive_comments
# ディレクトリ名だけでcdする
setopt auto_cd
# 同時に起動したzshの間でヒストリを共有する
setopt share_history
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
# 高機能なワイルドカード展開を使用する
setopt extended_glob

PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

###################################
# alias
alias vi='vim'
alias sl='ls -GF'
alias ll='ls -la'
alias ls="ls -GF"
alias gls="gls --color"
alias hist="history"
alias cdw="cd /Users/d-inagaki/workspace"
alias g="git"
alias gi="git"
alias cdan="cd ~/Library/Android/sdk/tools"
alias do="docker"
alias c="cd"
alias sed="gsed"
alias pls="ps aux"
alias sls="du -sh ./*"
###################################

# これいいね！
function sample {
}
