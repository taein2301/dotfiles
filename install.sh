#!/usr/bin/env zsh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "brew update"
# Update Homebrew recipes
brew update


#brew install zsh zsh-completions
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "zshrc setting..."
rm -rf $HOME/.zshrc
ln -s ${PWD}/zsh/zshrc ${HOME}/.zshrc

### 로그인시 last login 시간 없에기
touch ${HOME}/.hushlogin

source ~/.zshrc

# VIM
echo "vimrc setting..."
rm -rf $HOME/.vim
mkdir -p $HOME/.vim
rm -rf $HOME/.vimrc
ln -s ${PWD}/vim/vimrc ${HOME}/.vimrc
ln -s ${PWD}/vim/vimrc_mac.vim ${HOME}/.vim/vimrc_mac.vim

cp -rfp ${PWD}/vim/colors $HOME/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
