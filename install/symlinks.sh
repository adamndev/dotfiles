ln -sfv "$DOTFILES_DIR/dots/.hushlogin" ~
ln -sfv "$DOTFILES_DIR/dots/.exports" ~
ln -sfv "$DOTFILES_DIR/dots/.functions" ~
ln -sfv "$DOTFILES_DIR/dots/.aliases" ~
ln -sfv "$DOTFILES_DIR/dots/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/dots/.inputrc" ~
ln -sfv "$DOTFILES_DIR/dots/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/dots/.editorconfig" ~
ln -sfv "$DOTFILES_DIR/dots/.eslintrc.js" ~
ln -sfv "$DOTFILES_DIR/dots/.prettierrc.js" ~
ln -sfv "$DOTFILES_DIR/dots/.stylelintrc" ~
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~

# mkdir -p ~/.git/hooks
# ln -sfv "$DOTFILES_DIR/dots/git/hooks/compile.sh" ~/.git/hooks/compile.sh
# ln -sfv "$DOTFILES_DIR/dots/git/hooks/post-merge" ~/.git/hooks/post-merge
# ln -sfv "$DOTFILES_DIR/dots/git/hooks/post-checkout" ~/.git/hooks/post-checkout
# chmod a+x ~/.git/hooks/post-merge
# chmod a+x ~/.git/hooks/post-checkout
