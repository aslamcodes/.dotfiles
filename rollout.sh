# Autobots Rollout 🤖

echo "Deleting junks"
rm -rf ~/.config/nvim 
rm -rf ~/.config/zed
rm -rf ~/.config/zsh

# Nvim 
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim
echo "You can say 'I use nvim, btw'"

# ZSH
ln -s $HOME/.dotfiles/zsh/zsh $HOME/.config/
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
echo "Zsh can now Zsh w plugins"

# ZED
ln -s $HOME/.dotfiles/zed $HOME/.config/zed
echo "Zed for 'Take it slow guys(soydevs)'"
