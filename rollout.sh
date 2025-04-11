# Autobots Rollout 🤖

echo "Deleting junks"
rm -rf ~/.config/nvim 
rm -rf ~/.config/zed
rm -rf ~/zsh

# Nvim 
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim
echo "You can say 'I use nvim, btw'"

# ZSH
ln -s $HOME/.dotfiles/zsh/zsh $HOME/.config/
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
rm $HOME/.config/zsh/.zshrc


PLUGIN_DIR="$HOME/.config/zsh/plugins"
mkdir -p "$PLUGIN_DIR"

while read -r line; do
    repo_url=$(echo "$line" | xargs)

    if [[ -z "$repo_url" || "$repo_url" == \#* ]]; then
        continue
    fi

    repo_name=$(basename "$repo_url" .git)
    target_dir="$PLUGIN_DIR/$repo_name"

    if [ -d "$target_dir" ]; then
        echo "✅ $repo_name already exists. Skipping..."
    else
        echo "📥 Cloning $repo_url into $target_dir"
        git clone "$repo_url" "$target_dir"
    fi
done < zsh/zsh/plugins.txt

echo "Zsh can now Zsh w plugins"

# ZED
ln -s $HOME/.dotfiles/zed $HOME/.config/zed
echo "Zed for 'Take it slow guys(soydevs)'"
