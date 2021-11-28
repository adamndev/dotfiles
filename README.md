# `HOME SWEET ~/`

These are the dotfiles and configurations I use to set up my development machine from scratch.

![iTerm2.app](/screenshot.png?raw=true 'iTerm2')

Contains:

1. [System defaults](https://github.com/adamndev/dotfiles/blob/master/macos/defaults.sh) and [Dock icons setup](https://github.com/adamndev/dotfiles/blob/master/macos/dock.sh)
2. [Git config with aliases](https://github.com/adamndev/dotfiles/blob/master/dots/.gitconfig), [Git global ignore](https://github.com/adamndev/dotfiles/blob/master/dots/.gitignore_global)
3. [Global aliases](https://github.com/adamndev/dotfiles/blob/master/dots/.aliases)
4. Custom [/etc/hosts](https://github.com/adamndev/dotfiles/blob/master/etc/hosts) file with blocked Ads, Trackers & 🔥 stuff on internet
5. `ProFont for Powerline` used in iTerm2
6. Packages / CLI (brew, brew cask, openssl, composer, php 7.2, php 8.0, git, nvm with node/npm, LTS node with latest working npm, thefuck, wget, zsh, zsh-completions)
7. Applications (raycast, google-chrome, slack, vlc, vscode, sequel-pro, insomnia, iterm2, lastpass, appcleaner, zoom)
8. `dotfiles` binary to manage dotfiles functions with autocomplete

## Install

On fresh installation of MacOS:

```bash
mkdir p ~/projects/dotfiles && cd ~/projects/dotfiles
git clone https://github.com/adamndev/dotfiles.git ~/projects/dotfiles
cd ~/projects/dotfiles/install
chmod +wx install.sh
chmod -R +wx ~/projects/dotfiles/bin
./install.sh
```

## Additional steps

1. mackup restore
2. Sync VScode settings
3. `sudo reboot`
4. Enjoy

## The `dotfiles` command

    $ dotfiles
    ￫ Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, composer)
       clean            Clean up caches (brew, npm, yarn, composer)
       brew             Run brew script
       composer         Run composer script
       node             Run node setup script
       npm              Run npm setup script
       php              Run php script
       xdebug           Run xdebug script
       zsh              Run oh my zsh script
       symlinks         Run symlinks script
       defaults         Run MacOS defaults script
       dock             Run MacOS dock script
       hosts            Run hosts script

## Credits

Originally forked from [@mihaliak](https://github.com/mihaliak/dotfiles)

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
