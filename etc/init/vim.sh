echo "init/vim.sh runninig..."

# tune loader.vim with environment
path=$HOME/.vim/rc/loader.vim

> $path
cmd="execute 'source' fnamemodify(expand('<sfile>'), ':h').'/dein.vim'"
echo $cmd >> $path


echo "init/vim.sh done!"
