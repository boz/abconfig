let s:basedir = expand('<sfile>:h')
let s:files   = sort(glob(s:basedir . "/conf.d/*.nvim", 0, 1),'n')

for file in s:files
  execute "source " . file
endfor
