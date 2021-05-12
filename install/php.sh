brew tap shivammathur/php

# Cleaup existing
# pecl uninstall xdebug
# brew remove --force php
# brew cleanup php
# sudo rm -rf /usr/local/Cellar/php
# rm -rf /usr/local/etc/php
# rm -rf /usr/local/Cellar/php

brew install shivammathur/php/php@7.2
brew install shivammathur/php/php@8.0
brew link --overwrite --force php@8.0

# PHP extensions
yes Y | pecl install redis
yes Y | pecl install imagick

# Symlink PHP.ini
ln -svf $DOTFILES_DIR/php/php.ini /usr/local/etc/php/8.0/php.ini

# Restart php
brew services restart php
php -v
