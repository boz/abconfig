export PATH="${PATH:+${PATH}:}{{fzf.dir}}/bin"

if [[ -f "/usr/share/fzf/completion.zsh" ]]; then
  source "/usr/share/fzf/completion.zsh"
fi

if [[ -f "/usr/share/fzf/key-bindings.zsh" ]]; then
  source "/usr/share/fzf/key-bindings.zsh"
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
