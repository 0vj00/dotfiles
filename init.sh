
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim


mkdir -p ~/.config ~/.config/nvim


ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim
