#!/bin/sh

# Symlink xdebug.so
ln -svf $HOME/projects/dotfiles/php/xdebug.ini /usr/local/etc/php/8.0/conf.d/xdebug.ini

# Restart PHP
brew services restart php

php -v