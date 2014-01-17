git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc

vim +BundleInstall +qall
