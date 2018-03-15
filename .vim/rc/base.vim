" ===
" general
" ===
" visual
set title
set number
set cursorline
set ruler
set showmatch
set laststatus=2
colorscheme koehler

set pumheight=10  " complemention


" ===
" syntax
" ===
syntax on

" ()
set showmatch
set matchtime=1

" decimal expr
set nrformats=    " all num parsed as decimal
nnoremap + <C-a>
nnoremap - <C-x>


" ===
" controll
" ===
set backspace=indent,eol,start
nnoremap j gj
nnoremap k gk
nnoremap Y y$     " yank to endline
nnoremap <Space>b <C-b>
nnoremap <Space>f <C-f>

" search
set ignorecase
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" ===
" indent
" ===
set expandtab
set smartindent
set shiftwidth=2  " vim-gen(auto)
set tabstop=2     " load
set softtabstop=2 " input


" ===
" file
" ===
set encoding=utf-8
set nobackup

" ===
" scripts
" ===
autocmd BufWritePre * :%s/\s\+$//ge
