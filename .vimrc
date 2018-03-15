" Tiny vim
if 0 | endif

" Plain Vim
" from git
if('$GIT_DIR')
  finish
endif

if &compatible
  set nocompatible
endif


" base settings(minimal)
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/.vim/rc/base.vim'

" loader will re-write when deploy
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/.vim/rc/loader.vim'
