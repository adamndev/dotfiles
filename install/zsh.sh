# yes Y | uninstall_oh_my_zsh && rm -r ~/.oh-my-zsh && sudo chsh -s /bin/bash && brew remove zsh && rm -rf /usr/local/etc/grc.zsh && rm -rf ~/.zshrc

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Make zsh default shell
sudo chsh -s $(which zsh)

# Copy zsh configuration
ln -sf $DOTFILES_DIR/zsh/.zshrc ~/.zshrc

git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoupdate
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 

# Install Pure
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# Install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
sudo ./install.sh
cd ..
rm -rf fonts

# Recreate symlinks
$DOTFILES_DIR/dotfiles symlinks

# Fix insecure dir permissions for completions
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions

source $DOTFILES_DIR/zsh/.zshrc

open $DOTFILES_DIR/iterm2/Dracula.itermcolors
