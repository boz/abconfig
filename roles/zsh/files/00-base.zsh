unsetopt share_history \
         correct       \
         autocd        \
         beep          \
         extendedglob  \
         nomatch

setopt appendhistory \
       notify        \
       clobber

alias -L gb >/dev/null && unalias gb
alias rm='nocorrect rm '

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

export VISUAL=vim
export EDITOR=vim
