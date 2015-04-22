# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# extra repos
taps=(
  homebrew/dupes
  homebrew/versions
  homebrew/homebrew-php
)

echo "Installing extra repos..."
brew tap ${taps[@]}

# Update homebrew recipes with added taps
brew update

binaries=(
  bash
  grep
  zsh
  curl
  go
  mariadb
  sqlite
  postgres
  python
  php56
  php56-xdebug
  php56-imagick
  php56-pspell
  php56-crypto
  composer
  heroku-toolbelt
  vim
)

echo "Installing binaries..."
brew install ${binaries[@]}

brew cleanup

# Check for RVM,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing RVM..."
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable
fi

rvm autolibs homebrew

# chsh -s /bin/zsh

rm -f .bash_* .bashrc .profile
