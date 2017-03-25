unsetopt share_history \
         correct       \
         autocd        \
         beep          \
         extendedglob  \
         nomatch       \
         noclobber

setopt appendhistory    \
       incappendhistory \
       notify

alias -L gb >/dev/null && unalias gb
alias rm='nocorrect rm '

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

export VISUAL=vim
export EDITOR=vim

if [ -d ~/bin ]; then
  export PATH=$PATH:~/bin
fi
