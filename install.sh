
sudo apt-get install ctags L9

mv .. ~/.vim
if [ -e ~/.vimrc ]; then 
   echo "You already have a .vimrc specified.  Make sure you have updated the vimrc in this repository with anything you want to retain and delete the one in your home directory."
   exit 1
fi

exit 0
ln -s ~/.vim/vimrc ~/vimrc
ln -s ~/.vim/gvimrc ~/gvimrc

cd ~/.vim
git submodule update --init
mkdir autoload
ln -s ~/.vim/bundle/pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

