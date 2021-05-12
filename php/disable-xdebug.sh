#!/bin/sh

# Remove symlink to xdebug config
unlink /usr/local/etc/php/8.0/conf.d/xdebug.ini

# Restart PHP
brew services restart php

php -v