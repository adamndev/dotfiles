# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

brew tap homebrew/core
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap shopify/shopify

brew install dockutil
brew install openssl
brew install nmap
brew install git
brew install wget
brew install mysql
brew install autoconf
brew install pkg-config
brew install node
brew install vim
brew install grep
brew install awscli
brew install composer
brew install zsh
brew install zsh-completions
brew install autojump
brew install cmatrix
brew install svn
brew install npm
brew install php

echo "Installing fonts"
brew install --cask font-fira-code
brew install --cask font-fira-sans
brew install --cask font-fontawesome
brew install --cask font-source-code-pro
brew install --cask font-source-sans-pro

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Basic brew packages are installed."

brew install --cask dropbox
brew install --cask vlc
brew install --cask slack
brew install --cask figma
brew install --cask google-chrome
brew install --cask nordvpn
brew install --cask raycast
brew install --cask iterm2
brew install --cask ngrok
brew install --cask visual-studio-code
brew install --cask visual-studio-code-insiders
brew install --cask tinkerwell
brew install --cask docker
brew install --cask insomnia
brew install --cask tableplus
brew install --cask appcleaner
brew install --cask the-unarchiver
brew install --cask fig
brew install --cask font-hack-nerd-font

brew cleanup

# Stop nginx service running on boot
sudo brew services stop nginx

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Brew additional applications are installed."
