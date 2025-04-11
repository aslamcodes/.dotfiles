# Autobots Rollout 🤖

echo "Deleting junks"
rm -rf $HOME/.config/nvim 
rm -rf $HOME/.config/zed
rm -rf $HOME/.config/zsh
rm $HOME/.zshrc

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

source $HOME/.zshrc
