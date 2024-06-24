# `HOME SWEET ~/`

These are the dotfiles and configurations I use to set up my development machine from scratch.

![iTerm2.app](/screenshot.png?raw=true 'iTerm2')

## Install

On fresh installation of MacOS:

```bash
mkdir -p ~/projects/dotfiles && cd ~/projects/dotfiles
git clone https://github.com/adamndev/dotfiles.git ~/projects/dotfiles
cd ~/projects/dotfiles/install
chmod +wx install.sh
chmod -R +wx ~/projects/dotfiles/bin
./install.sh
```

## Additional steps

- setup Dropbox
- Setup Fig

## Credits

Originally forked from [@mihaliak](https://github.com/mihaliak/dotfiles)

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
