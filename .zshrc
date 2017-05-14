# God
# 2017-05-14

export ZSH=/home/edv/.oh-my-zsh
ZSH_THEME="flazz"
plugins=(git alias-tips zsh-256color)

source $ZSH/oh-my-zsh.sh


# Powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi

alias de="deactivate"
alias runpy="python run.py"
alias music="ncmpcpp"
alias mon="/usr/share/dualmon.sh"
alias a="./a.out"
alias wtr="curl -g -s wttr.in | head -7"
