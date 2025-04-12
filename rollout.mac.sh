# Autobots Rollout 🤖

echo "Deleting junks"
rm -rf $HOME/.config/*
rm $HOME/.zshrc

# Brews & Installs
echo "Getting the ingredients"
brew install nvim >/dev/null 
echo "+ Nvim"
brew install tmux >/dev/null
echo "+ Tmux"
open https://zed.dev/download
echo "+ Zed"
brew install --cask ghostty  >/dev/null 
echo "+ Ghossty"
 
# Nvim 
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim

echo "Brewing up LSPs"
brew install terraform-ls  >/dev/null 
brew install gopls >/dev/null 
brew install lua-language-server >/dev/null 
echo "You can say 'I use nvim, btw'"

# ZSH
ln -s $HOME/.dotfiles/zsh/zsh $HOME/.config/
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
git submodule init
git submodule update
echo "Zsh can now Zsh w plugins"

# ZED
ln -s $HOME/.dotfiles/zed $HOME/.config/zed
echo "Zed for 'Take it slow guys and for soydevs'"

# TMUX
ln -s $HOME/.dotfiles/tmux $HOME/.config/tmux
ln -s $HOME/.dotfiles/tmux/.tmux.conf $HOME/.tmux.conf

# Ghostty
echo "Ghostty 👻"
ln -s $HOME/.dotfiles/ghostty $HOME/.config/ghostty

echo "All Set"
