# Check for Homebrew,
# Install if it isn't, yet
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install bundle command
brew tap homebrew/bundle

# Instll Homebrew packages, bundled together in Brewfile
brew bundle

# Check for RVM,
# Install if it isn't, yet
if test ! $(which rvm); then
  echo "Installing RVM..."
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew
fi

chsh -s /bin/zsh

rm -f $HOME/.bash_* $HOME/.bashrc $HOME/.profile $HOME/.zcompdump; compinit
