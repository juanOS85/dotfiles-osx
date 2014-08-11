### Script to run just one time, after homebrew installation (http://brew.sh/)

# Homebrew taps for needed dependencies
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

brew tap --repair

brew update

# General dependencies
brew install pkg-config
brew install makedepend

brew install openssl
brew link --force openssl

brew install libmetalink
brew install libssh2
brew install libidn
brew install readline
brew install icu4c
brew install pcre
brew install xz
brew install gettext
brew install autoconf
brew install automake
brew install libtool
brew install scons
brew install gdbm
brew install swig
brew install cmake
brew install ossp-uuid
brew install tcl-tk --enable-threads
brew install ssh-copy-id
brew install c-ares

brew install bash
brew install bash-completion

brew install curl --with-ares --with-idn --with-libmetalink --with-openssl --with-ssh

brew install go

### Utilities

# Vim optional dependecy
brew install lua --with-completion

brew install wget --enable-iri

### Development

# DBMS
brew install mariadb
brew install sqlite --with-functions --with-icu4c

brew install python --with-brewed-tk

brew install postgres --enable-dtrace --with-python

#brew install git --with-blk-sha1 --with-brewed-openssl --with-brewed-curl --with-gettext --with-pcre --with-persistent-https
brew install git --with-blk-sha1 --with-gettext --with-pcre --with-persistent-https

# PHP dependencies
brew install libpng
brew install freetype
brew install jpeg
brew install unixodbc
brew install zlib
brew install gmp
brew install libxml2 --with-python
brew install libxslt
brew install tidy
brew install re2c
brew install flex

###### Failing in Yosemite DP5 ###########
brew install php55 --with-gmp --with-homebrew-curl --with-homebrew-openssl --with-pgsql --with-phpdbg --with-tidy

#brew install android

### third-party repos

# Quick access to most used directories
if [ ! -d ~/Dev/code/z ]; then
  git clone git@github.com:rupa/z.git ~/Dev/code/z
fi

# NVM: To install and handle several NodeJS versions
if [ ! -d ~/.nvm ]; then
  git clone git@github.com:creationix/nvm.git ~/.nvm
fi

# RVM: To install and handle several Ruby versions
if [ ! -d ~/.rvm ]; then
    curl -sSL https://get.rvm.io | bash -s stable
fi
# I load RVM from .bash_profile file; .profile and .zshrc files can be deleted
rm -f ~/.profile ~/.zshrc

# after install Ruby
#brew install vim --with-lua --with-python3
brew install vim --with-lua
