" ===
" dein
" ===

" dein works only above 7.4
if v:version < 704
  finish
endif

let s:dein_dir = expand('~/.vim/bundle')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" if non-exist, clone dein entity
if !isdirectory(s:dein_repo_dir)
  if v:version < 800
    execute '!git clone -b 1.5 https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
  else
    execute '!git clone https://github.com/Shougo/dein.vim.git' s:dein_repo_dir
  endif
endif

execute 'set runtimepath^=' . s:dein_repo_dir

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('~/.vim')

  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  " call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable


" if you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
