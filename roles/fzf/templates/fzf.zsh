if [[ -f "{{fzf.dir}}/shell/completion.zsh" ]]; then
  source "{{fzf.dir}}/shell/completion.zsh"
fi

if [[ -f "{{fzf.dir}}/shell/key-bindings.zsh" ]]; then
  source "{{fzf.dir}}/shell/key-bindings.zsh"
fi

alias cdgo='cd $(find $GOPATH/src -maxdepth 4 -type d | fzf --with-nth=6,7,8,9 -d/)'
