#!/bin/sh

# Vim setup
mkdir -p ~/.vim/autoload  ~/.vim/bundle ~/.vim/colors
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/morhetz/gruvbox
cp gruvbox/colors/gruvbox.vim ~/.vim/colors/
rm -rf gruvbox
git clone https://github.com/ctrlpvim/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/syntastic
git clone https://github.com/tpope/vim-commentary ~/.vim/bundle/vim-commentary
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter
git clone https://github.com/pangloss/vim-javascript ~/.vim/bundle/vim-javascript
git clone https://github.com/mxw/vim-jsx ~/.vim/bundle/vim-jsx
