# Homebrew installs pecl with an incorrect symlink. Remove it before installing xdebug.
# https://javorszky.co.uk/2018/05/03/getting-xdebug-working-on-php-7-2-and-homebrew/
rm -rf /usr/local/Cellar/php/8.0.6/pecl
yes Y | pecl install xdebug

# Symlink xdebug config
ln -svf $DOTFILES_DIR/php/xdebug.ini /usr/local/etc/php/8.0/conf.d/xdebug.ini

# Restart php
brew services restart php
php -v

# Grant permissions to xdebug scripts
sudo chmod 755 $DOTFILES_DIR/php/enable-xdebug.sh
sudo chmod 755 $DOTFILES_DIR/php/disable-xdebug.sh