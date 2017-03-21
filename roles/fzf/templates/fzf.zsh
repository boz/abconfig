if [[ -f "{{fzf.dir}}/shell/completion.zsh" ]]; then
  source "{{fzf.dir}}/shell/completion.zsh"
fi

if [[ -f "{{fzf.dir}}/shell/key-bindings.zsh" ]]; then
  source "{{fzf.dir}}/shell/key-bindings.zsh"
fi
