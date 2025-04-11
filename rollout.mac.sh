# Autobots Rollout 🤖
echo "Deleting junks"
rm -rf $HOME/.config/*
rm $HOME/.zshrc

# Nvim 
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim

echo "Brewing up LSPs"
brew install terraform-ls  >/dev/null 2>&1
brew install gopls >/dev/null 2>&1
brew install luals >/dev/null 2>&1

echo "You can say 'I use nvim, btw'"

# ZSH
ln -s $HOME/.dotfiles/zsh/zsh $HOME/.config/
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
echo "Zsh can now Zsh w plugins"

# ZED
ln -s $HOME/.dotfiles/zed $HOME/.config/zed
echo "Zed for 'Take it slow guys(soydevs)'"

# Ghostty
echo "Ghostty 👻"
brew install --cask ghostty  >/dev/null 2>&1
ln -s $HOME/.dotfiles/ghostty $HOME/.config/ghostty

echo "All Set"
