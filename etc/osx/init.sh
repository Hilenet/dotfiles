echo "--> osx initializing start..."
# ===
# installation for osx
# ===

# XDG config folder
CONF_DIR=$HOME/.config
if ! [[ -d $CONF_DIR ]]; then
  mkdir -p $CONF_DIR
fi

# nvim
brew install nvim
pip3 install --user neovim
ln -sfnv $(pwd)/nvim $CONF_DIR/nvim

# other dotfiles
for f in etc/osx/.??*
do
  filename=$(basename $f)
  ln -sfnv $(cd $(dirname $f) && pwd)/$filename $HOME/$filename
done

echo "<-- osx initializing done!"
