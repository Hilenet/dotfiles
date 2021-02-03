let s:dein_config_dir = expand('$CONFIG/nvim/')
let s:dein_cache_dir = expand('$CACHE/nvim/dein')

if &compatible
  set nocompatible
endif

let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  let s:toml_dir = s:dein_config_dir . '/dein'

  call dein#load_toml(s:toml_dir . '/plugin.toml', {'lazy': 0})
  if has('python3')
      call dein#load_toml(s:toml_dir . '/python.toml', {'lazy': 1})
  endif
  "call dein#load_toml(s:dein_config_dir . '/dein_lazy.toml', {'lazy': 0})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
