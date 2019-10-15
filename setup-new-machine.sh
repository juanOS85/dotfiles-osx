# Check for Homebrew,
# Install if it isn't, yet
if test ! $(which brew); then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install bundle command
brew tap homebrew/bundle -v

# Instll Homebrew packages, bundled together in Brewfile
brew bundle

# Install NVM
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash


# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Remove unused Bash files
rm -frv $HOME/.bash_* $HOME/.bashrc $HOME/.profile
