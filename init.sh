# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install bundle command
brew tap homebrew/bundle

brew bundle

# Check for RVM,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing RVM..."
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable
fi

rvm autolibs homebrew

chsh -s /bin/zsh

rm -f .bash_* .bashrc .profile
