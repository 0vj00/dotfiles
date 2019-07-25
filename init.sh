
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim

brew install --HEAD universal-ctags/universal-ctags/universal-ctags

mkdir -p ~/.config ~/.config/nvim

cp ~/dotfiles/vimrc ~/.config/nvim/init.vim
