vim-conf
========
Configuration files, installation and usage instructions needed to turn Vim
into a modern IDE.

First steps
-----------
You will need Git and Vim compiled with python support. Some distros like
Debian, Ubuntu and ArchLinux provide packages like gvim or vim-nox.

### Installing all plugins with Vundle
Make sure to create ~/.vim/bundle. Then you can clone Vundle.
```bash
cd ~/.vim/bundle
git clone git://github.com/gmarik/vundle
```

Then copy the vimrc file to ~/.vimrc and run Vim.
Once vim is open, you can start downloading plugins through the command
`:BundleInstall`.

Install script
--------------
(Under construction)

Run ``install.sh`` and it will install all what you need.
