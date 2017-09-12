if [[ -f "{{fzf.dir}}/shell/completion.zsh" ]]; then
  source "{{fzf.dir}}/shell/completion.zsh"
fi

if [[ -f "{{fzf.dir}}/shell/key-bindings.zsh" ]]; then
  source "{{fzf.dir}}/shell/key-bindings.zsh"
fi

godirs() {
  find $GOPATH/src -mindepth 2     \
    \( -name '.git'   -prune \) -o \
    \( -name '_*'     -prune \) -o \
    \( -name '.*'     -prune \) -o \
    \( -name 'vendor' -prune \) -o \
    \( -type d        -print \)    |  fzf --with-nth=6.. -d /
}

cdgo() {
  cd $(godirs)
}
