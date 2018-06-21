let s:basedir = expand('<sfile>:h')
let s:files   = sort(glob(s:basedir . "/conf.d/*.nvim", 0, 1),'n')

let g:abconfig_fzf_dir    = '{{fzf.dir}}'
let g:abconfig_has_fzf    = 0

let g:abconfig_dein_dir   = '{{neovim.dein.installdir}}'
let g:abconfig_bundle_dir = '{{neovim.dein.bundledir}}'

let g:abconfig_pkg_mgr    = '{{ansible_pkg_mgr}}'

for file in s:files
  execute "source " . file
endfor
