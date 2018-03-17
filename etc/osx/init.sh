echo "--> osx initializing start..."
# ===
# installation for osx
# ===

for f in etc/osx/.??*
do
  filename=$(basename $f)
  ln -sfnv $(cd $(dirname $f) && pwd)/$filename $HOME/$filename
done

echo "<-- osx initializing done!"
