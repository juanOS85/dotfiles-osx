# Check for Homebrew,
# Install if it isn't, yet
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install bundle command
brew tap homebrew/bundle -v

# Instll Homebrew packages, bundled together in Brewfile
brew bundle

# Check for RVM,
# Install if it isn't, yet
if test ! $(which rvm); then
  echo "Installing RVM..."
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew
fi

# Install NVM
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Set ZSH as default shell
chsh -s /bin/zsh

# Remove unused Bash files
rm -frv $HOME/.bash_* $HOME/.bashrc $HOME/.profile