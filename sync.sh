#!/bin/bash
cd "$(dirname "$0")"

# get latest changes from repo
git pull

function doIt() {
  rsync --exclude "Brewfile" --exclude "osx.sh" --exclude ".gitmodules" --exclude "code" --exclude "juanchopx2.zsh-theme" --exclude "init.sh" --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" -av . ~

  # Copy Fonts to user's fonts folder
  sh code/fonts/install.sh
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then # override changes without warning
  doIt
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  fi
fi

unset doIt

source $HOME/.zshrc
