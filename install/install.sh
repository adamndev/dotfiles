export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

sudo softwareupdate -i -a
xcode-select --install

# Create snapshot
tmutil snapshot

# Install brew with packages & casks
. "$DOTFILES_DIR/install/brew.sh"

# Install composer global packages
. "$DOTFILES_DIR/install/composer.sh"

# Install nvm, node, npm, yarn
. "$DOTFILES_DIR/install/node_setup.sh"

# Install npm global packages
. "$DOTFILES_DIR/install/npm.sh"

# Install php
. "$DOTFILES_DIR/install/php.sh"

# Install xdebug
#. "$DOTFILES_DIR/install/xdebug.sh"

# Install oh my zsh
. "$DOTFILES_DIR/install/zsh.sh"

# Bunch of symlinks
. "$DOTFILES_DIR/install/symlinks.sh"

# Setup macos defaults
. "$DOTFILES_DIR/macos/defaults.sh"

# Setup dock icons
. "$DOTFILES_DIR/macos/dock.sh"

# Clear cache
. "$DOTFILES_DIR/dotfiles" clean

# Replace default hosts file
. "$DOTFILES_DIR/install/hosts.sh"

# Add keys from keychain to ssh agent
ssh-add -A 2>/dev/null;

# Create snapshot
tmutil snapshot

echo "Now REBOOT!"
