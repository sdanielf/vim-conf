common/cloneorpull.sh git://github.com/b4winckler/vim.git vim
cd vim
./configure --enable-pythoninterp --with-features=huge
make
sudo make install
