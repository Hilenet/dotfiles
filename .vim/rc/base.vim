"===
" visual
" ===

set title
set number
set cursorline
set ruler
set laststatus=2

set t_Co=256
colorscheme koehler

set pumheight=10


" ===
" controll
" ===
set backspace=indent,eol,start
nnoremap j gj
nnoremap k gk
nnoremap Y y$
nnoremap <Space>b <C-b>
nnoremap <Space>f <C-f>

set ignorecase
set wrapscan
set hlsearch
nmap <silent> <Esc><Esc> :nohlsearch<CR><Esc>


" ===
" style
" ===
syntax on

set showmatch
set matchtime=1

set nrformats=    " all num parsed as decimal
nnoremap + <C-a>
nnoremap - <C-x>

set encoding=utf-8
set nobackup

nnoremap :bs<CR> :buffers<CR>

autocmd BufWritePre * :%s/\s\+$//ge


" ===
" indent
" ===
set expandtab
set smartindent
set shiftwidth=2  " vim-gen(auto)
set tabstop=2     " load
set softtabstop=2 " input

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.c setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.go setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

